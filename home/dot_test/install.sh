#!/bin/bash

apt-get update
apt-get install -y curl

# chezmoi
sh -c "$(curl -fsLS https://chezmoi.io/get)" -- -b "$HOME/.local/bin"
chezmoi="$HOME/.local/bin/chezmoi"
exec "$chezmoi" init garryshield
