#!/bin/bash
# ProgramBench-style build: must produce ./executable at the repo root.
# autotools + system ncurses; optional deps (hwloc, libsensors, libcap, libunwind)
# are auto-detected and skipped when absent, so this builds on macOS and Linux.
set -e
cd "$(dirname "$0")"
./autogen.sh
./configure
make -j3
cp htop executable
