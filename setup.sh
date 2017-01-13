#!/bin/sh

DOT_FILES=(.bashrc .vimrc .rpmmacros)
ORIGINAL_DIR="${HOME}/default"

mkdir -p ${ORIGINAL_DIR} 2>/dev/null
for file in ${DOT_FILES[@]}
do
    mv $file ${ORIGINAL_DIR}
    ln -s $HOME/dotfiles/$file $HOME/$file
done

