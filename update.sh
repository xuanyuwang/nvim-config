#!/bin/bash

echo "cleaning..."
rm -fr .vim
rm -f .vimrc

echo "copying..."
cp ~/.vimrc .
cp -r ~/.vim/after .

echo "gitting..."
git add -A
read commitContent
git commit -m "$commitContent"
git status
git push origin master
