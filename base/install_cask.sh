#!/bin/sh

set -e

# brew often partially installs stuff, so run it again and again until complete
until [ -e "/home/linuxbrew/.linuxbrew/bin/$1" ]
do
    brew install "ensembl/cask/$1"
done

brew cleanup
rm -rf /home/linuxbrew/.cache/Homebrew

