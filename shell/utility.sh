#! /bin/bash

# ord: the ASCII decimal value of a given character
# $ ord "A" #=> 65
ord() {
    printf "%d\n" "\"$1"
}

# chr: the character represented by the given ASCII decimal value
# $ chr 65 #=> A
chr() {
    printf "\x$(printf "%x" "$1")\n"
}

# hex: the hexadecimal value of a decimal number
# $ hex 65 #=> 0x41
hex() {
  printf "0x%x\n" $1
}

ff() {
    if [ $# -gt 0 ]; then
        find $1 -type f
        return 0
    else
        echo "need more arguments"
        return 1
    fi
}

fd() {
    if [ $# -gt 0 ]; then
        find $1 -mindepth 1 -type d
        return 0
    else
        echo "need more arguments"
        return 1
    fi
}

fnvim() {
    nvim $(ff ${1:-src} | fzf)
}

dnvim() {
    nvim $(fd ${1:-src} | fzf)
}
