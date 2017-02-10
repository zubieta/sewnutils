#!/usr/bin/env bash

function _color_grid {
    printf "          "
    for b in 0 1 2 3 4 5 6 7; do printf "  4${b}m "; done
    echo
    for f in "" 30 31 32 33 34 35 36 37; do
        for s in "" "1;"; do
            printf "%4sm" "${s}${f}"
            printf " \033[%sm%s\033[0m" "$s$f" "gYw "
            for b in 0 1 2 3 4 5 6 7; do
                printf " \033[4%s;%sm%s\033[0m" "$b" "$s$f" " gYw "
            done
            echo
        done
    done
}

function _colors_list {
    echo -e "\033[0mNC (No color)"
    echo -e "\033[1;37mWHITE\t\033[0;30mBLACK"
    echo -e "\033[0;34mBLUE\t\033[1;34mLIGHT_BLUE"
    echo -e "\033[0;32mGREEN\t\033[1;32mLIGHT_GREEN"
    echo -e "\033[0;36mCYAN\t\033[1;36mLIGHT_CYAN"
    echo -e "\033[0;31mRED\t\033[1;31mLIGHT_RED"
    echo -e "\033[0;35mPURPLE\t\033[1;35mLIGHT_PURPLE"
    echo -e "\033[0;33mYELLOW\t\033[1;33mLIGHT_YELLOW"
    echo -e "\033[1;30mGRAY\t\033[0;37mLIGHT_GRAY"
}

function _colors_space {
    echo -e "\033[0;30m  ▀▄   ▄▀     \033[0;31m ▄▄▄████▄▄▄    \033[0;32m  ▄██▄     \033[0;33m  ▀▄   ▄▀     \033[0;34m ▄▄▄████▄▄▄    \033[0;35m  ▄██▄  \033[0m"
    echo -e "\033[0;30m ▄█▀███▀█▄    \033[0;31m███▀▀██▀▀███   \033[0;32m▄█▀██▀█▄   \033[0;33m ▄█▀███▀█▄    \033[0;34m███▀▀██▀▀███   \033[0;35m▄█▀██▀█▄\033[0m"
    echo -e "\033[0;30m█▀███████▀█   \033[0;31m▀▀███▀▀███▀▀   \033[0;32m▀█▀██▀█▀   \033[0;33m█▀███████▀█   \033[0;34m▀▀███▀▀███▀▀   \033[0;35m▀█▀██▀█▀\033[0m"
    echo -e "\033[0;30m▀ ▀▄▄ ▄▄▀ ▀   \033[0;31m ▀█▄ ▀▀ ▄█▀    \033[0;32m▀▄    ▄▀   \033[0;33m▀ ▀▄▄ ▄▄▀ ▀   \033[0;34m ▀█▄ ▀▀ ▄█▀    \033[0;35m▀▄    ▄▀\033[0m"
    echo
    echo -e "\033[1;30m▄ ▀▄   ▄▀ ▄   \033[1;31m ▄▄▄████▄▄▄    \033[1;32m  ▄██▄     \033[1;33m▄ ▀▄   ▄▀ ▄   \033[1;34m ▄▄▄████▄▄▄    \033[1;35m  ▄██▄  \033[0m"
    echo -e "\033[1;30m█▄█▀███▀█▄█   \033[1;31m███▀▀██▀▀███   \033[1;32m▄█▀██▀█▄   \033[1;33m█▄█▀███▀█▄█   \033[1;34m███▀▀██▀▀███   \033[1;35m▄█▀██▀█▄\033[0m"
    echo -e "\033[1;30m▀█████████▀   \033[1;31m▀▀▀██▀▀██▀▀▀   \033[1;32m▀▀█▀▀█▀▀   \033[1;33m▀█████████▀   \033[1;34m▀▀▀██▀▀██▀▀▀   \033[1;35m▀▀█▀▀█▀▀\033[0m"
    echo -e "\033[1;30m ▄▀     ▀▄    \033[1;31m▄▄▀▀ ▀▀ ▀▀▄▄   \033[1;32m▄▀▄▀▀▄▀▄   \033[1;33m ▄▀     ▀▄    \033[1;34m▄▄▀▀ ▀▀ ▀▀▄▄   \033[1;35m▄▀▄▀▀▄▀▄\033[0m"
    echo
    echo -e "                                   \033[1;37m▌\033[0m"
    echo
    echo -e "                                 \033[1;37m▌\033[0m"
    echo
    echo -e "                            \033[1;37m    ▄█▄    \033[0m"
    echo -e "                            \033[1;37m▄█████████▄\033[0m"
    echo -e "                            \033[1;37m▀▀▀▀▀▀▀▀▀▀▀\033[0m"
}

function _colors_help {
    echo "Show the colors supported by the terminal."
    echo
    echo "Usage: colors [-hlg]"
    echo
    echo " -h  This help"
    echo " -l  Show a list of color names"
    echo " -g  Show a grid of colors"
}

args=`getopt hlg $*`
if [ $? != 0 ]
then
    _colors_help
    exit 2
fi
set -- $args

for i
do
    case "$i" in
        -h) _colors_help; shift; break;;
        -l) _colors_list; shift; break;;
        -g) _color_grid; shift; break;;
        --) _colors_space; shift; break;;
    esac
done
