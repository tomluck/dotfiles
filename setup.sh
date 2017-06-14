#!/bin/bash

DOT_FILES=(.bashrc .vimrc .rpmmacros)
ORIGINAL_DIR="${HOME}/default"
DOT_DIR="${HOME}/dotfiles"

if [ ! -e ${DOT_DIR} ]; then
  echo "${DOT_DIR} NOT found."
  exit 1
fi

mkdir -p ${ORIGINAL_DIR} 2>/dev/null
for file in ${DOT_FILES[@]}
do
    if [ ! -L ${HOME}/$file ]; then
        mv ${HOME}/$file ${ORIGINAL_DIR}
        ln -s ${DOT_DIR}/$file ${HOME}/$file
    fi
done

exit 0
