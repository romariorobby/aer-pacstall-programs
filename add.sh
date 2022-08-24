#!/bin/sh

[ -z "$1" ] && { echo "type name of your program you want to add,please."; exit 1;}
printf "add: \033[1;32m$1/$1.pacscript\033[0m \nYou really sure want to add this?[Y/N]"
read -r ans
if [ "$ans" != "${answer#[Yy]}" ]; then
  [ -d "packages/$1" ] && {
    echo "packages/$1 already exists"
    ls -1 packages > packagelist
    exit 1
  }
  mkdir -p packages/$1
  touch packages/$1/$1.pacscript
  ls -1 packages > packagelist
  echo "Creating file '$1/$1.pacscript'"
fi

