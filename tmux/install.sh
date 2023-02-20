#!/bin/bash

mkdir -p ~/.tmux
cp tmux.conf ~/.tmux/
ln -s ~/.tmux.conf ~/.tmux/tmux.conf
git clone https://github.com/erikw/tmux-powerline.git ~/.tmux/
