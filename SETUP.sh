#!/bin/sh
# -vv work on both MacOS and *nix
# -v only on MacOS shows filenames but not permissions - weird!
find . -name \.perldb -prune -exec chmod -vv 0600 {} \;
