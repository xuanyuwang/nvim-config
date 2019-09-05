#!/bin/bash

echo "cleaning..."
rm -fr .vim
rm -f .vimrc

echo "copying..."
cp ~/.vimrc .
cp -r ~/.vim/after .
cp -r ~/.vim/autoload .
cp -r ~/.vim/plugin .

echo "gitting..."
git add -A
echo "leave your comment for this updating"
read commitContent
git commit -m "$commitContent"
git status
git push origin master
