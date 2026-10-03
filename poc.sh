#!/bin/bash

# Build/test steps
./autogen.sh
./compile.sh
./test.sh
make

# Reproduce interactive input
expect <<'EOF'
spawn ./htop
sleep 1

# Open affinity screen
send "a"
sleep 1

# Press Space (note arrow keys also reproduce the error)
send " "
sleep 1

expect eof
EOF