#!/bin/bash

SCRIPT_NAME=`basename $0`
DOTFILES_DIR=~/dotfiles
FILES=`ls $DOTFILES_DIR`

echo ""
echo "Installing dotfiles. Existing files will not be overwritten..."
echo ""

for file in $FILES; do
    if [[ $file == $SCRIPT_NAME ]]; then
        continue
    else
        ln -s $DOTFILES_DIR/$file ~/.$file 2> /dev/null
        if [[ $? -eq 1 ]]; then
            echo "✗ - $file"
        else
            echo "✓ - $file"
        fi
    fi
done

echo ""
echo "Dotfile installation complete."
echo ""

