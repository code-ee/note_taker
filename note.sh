!#/bin/bash

#**********************************************************************#
# This program is for taking quick notes. Optionally, the user can     #
# input one argument that will be appended to the end of the filename. #
# By default, the filename will be the date and time the note was      #
# taken. All notes will be placed in a directory on the user's         #
# desktop called "Notes". If the directory doesn't exist, it will be   #
# created automatically.                                               #
#                                                                      #
# Author: Cody Patterson   GitHub: code-ee                             #
#**********************************************************************#

mkdir -p ~/Desktop/Notes

dt=$(date '+%d-%m-%y_%H:%M:%S')
fa="_$1"
fn=$dt$fa.txt

touch $fn

vim -c 'startinsert' $fn

wait

mv $fn ~/Desktop/Notes

unset dt; unset fa; unset fn;

