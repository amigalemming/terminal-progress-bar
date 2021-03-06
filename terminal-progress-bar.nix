{ mkDerivation, base, HUnit, stdenv, stm
, stm-chans, test-framework, test-framework-hunit
}:
mkDerivation {
  pname = "terminal-progress-bar";
  version = "0.1.0";
  src = ./.;
  libraryHaskellDepends = [
    base stm stm-chans
  ];
  testHaskellDepends = [
    base HUnit test-framework test-framework-hunit
  ];
  homepage = "https://github.com/roelvandijk/terminal-progress-bar";
  description = "A simple progress bar in the terminal";
  license = stdenv.lib.licenses.bsd3;
}
