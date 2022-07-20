#!/bin/bash

# add erlang repo
sudo wget https://packages.erlang-solutions.com/ubuntu/erlang_solutions.asc -O /usr/share/keyrings/erlang_solutions-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/erlang_solutions-archive-keyring.gpg] https://packages.erlang-solutions.com/ubuntu $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/erlang-solutions.list

# update package lists
sudo apt update -y

# install Elixir
sudo apt install -y elixir

# verify version
elixir --version
mix --version

