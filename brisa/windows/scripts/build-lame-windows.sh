#!/usr/bin/env bash
set -euo pipefail
# Run inside unmodified LAME 3.100 source, LLVM MinGW on PATH.
: "${BRISA_LAME_PREFIX:?Set an absolute installation prefix}"
bash configure --host=x86_64-w64-mingw32 --prefix="$BRISA_LAME_PREFIX" --disable-shared --enable-static --disable-frontend --disable-analyzer-hooks --disable-decoder
make -j4
make install
