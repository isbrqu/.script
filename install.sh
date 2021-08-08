#!/usr/bin/env bash

declare path_local_script="$(realpath $0)"
declare path_local_src="${path_local_script%/*}/src"
declare path_home_script="$HOME/.script"
declare path_dest="$HOME/.local/bin"

linker() {
    local folder="$1"
    for item in "$path_home_script/$folder/"*;do
        ln --symbolic "$item" "$path_dest" 2> /dev/null
    done
}

if [[ ! -e "$path_home_script" ]];then
    ln --symbolic --force "$path_local_src" "$path_home_script" 2> /dev/null
fi

linker "config"
linker "convert"
linker "dmenu"
linker "general"
linker "docker"

