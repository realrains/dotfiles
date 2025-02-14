#!/bin/bash

command="ghostty"

if ! command -v $command &> /dev/null
then
    echo "Install Ghostty..."
    brew install --cask ghostty
else
    echo "Ghostty is already installed"
fi

source_path=$(pwd)/config
target_path=$HOME/.config/ghostty/config

if [ -e "$target_path" ] || [ -L "$target_path" ]; then
  read -p "'$target_path' is already exist. Do you want to overwrite it? (y/n): " choice
  case "$choice" in
    y|Y ) rm -rf "$target_path" ;;
    * ) echo "Creating symbolic link is canceled.";
  esac
fi

ln -s "$source_path" "$target_path"
echo "Created symbolic link '$target_path' -> '$source_path'"
