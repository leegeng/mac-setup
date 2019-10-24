#!/usr/bin/env bash

if ! which brew
then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

read -r -s -p "[sudo] sudo password for $(whoami):" pass

brew bundle --file=./Brewfile

# TODO. add AWS information

printf '\n\n🎉 Congrat! Your mac has been set up successfully!'

