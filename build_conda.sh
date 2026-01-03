#!/bin/bash
set -eou pipefail

source ~/miniconda3/etc/profile.d/conda.sh
conda activate vira_env

# Required to build docs (missing in vira_env for some reason)
#pip install sphinx sphinx_rtd_theme breathe sphinx_autodoc_typehints sphinx_toolbox myst_parser

cmake -B build -S . \
        -DCMAKE_TOOLCHAIN_FILE=./cmake/conda-toolchain.cmake \
        -DCMAKE_BUILD_TYPE=relwithdebinfo \
        -DVIRA_BUILD_VIRAPY=ON \
        -DVIRA_BUILD_EXAMPLES=ON \
        -DVIRA_BUILD_TESTS=ON \
        -DVIRA_BUILD_DOCS=ON


cmake --build . -j
cmake --install .