#!/bin/bash

mkdir -p ./linux/.vscode
rm ./linux/.vscode/* -rf
cp ~/workspace/linux/.vscode/* ./linux/.vscode/ -rf

cp /home/ubuntu/.vscode-server/data/Machine/settings.json .