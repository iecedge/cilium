#!/bin/bash

CLANG_VERSION=10.0.0

function setup_env() {
case `uname -m` in
  'x86_64' )
    CLANG_DIR="clang+llvm-$CLANG_VERSION-amd64-unknown-freebsd11"
    ;;
  'aarch64' )
    CLANG_DIR="clang+llvm-$CLANG_VERSION-aarch64-linux-gnu"
    ;;
esac
}

function install_clang() {
  CLANG_FILE="$CLANG_DIR.tar.xz"
  CLANG_URL="https://github.com/llvm/llvm-project/releases/download/llvmorg-$CLANG_VERSION/$CLANG_FILE"

  wget -nv $CLANG_URL
  sudo rm -rf /usr/local/clang
  sudo mkdir -p /usr/local
  sudo tar -C /usr/local -xJf $CLANG_FILE
  sudo ln -s /usr/local/$CLANG_DIR /usr/local/clang
  rm $CLANG_FILE
}

setup_env
install_clang

NEWPATH="/usr/local/clang/bin"
export PATH="$NEWPATH:$PATH"

sed -i "s/github.com\/cilium\/cilium/github.com\/iecedge\/cilium/g" `grep "github.com/cilium/cilium" -rl $HOME/gopath/src/github.com/iecedge/ | grep -v bpf_foo.o`

# disable go modules to avoid downloading all dependencies when doing go get
GO111MODULE=off go get golang.org/x/tools/cmd/cover
GO111MODULE=off go get github.com/mattn/goveralls
