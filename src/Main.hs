{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Data.Aeson
import qualified Data.ByteString.Lazy as BL
import           Data.List            (intercalate)
import           Data.Maybe           (fromMaybe)
import           Data.Text            (Text, pack)
import qualified Data.Text.IO         as T
import           GHC.Generics         (Generic)
import           Options.Applicative
import           System.FilePath      (takeBaseName, (</>))

-- Data types for parsing plan.json
data Plan = Plan
  { installPlan :: [Package]
  } deriving (Show, Generic)

data Package = Package
  { pkgName    :: String
  , pkgVersion :: String
  , pkgType    :: String
  , pkgId      :: String
  , depends    :: [String]
  } deriving (Show, Generic)

-- JSON instances
instance FromJSON Plan where
  parseJSON = withObject "Plan" $ \v -> Plan <$> v .: "install-plan"

instance FromJSON Package where
  parseJSON = withObject "Package" $ \v -> do
    typ <- v .: "type"
    pkgName <- v .: "pkg-name"
    pkgVersion <- v .:? "pkg-version" .!= ""
    pkgId <- v .:? "id" .!= (pkgName ++ "-" ++ pkgVersion)
    depends <- v .:? "depends" .!= []
    return $ Package pkgName pkgVersion typ pkgId depends

-- Generate Nix expression for a package
genNixPkg :: Package -> String
-- For pre-existing GHC packages, we reference them directly
-- For other packages, we'll need to fetch them from Hackage
-- This is a simplified version - you might want to add more fields
-- like sha256, revision, etc.
genNixPkg pkg
  | pkgType pkg == "pre-existing" = 
      let pkgName' = pkgName pkg
          pkgVersion' = pkgVersion pkg
          attrName = case pkgName' of
                     "rts" -> "rts"
                     name  -> name
      in unlines
         [ "  ${haskell.lib.compose.overrideCabal (haskellPackages.${attrName}) (old: {"
         , "      version = \"${pkgVersion'}\";"
         , "      sha256 = \"";  -- You'll need to fill this in
         , "      revision = null;"
         , "      editedCabalFile = null;"
         , "      libraryHaskellDepends = [
           ++ intercalate "\n           " (map (("haskellPackages." ++) . pkgIdToAttr) (depends pkg)) 
           ++ 
           "];"
         , "  })};"
         ]
  | otherwise = ""

-- Convert package ID to Nix attribute name
pkgIdToAttr :: String -> String
pkgIdToAttr = map fixChar . takeWhile (/= '-')
  where
    fixChar '-' = '_'
    fixChar c   = c

-- Main function
main :: IO ()
main = do
  planJson <- BL.readFile "dist-newstyle/cache/plan.json"
  case eitherDecode planJson of
    Left err -> putStrLn $ "Error parsing plan.json: " ++ err
    Right (Plan pkgs) -> do
      let nixPkgs = map genNixPkg (filter (\p -> pkgType p == "pre-existing") pkgs)
      writeFile "generated-packages.nix" $ unlines
        [ "{ haskellPackages, haskell }:"
        , "with haskell.lib.compose;"
        , "{"
        , intercalate "\n" (filter (not . null) nixPkgs)
        , "}"
        ]
      putStrLn "Generated generated-packages.nix"
