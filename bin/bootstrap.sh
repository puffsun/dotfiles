#!/usr/bin/env bash

cd ${BASH_SOURCE:-"${HOME}"}

if git clone https://github.com/puffsun/dotfiles.git .dotfiles; then
    if [ "$1" == "--force" -o "$1" == "-f" ]; then
        doIt;
    else
        read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
        echo "";
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            doIt;
        fi;
    fi;
    unset doIt;
else
    exit -1
fi


function doIt() {
    rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
        --exclude "README.md" --exclude "LICENSE-MIT.txt" -avh --no-perms . ~;
    source ~/.zshrc;
}

