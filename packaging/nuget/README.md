# secp256k1_vc145

Optimized C library for EC operations on curve secp256k1, built from
[bitcoin-core/secp256k1](https://github.com/bitcoin-core/secp256k1) and
packaged as native static libraries for the Visual Studio
v145 platform toolset.

## What's included

- x86 and x64 libraries, Debug and Release, in three linkage flavors:
  - Static (LIB) - statically linked CRT.
  - Static (LTCG) - link time code generation, statically linked CRT.
  - Dynamic (DLL) - with import libraries, dynamically linked CRT.
- All public headers.
- MSBuild targets wiring include paths, library paths and dependencies.

All upstream-default modules are compiled in: ecdh, recovery, extrakeys,
schnorrsig, ellswift, musig and silentpayments.

## Usage

All integration is performed by the package properties import. Installing
the package with the Visual Studio package manager adds the import to the
project file automatically. Select the desired linkage on the "NuGet
Dependencies" project property page. The import then applies include paths,
library paths, dependencies and the SECP256K1_STATIC define for each
platform, configuration and toolset. With no linkage selected the dependency
is fully excluded.

## Requirements

Release libraries are compiled /arch:AVX2, so consuming binaries require an
AVX2-capable processor.

## License

MIT, see [COPYING](https://github.com/bitcoin-core/secp256k1/blob/master/COPYING).
(c) 2013 Pieter Wuille (attribution required).
