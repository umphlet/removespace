#!/bin/bash
# Simple bash script to remove spaces from filenames.
# Some code borrowed from https://stackoverflow.com/questions/2709458/how-to-replace-spaces-in-file-names-using-a-bash-script and repurposed for this script.

# Set the character to replace spaces with. Uses underscord "_" by default.
export replacechar="_"

#Searches for files and directories recursively and replaces spaces in filenames with whatever character $replacechar is set to.
find . -depth -name '* *' | while IFS= read -r f ; do mv -i "$f" "$(dirname "$f")/$(basename "$f"|tr ' ' "$replacechar")"; done
