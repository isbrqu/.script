#!/usr/bin/env bash

declare path="$(realpath $0)"
declare src="${path%/*}/src"
declare bin="$HOME/.local/bin"
declare dest="$HOME/.script"

# ln  --symbolic  $src             $dest
ln  --symbolic  $dest/config/*   $bin
ln  --symbolic  $dest/convert/*  $bin
ln  --symbolic  $dest/dmenu/*    $bin
ln  --symbolic  $dest/general/*  $bin
ln  --symbolic  $dest/docker/*   $bin

