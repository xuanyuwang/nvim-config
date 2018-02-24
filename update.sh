#!/bin/bash

rm -fr .vim
rm -f .vimrc

cp ~/.vimrc .
cp -r ~/.vim .

git add -A
read commitContent
git commit -m "$commitContent"
git status
git push origin master
