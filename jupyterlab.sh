#!/bin/bash
eval "$(pyenv init -)"
pyenv activate anaconda3-5.0.1
cd ~/
IP=`ip -4 route get 8.8.8.8 | awk {'print $7'} | tr -d '\n'`
jupyter lab --no-browser --ip="0.0.0.0"