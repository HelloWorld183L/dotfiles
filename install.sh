#!/bin/bash

sudo apt update

sudo apt install -y neovim
curl https://install.duckdb.org | sh
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm awscliv2.zip

python3 -m venv venv
pip install -r requirements.txt

export PATH='/home/coder/.duckdb/cli/latest':$PATH