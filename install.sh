#!/bin/sh

set -e

apk add \
  curl \
  fish \

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
echo 'fish_add_path /root/.local/bin' > /etc/fish/config.fish
echo 'zoxide init fish | source' >> /etc/fish/config.fish

curl -sS https://starship.rs/install.sh | sh -s -- -y
echo 'starship init fish | source' >> /etc/fish/config.fish
