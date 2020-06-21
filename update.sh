#!/bin/bash

############################################################################
# Script Name   : update.sh
# Description   : update the files in this repository
# Args          : none
# Author        : James McDougall Jr.
# Email(s)      : jmcdouga@ucsd.edu
#               : james.mcdougall@centauricorp.com
#               : jamesimcdougalljr@gmail.com
# Date Created  : 20-06-2020
# Last Modified : Sat 20 Jun 2020 11:23:39 PM PDT
############################################################################

cp ~/.vimrc .
cp -r ~/.vim .
git add .
git commit -m "Update vimrc and .vim files"
git push origin master
