#!/bin/bash

get_conda=`which conda &> /dev/null || echo 1`

if [[ "$get_conda" == "1" ]]; then
    url="https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh"
    curl -fsSL "$url" > ~/miniconda.sh
    bash ~/miniconda.sh -b
fi

~/miniconda3/bin/conda init zsh
conda config --set changeps1 false