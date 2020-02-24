#!/bin/bash

function setup_env() {
case `uname -m` in
  'x86_64' )
    CLANG_DIR="clang+llvm-3.8.1-x86_64-linux-gnu-ubuntu-14.04"
    ;;
  'aarch64' )
    CLANG_DIR="clang+llvm-3.8.1-aarch64-linux-gnu"
    ;;
esac

}

function install_clang() {
  CLANG_FILE="${CLANG_DIR}.tar.xz"
  CLANG_URL="http://releases.llvm.org/3.8.1/$CLANG_FILE"

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

pwd
sed -i "s/github.com\/cilium\/cilium/github.com\/iecedge\/cilium/g" `grep "github.com/cilium/cilium" -rl $HOME/gopath/src/github.com/iecedge/ | grep -v bpf_foo.o`

echo "lvlin "$GOROOT " test: "$GO111MODULE" path: "$GOPATH

# disable go modules to avoid downloading all dependencies when doing go get
GO111MODULE=off go get golang.org/x/tools/cmd/cover
GO111MODULE=off go get github.com/mattn/goveralls
