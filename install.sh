#!/bin/bash
# create the $HOME/opt/bin directory if it doesn't exist
new_path_dir="$HOME/bin"
mkdir -p $new_path_dir

# copy the bash script into that directory
cp note "$new_path_dir"

# add it to the path if it's not already there
in_path=0
echo "$PATH" | grep -q "$new_path_dir" && in_path=1
if [ $in_path == 0 ]; then
    echo $'\n# this line was added by note and adds its location to the path' >> ~/.bashrc    
    echo "export PATH=\"\$PATH:$new_path_dir\"" >> ~/.bashrc
    source $HOME/.bashrc
fi

echo "---note---"
echo "Done. You can now start using note."
echo "After restarting your terminal, you can type 'note' to use the program."
echo "Optionally, you can use a single argument to append that to the filename."
echo "(See README.md for more information)"
echo "----------"
echo ""

# unset variables used in this script
unset new_path_dir; unset in_path;
