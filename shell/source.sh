#! /bin/bash

function nsource_shells_inner() {
  local SHELL_SOURCE="$HOME"/shell
  for file in "$SHELL_SOURCE"/*; do
    if [ $file -ef "$SHELL_SOURCE/source.sh" ]; then
      continue
    fi
    local fullpath=$(realpath $file)
    if [ -f $fullpath ]; then
      . $fullpath
    fi
  done
}

nsource_shells_inner
