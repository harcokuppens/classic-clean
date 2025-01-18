#!/bin/bash
set -e

script_dir=$(dirname $0)
rm -rf "$script_dir/bin"
# cleanup builds in src folders in "Clean System Files" folders
find "$script_dir/src"  -name 'Clean System Files' -type d -exec echo {} ';'  | xargs -I % rm -r "%"

