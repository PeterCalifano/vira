#! /bin/bash

# Build all
cmake -S . -B build \
    -DCMAKE_BUILD_TYPE=relwithdebinfo \
    -DVIRA_BUILD_VIRAPY=ON \
    -DVIRA_BUILD_EXAMPLES=ON \
    -DVIRA_BUILD_TESTS=ON \
    -DVIRA_BUILD_DOCS=ON