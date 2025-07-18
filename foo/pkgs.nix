{
  pkgs = hackage:
    {
      packages = {
        hnix.revision = hackage.hnix."0.17.0".revisions.default;
        conduit.revision = hackage.conduit."1.3.6.1".revisions.default;
        hnix-store-remote.revision = hackage.hnix-store-remote."0.6.0.0".revisions.default;
        base16-bytestring.revision = hackage.base16-bytestring."1.0.2.0".revisions.default;
        saltine.revision = hackage.saltine."0.2.2.0".revisions.default;
        gitrev.revision = hackage.gitrev."1.3.1".revisions.default;
        integer-gmp.revision = hackage.integer-gmp."1.1".revisions.default;
        pem.revision = hackage.pem."0.2.4".revisions.default;
        data-default-instances-dlist.revision = hackage.data-default-instances-dlist."0.0.1.2".revisions.default;
        filepath.revision = hackage.filepath."1.4.301.0".revisions.default;
        attoparsec.revision = hackage.attoparsec."0.14.4".revisions.default;
        text-iso8601.revision = hackage.text-iso8601."0.1.1".revisions.default;
        th-lift-instances.revision = hackage.th-lift-instances."0.1.20".revisions.default;
        generically.revision = hackage.generically."0.1.1".revisions.default;
        cborg.revision = hackage.cborg."0.2.10.0".revisions.default;
        yaml.revision = hackage.yaml."0.11.11.2".revisions.default;
        hnix-store-core.revision = hackage.hnix-store-core."0.6.1.0".revisions.default;
        deriving-compat.revision = hackage.deriving-compat."0.6.7".revisions.default;
        crypton-connection.revision = hackage.crypton-connection."0.4.4".revisions.default;
        base64-bytestring.revision = hackage.base64-bytestring."1.2.1.0".revisions.default;
        iproute.revision = hackage.iproute."1.7.15".revisions.default;
        unordered-containers.revision = hackage.unordered-containers."0.2.20".revisions.default;
        unix-time.revision = hackage.unix-time."0.4.16".revisions.default;
        case-insensitive.revision = hackage.case-insensitive."1.2.1.0".revisions.default;
        logict.revision = hackage.logict."0.8.2.0".revisions.default;
        transformers-base.revision = hackage.transformers-base."0.4.6".revisions.default;
        OneTuple.revision = hackage.OneTuple."0.4.2".revisions.default;
        data-fix.revision = hackage.data-fix."0.3.4".revisions.default;
        appar.revision = hackage.appar."0.1.8".revisions.default;
        haskell-lexer.revision = hackage.haskell-lexer."1.1.2".revisions.default;
        lens-family-th.revision = hackage.lens-family-th."0.5.3.1".revisions.default;
        hashing.revision = hackage.hashing."0.1.1.0".revisions.default;
        uuid-types.revision = hackage.uuid-types."1.0.6".revisions.default;
        lens-family-core.revision = hackage.lens-family-core."2.1.3".revisions.default;
        vector-stream.revision = hackage.vector-stream."0.1.0.1".revisions.default;
        comonad.revision = hackage.comonad."5.0.9".revisions.default;
        ghc-bignum.revision = hackage.ghc-bignum."1.3".revisions.default;
        stm.revision = hackage.stm."2.5.3.1".revisions.default;
        blaze-builder.revision = hackage.blaze-builder."0.4.2.3".revisions.default;
        integer-conversion.revision = hackage.integer-conversion."0.1.1".revisions.default;
        transformers.revision = hackage.transformers."0.6.1.0".revisions.default;
        microlens.revision = hackage.microlens."0.4.13.1".revisions.default;
        hourglass.revision = hackage.hourglass."0.2.12".revisions.default;
        lens-family.revision = hackage.lens-family."2.1.3".revisions.default;
        crypton-x509.revision = hackage.crypton-x509."1.7.7".revisions.default;
        asn1-encoding.revision = hackage.asn1-encoding."0.9.6".revisions.default;
        distributive.revision = hackage.distributive."0.6.2.1".revisions.default;
        deepseq.revision = hackage.deepseq."1.5.1.0".revisions.default;
        infer-license.revision = hackage.infer-license."0.2.0".revisions.default;
        optparse-applicative.revision = hackage.optparse-applicative."0.18.1.0".revisions.default;
        cryptonite.revision = hackage.cryptonite."0.30".revisions.default;
        streaming-commons.revision = hackage.streaming-commons."0.2.3.0".revisions.default;
        split.revision = hackage.split."0.2.5".revisions.default;
        old-time.revision = hackage.old-time."1.1.0.4".revisions.default;
        directory.revision = hackage.directory."1.3.8.5".revisions.default;
        serialise.revision = hackage.serialise."0.2.6.1".revisions.default;
        lifted-base.revision = hackage.lifted-base."0.2.3.12".revisions.default;
        cryptohash-sha256.revision = hackage.cryptohash-sha256."0.11.102.1".revisions.default;
        parsec.revision = hackage.parsec."3.1.17.0".revisions.default;
        Cabal.revision = import ./cabal-files/Cabal.nix;
        crypton-x509-validation.revision = hackage.crypton-x509-validation."1.6.14".revisions.default;
        strict.revision = hackage.strict."0.5.1".revisions.default;
        th-abstraction.revision = hackage.th-abstraction."0.7.1.0".revisions.default;
        cookie.revision = hackage.cookie."0.5.1".revisions.default;
        half.revision = hackage.half."0.3.2".revisions.default;
        profunctors.revision = hackage.profunctors."5.6.2".revisions.default;
        algebraic-graphs.revision = hackage.algebraic-graphs."0.7".revisions.default;
        parser-combinators.revision = hackage.parser-combinators."1.3.0".revisions.default;
        crypton-x509-store.revision = hackage.crypton-x509-store."1.6.10".revisions.default;
        mtl.revision = hackage.mtl."2.3.1".revisions.default;
        ansi-terminal-types.revision = hackage.ansi-terminal-types."1.1".revisions.default;
        process.revision = hackage.process."1.6.25.0".revisions.default;
        memory.revision = hackage.memory."0.18.0".revisions.default;
        base.revision = hackage.base."4.19.2.0".revisions.default;
        nix-derivation.revision = hackage.nix-derivation."1.1.3".revisions.default;
        microlens-aeson.revision = hackage.microlens-aeson."2.5.2".revisions.default;
        data-default-instances-containers.revision = hackage.data-default-instances-containers."0.1.0.3".revisions.default;
        base-orphans.revision = hackage.base-orphans."0.9.3".revisions.default;
        QuickCheck.revision = hackage.QuickCheck."2.14.3".revisions.default;
        extra.revision = hackage.extra."1.7.16".revisions.default;
        Cabal-syntax.revision = import ./cabal-files/Cabal-syntax.nix;
        monad-control.revision = hackage.monad-control."1.0.3.1".revisions.default;
        network-uri.revision = hackage.network-uri."2.6.4.2".revisions.default;
        indexed-traversable-instances.revision = hackage.indexed-traversable-instances."0.1.2".revisions.default;
        bitvec.revision = hackage.bitvec."1.1.5.0".revisions.default;
        these.revision = hackage.these."1.2.1".revisions.default;
        http-client-tls.revision = hackage.http-client-tls."0.3.6.4".revisions.default;
        random.revision = hackage.random."1.2.1.3".revisions.default;
        async.revision = hackage.async."2.2.5".revisions.default;
        tls.revision = hackage.tls."2.1.1".revisions.default;
        bifunctors.revision = hackage.bifunctors."5.6.2".revisions.default;
        text.revision = hackage.text."2.1.1".revisions.default;
        time.revision = hackage.time."1.12.2".revisions.default;
        array.revision = hackage.array."0.5.8.0".revisions.default;
        data-default-class.revision = hackage.data-default-class."0.1.2.2".revisions.default;
        monadlist.revision = hackage.monadlist."0.0.2".revisions.default;
        vector-algorithms.revision = hackage.vector-algorithms."0.9.1.0".revisions.default;
        semialign.revision = hackage.semialign."1.3.1".revisions.default;
        text-short.revision = hackage.text-short."0.1.6".revisions.default;
        basement.revision = hackage.basement."0.0.16".revisions.default;
        semigroupoids.revision = hackage.semigroupoids."6.0.1".revisions.default;
        byteorder.revision = hackage.byteorder."1.0.4".revisions.default;
        contravariant.revision = hackage.contravariant."1.5.5".revisions.default;
        crypton-x509-system.revision = hackage.crypton-x509-system."1.6.7".revisions.default;
        crypton.revision = hackage.crypton."1.0.4".revisions.default;
        StateVar.revision = hackage.StateVar."1.2.2".revisions.default;
        network.revision = hackage.network."3.2.7.0".revisions.default;
        megaparsec.revision = hackage.megaparsec."9.7.0".revisions.default;
        unliftio-core.revision = hackage.unliftio-core."0.2.1.0".revisions.default;
        resourcet.revision = hackage.resourcet."1.3.0".revisions.default;
        mono-traversable.revision = hackage.mono-traversable."1.0.21.0".revisions.default;
        indexed-traversable.revision = hackage.indexed-traversable."0.1.4".revisions.default;
        hashable.revision = hackage.hashable."1.4.7.0".revisions.default;
        character-ps.revision = hackage.character-ps."0.1".revisions.default;
        th-compat.revision = hackage.th-compat."0.1.6".revisions.default;
        http-client.revision = hackage.http-client."0.7.19".revisions.default;
        syb.revision = hackage.syb."0.7.2.4".revisions.default;
        mime-types.revision = hackage.mime-types."0.1.2.0".revisions.default;
        old-locale.revision = hackage.old-locale."1.0.0.7".revisions.default;
        asn1-parse.revision = hackage.asn1-parse."0.9.5".revisions.default;
        alex.revision = import ./cabal-files/alex.nix;
        binary.revision = hackage.binary."0.8.9.1".revisions.default;
        free.revision = hackage.free."5.2".revisions.default;
        template-haskell.revision = hackage.template-haskell."2.21.0.0".revisions.default;
        unix.revision = hackage.unix."2.8.6.0".revisions.default;
        primitive.revision = hackage.primitive."0.9.1.0".revisions.default;
        aeson.revision = hackage.aeson."2.2.3.0".revisions.default;
        ansi-terminal.revision = hackage.ansi-terminal."1.1.2".revisions.default;
        colour.revision = hackage.colour."2.3.6".revisions.default;
        exceptions.revision = hackage.exceptions."0.10.7".revisions.default;
        asn1-types.revision = hackage.asn1-types."0.3.4".revisions.default;
        bytestring.revision = hackage.bytestring."0.12.1.0".revisions.default;
        relude.revision = hackage.relude."1.2.2.0".revisions.default;
        regex-base.revision = hackage.regex-base."0.94.0.3".revisions.default;
        witherable.revision = hackage.witherable."0.5".revisions.default;
        base-compat.revision = hackage.base-compat."0.13.1".revisions.default;
        socks.revision = hackage.socks."0.6.1".revisions.default;
        xml.revision = hackage.xml."1.3.14".revisions.default;
        integer-logarithms.revision = hackage.integer-logarithms."1.0.4".revisions.default;
        time-compat.revision = hackage.time-compat."1.9.7".revisions.default;
        tagged.revision = hackage.tagged."0.8.8".revisions.default;
        ghc-boot-th.revision = hackage.ghc-boot-th."9.8.4".revisions.default;
        Glob.revision = hackage.Glob."0.10.2".revisions.default;
        os-string.revision = hackage.os-string."2.0.7".revisions.default;
        data-default.revision = hackage.data-default."0.7.1.3".revisions.default;
        transformers-compat.revision = hackage.transformers-compat."0.7.2".revisions.default;
        prettyprinter.revision = hackage.prettyprinter."1.7.1".revisions.default;
        neat-interpolation.revision = hackage.neat-interpolation."0.5.1.4".revisions.default;
        assoc.revision = hackage.assoc."1.1.1".revisions.default;
        ghc-prim.revision = hackage.ghc-prim."0.11.0".revisions.default;
        pretty-show.revision = hackage.pretty-show."1.10".revisions.default;
        clock.revision = hackage.clock."0.8.4".revisions.default;
        pretty.revision = hackage.pretty."1.1.3.6".revisions.default;
        zlib.revision = hackage.zlib."0.7.1.0".revisions.default;
        regex-tdfa.revision = hackage.regex-tdfa."1.3.2.3".revisions.default;
        splitmix.revision = hackage.splitmix."0.1.1".revisions.default;
        cereal.revision = hackage.cereal."0.5.8.3".revisions.default;
        containers.revision = hackage.containers."0.6.8".revisions.default;
        ref-tf.revision = hackage.ref-tf."0.5.0.1".revisions.default;
        prettyprinter-ansi-terminal.revision = hackage.prettyprinter-ansi-terminal."1.1.3".revisions.default;
        scientific.revision = hackage.scientific."0.3.8.0".revisions.default;
        vector.revision = hackage.vector."0.13.2.0".revisions.default;
        some.revision = hackage.some."1.0.6".revisions.default;
        aeson-pretty.revision = hackage.aeson-pretty."0.8.10".revisions.default;
        text-metrics.revision = hackage.text-metrics."0.3.3".revisions.default;
        unix-compat.revision = hackage.unix-compat."0.7.4".revisions.default;
        http-types.revision = hackage.http-types."0.12.4".revisions.default;
        rts.revision = hackage.rts."1.0.2".revisions.default;
        hpack.revision = import ./cabal-files/hpack.nix;
        dlist.revision = hackage.dlist."1.0".revisions.default;
        libyaml-clib.revision = hackage.libyaml-clib."0.2.5".revisions.default;
        data-default-instances-old-locale.revision = hackage.data-default-instances-old-locale."0.0.1.2".revisions.default;
        libyaml.revision = hackage.libyaml."0.1.4".revisions.default;
        th-lift.revision = hackage.th-lift."0.8.6".revisions.default;
      };
      compiler = {
        version = "9.8.4";
        nix-name = "ghc984";
        packages = {
          "th-lift" = "0.8.6";
          "transformers-compat" = "0.7.2";
          "splitmix" = "0.1.1";
          "microlens" = "0.4.13.1";
          "monad-control" = "1.0.3.1";
          "serialise" = "0.2.6.1";
          "iproute" = "1.7.15";
          "ghc-boot-th" = "9.8.4";
          "hnix-store-core" = "0.6.1.0";
          "binary" = "0.8.9.1";
          "strict" = "0.5.1";
          "regex-tdfa" = "1.3.2.3";
          "optparse-applicative" = "0.18.1.0";
          "data-default" = "0.7.1.3";
          "base-orphans" = "0.9.3";
          "pretty" = "1.1.3.6";
          "infer-license" = "0.2.0";
          "byteorder" = "1.0.4";
          "comonad" = "5.0.9";
          "array" = "0.5.8.0";
          "saltine" = "0.2.2.0";
          "pretty-show" = "1.10";
          "time" = "1.12.2";
          "async" = "2.2.5";
          "appar" = "0.1.8";
          "cryptonite" = "0.30";
          "memory" = "0.18.0";
          "logict" = "0.8.2.0";
          "uuid-types" = "1.0.6";
          "monadlist" = "0.0.2";
          "aeson" = "2.2.3.0";
          "ghc-prim" = "0.11.0";
          "microlens-aeson" = "2.5.2";
          "hourglass" = "0.2.12";
          "cryptohash-sha256" = "0.11.102.1";
          "algebraic-graphs" = "0.7";
          "ansi-terminal-types" = "1.1";
          "basement" = "0.0.16";
          "bytestring" = "0.12.1.0";
          "process" = "1.6.25.0";
          "data-fix" = "0.3.4";
          "contravariant" = "1.5.5";
          "conduit" = "1.3.6.1";
          "base16-bytestring" = "1.0.2.0";
          "streaming-commons" = "0.2.3.0";
          "unix-compat" = "0.7.4";
          "mtl" = "2.3.1";
          "data-default-class" = "0.1.2.2";
          "yaml" = "0.11.11.2";
          "crypton-x509-store" = "1.6.10";
          "attoparsec" = "0.14.4";
          "data-default-instances-dlist" = "0.0.1.2";
          "unix-time" = "0.4.16";
          "StateVar" = "1.2.2";
          "text" = "2.1.1";
          "cereal" = "0.5.8.3";
          "transformers-base" = "0.4.6";
          "tagged" = "0.8.8";
          "template-haskell" = "2.21.0.0";
          "text-metrics" = "0.3.3";
          "prettyprinter-ansi-terminal" = "1.1.3";
          "deriving-compat" = "0.6.7";
          "extra" = "1.7.16";
          "http-client-tls" = "0.3.6.4";
          "blaze-builder" = "0.4.2.3";
          "colour" = "2.3.6";
          "network-uri" = "2.6.4.2";
          "mono-traversable" = "1.0.21.0";
          "cookie" = "0.5.1";
          "parsec" = "3.1.17.0";
          "ghc-bignum" = "1.3";
          "text-short" = "0.1.6";
          "lens-family-th" = "0.5.3.1";
          "libyaml-clib" = "0.2.5";
          "th-lift-instances" = "0.1.20";
          "vector-algorithms" = "0.9.1.0";
          "stm" = "2.5.3.1";
          "haskell-lexer" = "1.1.2";
          "some" = "1.0.6";
          "time-compat" = "1.9.7";
          "filepath" = "1.4.301.0";
          "Glob" = "0.10.2";
          "th-compat" = "0.1.6";
          "pem" = "0.2.4";
          "vector-stream" = "0.1.0.1";
          "os-string" = "2.0.7";
          "rts" = "1.0.2";
          "data-default-instances-containers" = "0.1.0.3";
          "crypton-x509-validation" = "1.6.14";
          "unix" = "2.8.6.0";
          "profunctors" = "5.6.2";
          "asn1-types" = "0.3.4";
          "primitive" = "0.9.1.0";
          "cborg" = "0.2.10.0";
          "mime-types" = "0.1.2.0";
          "semialign" = "1.3.1";
          "nix-derivation" = "1.1.3";
          "crypton" = "1.0.4";
          "lens-family" = "2.1.3";
          "half" = "0.3.2";
          "bitvec" = "1.1.5.0";
          "exceptions" = "0.10.7";
          "megaparsec" = "9.7.0";
          "integer-gmp" = "1.1";
          "hashable" = "1.4.7.0";
          "syb" = "0.7.2.4";
          "http-client" = "0.7.19";
          "distributive" = "0.6.2.1";
          "socks" = "0.6.1";
          "these" = "1.2.1";
          "split" = "0.2.5";
          "deepseq" = "1.5.1.0";
          "libyaml" = "0.1.4";
          "QuickCheck" = "2.14.3";
          "hnix" = "0.17.0";
          "indexed-traversable" = "0.1.4";
          "crypton-x509" = "1.7.7";
          "witherable" = "0.5";
          "semigroupoids" = "6.0.1";
          "resourcet" = "1.3.0";
          "clock" = "0.8.4";
          "neat-interpolation" = "0.5.1.4";
          "transformers" = "0.6.1.0";
          "scientific" = "0.3.8.0";
          "regex-base" = "0.94.0.3";
          "indexed-traversable-instances" = "0.1.2";
          "ref-tf" = "0.5.0.1";
          "relude" = "1.2.2.0";
          "dlist" = "1.0";
          "containers" = "0.6.8";
          "assoc" = "1.1.1";
          "old-locale" = "1.0.0.7";
          "base64-bytestring" = "1.2.1.0";
          "old-time" = "1.1.0.4";
          "character-ps" = "0.1";
          "OneTuple" = "0.4.2";
          "base-compat" = "0.13.1";
          "gitrev" = "1.3.1";
          "unordered-containers" = "0.2.20";
          "unliftio-core" = "0.2.1.0";
          "text-iso8601" = "0.1.1";
          "th-abstraction" = "0.7.1.0";
          "asn1-parse" = "0.9.5";
          "tls" = "2.1.1";
          "aeson-pretty" = "0.8.10";
          "data-default-instances-old-locale" = "0.0.1.2";
          "ansi-terminal" = "1.1.2";
          "integer-logarithms" = "1.0.4";
          "zlib" = "0.7.1.0";
          "asn1-encoding" = "0.9.6";
          "crypton-connection" = "0.4.4";
          "crypton-x509-system" = "1.6.7";
          "free" = "5.2";
          "network" = "3.2.7.0";
          "lens-family-core" = "2.1.3";
          "vector" = "0.13.2.0";
          "random" = "1.2.1.3";
          "base" = "4.19.2.0";
          "generically" = "0.1.1";
          "bifunctors" = "5.6.2";
          "xml" = "1.3.14";
          "integer-conversion" = "0.1.1";
          "hnix-store-remote" = "0.6.0.0";
          "parser-combinators" = "1.3.0";
          "hashing" = "0.1.1.0";
          "prettyprinter" = "1.7.1";
          "lifted-base" = "0.2.3.12";
          "http-types" = "0.12.4";
          "directory" = "1.3.8.5";
          "case-insensitive" = "1.2.1.0";
        };
      };
    };
  extras = hackage:
    {
      packages = {
        example = ./.plan.nix/example.nix;
        example2 = ./.plan.nix/example2.nix;
        nix-tools = ./.plan.nix/nix-tools.nix;
      };
    };
  modules = [
    {
      preExistingPkgs = [
        "hnix"
        "conduit"
        "hnix-store-remote"
        "base16-bytestring"
        "saltine"
        "gitrev"
        "integer-gmp"
        "pem"
        "data-default-instances-dlist"
        "filepath"
        "attoparsec"
        "text-iso8601"
        "th-lift-instances"
        "generically"
        "cborg"
        "yaml"
        "hnix-store-core"
        "deriving-compat"
        "crypton-connection"
        "base64-bytestring"
        "iproute"
        "unordered-containers"
        "unix-time"
        "case-insensitive"
        "logict"
        "transformers-base"
        "OneTuple"
        "data-fix"
        "appar"
        "haskell-lexer"
        "lens-family-th"
        "hashing"
        "uuid-types"
        "lens-family-core"
        "vector-stream"
        "comonad"
        "ghc-bignum"
        "stm"
        "blaze-builder"
        "integer-conversion"
        "transformers"
        "microlens"
        "hourglass"
        "lens-family"
        "crypton-x509"
        "asn1-encoding"
        "distributive"
        "deepseq"
        "infer-license"
        "optparse-applicative"
        "cryptonite"
        "streaming-commons"
        "split"
        "old-time"
        "directory"
        "serialise"
        "lifted-base"
        "cryptohash-sha256"
        "parsec"
        "crypton-x509-validation"
        "strict"
        "th-abstraction"
        "cookie"
        "half"
        "profunctors"
        "algebraic-graphs"
        "parser-combinators"
        "crypton-x509-store"
        "mtl"
        "ansi-terminal-types"
        "process"
        "memory"
        "base"
        "nix-derivation"
        "microlens-aeson"
        "data-default-instances-containers"
        "base-orphans"
        "QuickCheck"
        "extra"
        "monad-control"
        "network-uri"
        "indexed-traversable-instances"
        "bitvec"
        "these"
        "http-client-tls"
        "random"
        "async"
        "tls"
        "bifunctors"
        "text"
        "time"
        "array"
        "data-default-class"
        "monadlist"
        "vector-algorithms"
        "semialign"
        "text-short"
        "basement"
        "semigroupoids"
        "byteorder"
        "contravariant"
        "crypton-x509-system"
        "crypton"
        "StateVar"
        "network"
        "megaparsec"
        "unliftio-core"
        "resourcet"
        "mono-traversable"
        "indexed-traversable"
        "hashable"
        "character-ps"
        "th-compat"
        "http-client"
        "syb"
        "mime-types"
        "old-locale"
        "asn1-parse"
        "binary"
        "free"
        "template-haskell"
        "unix"
        "primitive"
        "aeson"
        "ansi-terminal"
        "colour"
        "exceptions"
        "asn1-types"
        "bytestring"
        "relude"
        "regex-base"
        "witherable"
        "base-compat"
        "socks"
        "xml"
        "integer-logarithms"
        "time-compat"
        "tagged"
        "ghc-boot-th"
        "Glob"
        "os-string"
        "data-default"
        "transformers-compat"
        "prettyprinter"
        "neat-interpolation"
        "assoc"
        "ghc-prim"
        "pretty-show"
        "clock"
        "pretty"
        "zlib"
        "regex-tdfa"
        "splitmix"
        "cereal"
        "containers"
        "ref-tf"
        "prettyprinter-ansi-terminal"
        "scientific"
        "vector"
        "some"
        "aeson-pretty"
        "text-metrics"
        "unix-compat"
        "http-types"
        "rts"
        "dlist"
        "libyaml-clib"
        "data-default-instances-old-locale"
        "libyaml"
        "th-lift"
      ];
    }
    ({ lib, ... }:
      {
        packages = {
          "example" = { flags = {}; };
          "example2" = { flags = {}; };
          "nix-tools" = { flags = {}; };
        };
      })
    ({ lib, ... }:
      {
        packages = {
          "data-default-instances-containers".components.library.planned = lib.mkOverride 900 true;
          "lens-family-core".components.library.planned = lib.mkOverride 900 true;
          "alex".components.exes."alex".planned = lib.mkOverride 900 true;
          "data-fix".components.library.planned = lib.mkOverride 900 true;
          "Cabal-syntax".components.library.planned = lib.mkOverride 900 true;
          "integer-conversion".components.library.planned = lib.mkOverride 900 true;
          "pretty-show".components.library.planned = lib.mkOverride 900 true;
          "asn1-types".components.library.planned = lib.mkOverride 900 true;
          "base64-bytestring".components.library.planned = lib.mkOverride 900 true;
          "resourcet".components.library.planned = lib.mkOverride 900 true;
          "http-types".components.library.planned = lib.mkOverride 900 true;
          "iproute".components.library.planned = lib.mkOverride 900 true;
          "nix-derivation".components.library.planned = lib.mkOverride 900 true;
          "transformers-base".components.library.planned = lib.mkOverride 900 true;
          "mono-traversable".components.library.planned = lib.mkOverride 900 true;
          "conduit".components.library.planned = lib.mkOverride 900 true;
          "hashable".components.library.planned = lib.mkOverride 900 true;
          "template-haskell".components.library.planned = lib.mkOverride 900 true;
          "text-short".components.library.planned = lib.mkOverride 900 true;
          "network-uri".components.library.planned = lib.mkOverride 900 true;
          "neat-interpolation".components.library.planned = lib.mkOverride 900 true;
          "parser-combinators".components.library.planned = lib.mkOverride 900 true;
          "unordered-containers".components.library.planned = lib.mkOverride 900 true;
          "these".components.library.planned = lib.mkOverride 900 true;
          "QuickCheck".components.library.planned = lib.mkOverride 900 true;
          "distributive".components.library.planned = lib.mkOverride 900 true;
          "transformers".components.library.planned = lib.mkOverride 900 true;
          "case-insensitive".components.library.planned = lib.mkOverride 900 true;
          "lens-family".components.library.planned = lib.mkOverride 900 true;
          "unliftio-core".components.library.planned = lib.mkOverride 900 true;
          "profunctors".components.library.planned = lib.mkOverride 900 true;
          "cryptonite".components.library.planned = lib.mkOverride 900 true;
          "Glob".components.library.planned = lib.mkOverride 900 true;
          "scientific".components.library.planned = lib.mkOverride 900 true;
          "blaze-builder".components.library.planned = lib.mkOverride 900 true;
          "text-metrics".components.library.planned = lib.mkOverride 900 true;
          "array".components.library.planned = lib.mkOverride 900 true;
          "unix".components.library.planned = lib.mkOverride 900 true;
          "base-orphans".components.library.planned = lib.mkOverride 900 true;
          "exceptions".components.library.planned = lib.mkOverride 900 true;
          "cryptohash-sha256".components.library.planned = lib.mkOverride 900 true;
          "asn1-encoding".components.library.planned = lib.mkOverride 900 true;
          "pem".components.library.planned = lib.mkOverride 900 true;
          "data-default-class".components.library.planned = lib.mkOverride 900 true;
          "directory".components.library.planned = lib.mkOverride 900 true;
          "syb".components.library.planned = lib.mkOverride 900 true;
          "saltine".components.library.planned = lib.mkOverride 900 true;
          "semigroupoids".components.library.planned = lib.mkOverride 900 true;
          "indexed-traversable-instances".components.library.planned = lib.mkOverride 900 true;
          "basement".components.library.planned = lib.mkOverride 900 true;
          "extra".components.library.planned = lib.mkOverride 900 true;
          "integer-gmp".components.library.planned = lib.mkOverride 900 true;
          "lifted-base".components.library.planned = lib.mkOverride 900 true;
          "some".components.library.planned = lib.mkOverride 900 true;
          "containers".components.library.planned = lib.mkOverride 900 true;
          "example".components.exes."example".planned = lib.mkOverride 900 true;
          "deriving-compat".components.library.planned = lib.mkOverride 900 true;
          "parsec".components.library.planned = lib.mkOverride 900 true;
          "hpack".components.library.planned = lib.mkOverride 900 true;
          "old-time".components.library.planned = lib.mkOverride 900 true;
          "monad-control".components.library.planned = lib.mkOverride 900 true;
          "semialign".components.library.planned = lib.mkOverride 900 true;
          "random".components.library.planned = lib.mkOverride 900 true;
          "hnix".components.library.planned = lib.mkOverride 900 true;
          "dlist".components.library.planned = lib.mkOverride 900 true;
          "crypton-x509-validation".components.library.planned = lib.mkOverride 900 true;
          "vector-algorithms".components.library.planned = lib.mkOverride 900 true;
          "crypton".components.library.planned = lib.mkOverride 900 true;
          "algebraic-graphs".components.library.planned = lib.mkOverride 900 true;
          "socks".components.library.planned = lib.mkOverride 900 true;
          "hnix-store-remote".components.library.planned = lib.mkOverride 900 true;
          "aeson".components.library.planned = lib.mkOverride 900 true;
          "http-client-tls".components.library.planned = lib.mkOverride 900 true;
          "Cabal".components.library.planned = lib.mkOverride 900 true;
          "prettyprinter".components.library.planned = lib.mkOverride 900 true;
          "http-client".components.library.planned = lib.mkOverride 900 true;
          "megaparsec".components.library.planned = lib.mkOverride 900 true;
          "transformers-compat".components.library.planned = lib.mkOverride 900 true;
          "cookie".components.library.planned = lib.mkOverride 900 true;
          "time-compat".components.library.planned = lib.mkOverride 900 true;
          "th-lift-instances".components.library.planned = lib.mkOverride 900 true;
          "data-default-instances-old-locale".components.library.planned = lib.mkOverride 900 true;
          "gitrev".components.library.planned = lib.mkOverride 900 true;
          "StateVar".components.library.planned = lib.mkOverride 900 true;
          "stm".components.library.planned = lib.mkOverride 900 true;
          "microlens-aeson".components.library.planned = lib.mkOverride 900 true;
          "nix-tools".components.exes."plan-to-nix".planned = lib.mkOverride 900 true;
          "strict".components.library.planned = lib.mkOverride 900 true;
          "infer-license".components.library.planned = lib.mkOverride 900 true;
          "cereal".components.library.planned = lib.mkOverride 900 true;
          "rts".components.library.planned = lib.mkOverride 900 true;
          "hnix-store-core".components.library.planned = lib.mkOverride 900 true;
          "crypton-x509-system".components.library.planned = lib.mkOverride 900 true;
          "network".components.library.planned = lib.mkOverride 900 true;
          "comonad".components.library.planned = lib.mkOverride 900 true;
          "bytestring".components.library.planned = lib.mkOverride 900 true;
          "ref-tf".components.library.planned = lib.mkOverride 900 true;
          "bitvec".components.library.planned = lib.mkOverride 900 true;
          "streaming-commons".components.library.planned = lib.mkOverride 900 true;
          "unix-compat".components.library.planned = lib.mkOverride 900 true;
          "attoparsec".components.library.planned = lib.mkOverride 900 true;
          "half".components.library.planned = lib.mkOverride 900 true;
          "memory".components.library.planned = lib.mkOverride 900 true;
          "colour".components.library.planned = lib.mkOverride 900 true;
          "integer-logarithms".components.library.planned = lib.mkOverride 900 true;
          "asn1-parse".components.library.planned = lib.mkOverride 900 true;
          "base-compat".components.library.planned = lib.mkOverride 900 true;
          "free".components.library.planned = lib.mkOverride 900 true;
          "deepseq".components.library.planned = lib.mkOverride 900 true;
          "hashing".components.library.planned = lib.mkOverride 900 true;
          "optparse-applicative".components.library.planned = lib.mkOverride 900 true;
          "hpack".components.exes."hpack".planned = lib.mkOverride 900 true;
          "tagged".components.library.planned = lib.mkOverride 900 true;
          "zlib".components.library.planned = lib.mkOverride 900 true;
          "filepath".components.library.planned = lib.mkOverride 900 true;
          "assoc".components.library.planned = lib.mkOverride 900 true;
          "OneTuple".components.library.planned = lib.mkOverride 900 true;
          "regex-base".components.library.planned = lib.mkOverride 900 true;
          "witherable".components.library.planned = lib.mkOverride 900 true;
          "yaml".components.library.planned = lib.mkOverride 900 true;
          "time".components.library.planned = lib.mkOverride 900 true;
          "primitive".components.library.planned = lib.mkOverride 900 true;
          "crypton-x509-store".components.library.planned = lib.mkOverride 900 true;
          "ghc-bignum".components.library.planned = lib.mkOverride 900 true;
          "pretty".components.library.planned = lib.mkOverride 900 true;
          "th-compat".components.library.planned = lib.mkOverride 900 true;
          "haskell-lexer".components.library.planned = lib.mkOverride 900 true;
          "old-locale".components.library.planned = lib.mkOverride 900 true;
          "character-ps".components.library.planned = lib.mkOverride 900 true;
          "os-string".components.library.planned = lib.mkOverride 900 true;
          "split".components.library.planned = lib.mkOverride 900 true;
          "prettyprinter-ansi-terminal".components.library.planned = lib.mkOverride 900 true;
          "th-abstraction".components.library.planned = lib.mkOverride 900 true;
          "regex-tdfa".components.library.planned = lib.mkOverride 900 true;
          "hourglass".components.library.planned = lib.mkOverride 900 true;
          "crypton-x509".components.library.planned = lib.mkOverride 900 true;
          "cborg".components.library.planned = lib.mkOverride 900 true;
          "appar".components.library.planned = lib.mkOverride 900 true;
          "th-lift".components.library.planned = lib.mkOverride 900 true;
          "mtl".components.library.planned = lib.mkOverride 900 true;
          "logict".components.library.planned = lib.mkOverride 900 true;
          "bifunctors".components.library.planned = lib.mkOverride 900 true;
          "uuid-types".components.library.planned = lib.mkOverride 900 true;
          "mime-types".components.library.planned = lib.mkOverride 900 true;
          "text-iso8601".components.library.planned = lib.mkOverride 900 true;
          "binary".components.library.planned = lib.mkOverride 900 true;
          "ansi-terminal-types".components.library.planned = lib.mkOverride 900 true;
          "ghc-boot-th".components.library.planned = lib.mkOverride 900 true;
          "data-default".components.library.planned = lib.mkOverride 900 true;
          "nix-tools".components.sublibs."cabal2nix".planned = lib.mkOverride 900 true;
          "ansi-terminal".components.library.planned = lib.mkOverride 900 true;
          "xml".components.library.planned = lib.mkOverride 900 true;
          "serialise".components.library.planned = lib.mkOverride 900 true;
          "crypton-connection".components.library.planned = lib.mkOverride 900 true;
          "relude".components.library.planned = lib.mkOverride 900 true;
          "data-default-instances-dlist".components.library.planned = lib.mkOverride 900 true;
          "libyaml-clib".components.library.planned = lib.mkOverride 900 true;
          "microlens".components.library.planned = lib.mkOverride 900 true;
          "vector-stream".components.library.planned = lib.mkOverride 900 true;
          "unix-time".components.library.planned = lib.mkOverride 900 true;
          "base".components.library.planned = lib.mkOverride 900 true;
          "process".components.library.planned = lib.mkOverride 900 true;
          "aeson-pretty".components.library.planned = lib.mkOverride 900 true;
          "example2".components.exes."example2".planned = lib.mkOverride 900 true;
          "vector".components.library.planned = lib.mkOverride 900 true;
          "contravariant".components.library.planned = lib.mkOverride 900 true;
          "base16-bytestring".components.library.planned = lib.mkOverride 900 true;
          "monadlist".components.library.planned = lib.mkOverride 900 true;
          "tls".components.library.planned = lib.mkOverride 900 true;
          "clock".components.library.planned = lib.mkOverride 900 true;
          "byteorder".components.library.planned = lib.mkOverride 900 true;
          "nix-tools".components.library.planned = lib.mkOverride 900 true;
          "text".components.library.planned = lib.mkOverride 900 true;
          "indexed-traversable".components.library.planned = lib.mkOverride 900 true;
          "generically".components.library.planned = lib.mkOverride 900 true;
          "lens-family-th".components.library.planned = lib.mkOverride 900 true;
          "splitmix".components.library.planned = lib.mkOverride 900 true;
          "libyaml".components.library.planned = lib.mkOverride 900 true;
          "ghc-prim".components.library.planned = lib.mkOverride 900 true;
          "async".components.library.planned = lib.mkOverride 900 true;
        };
      })
  ];
}