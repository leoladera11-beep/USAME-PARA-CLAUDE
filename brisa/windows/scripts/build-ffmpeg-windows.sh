#!/usr/bin/env bash
set -euo pipefail
# Usage from unmodified FFmpeg n8.1 source: BRISA_LAME_PREFIX=/absolute/lame-prefix path/to/this/script
# Build LAME first with scripts/build-lame-windows.sh. LLVM MinGW must be on PATH.
: "${BRISA_LAME_PREFIX:?Set the directory containing include/lame and lib/libmp3lame.a}"
export PKG_CONFIG_PATH="$BRISA_LAME_PREFIX/lib/pkgconfig"
export PKG_CONFIG_LIBDIR="$PKG_CONFIG_PATH"
bash configure --target-os=mingw32 --arch=x86_64 --cross-prefix=x86_64-w64-mingw32- \
 --enable-cross-compile --disable-everything --disable-autodetect --disable-doc --disable-debug \
 --disable-network --disable-avdevice --disable-swscale --disable-iconv \
 --enable-ffmpeg --enable-ffprobe --enable-protocol=file --enable-demuxer=mov,matroska,aac \
 --enable-muxer=mp4,matroska,webm,mp3 --enable-decoder=vp9,av1,aac,opus,mp3 \
 --enable-parser=aac,h264,hevc,opus,vp9,av1,mpegaudio \
 --enable-bsf=aac_adtstoasc,extract_extradata,h264_mp4toannexb,hevc_mp4toannexb \
 --enable-libmp3lame --enable-encoder=libmp3lame --enable-filter=aresample,anull \
 --extra-cflags="-I$BRISA_LAME_PREFIX/include" --extra-ldflags="-L$BRISA_LAME_PREFIX/lib" \
 --disable-x86asm --enable-small
make -j4
