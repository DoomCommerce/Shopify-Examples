#!/usr/bin/env sh

#
#   Bundle a given module folder
#

bun build                                       \
    --watch                                     \
    --outfile "Theme/assets/$1.js"              \
    --tsconfig-override Source/tsconfig.json    \
    --external "Thing"                          \
    "Source/$1/mod.ts"