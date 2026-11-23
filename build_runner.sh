#!/usr/bin/env bash
set -e
REPO="milopswfs/pysonicdetour"
TAG="bright-badger-bright-garden"
LIB="tribal-moat.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -O2 -std=c++17 -pthread main.cpp "$LIB" -o app && ./app
