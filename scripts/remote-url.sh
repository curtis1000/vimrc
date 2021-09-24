#!/usr/local/bin/bash

path=$1
line=$2
repo_path=$(cd `dirname $path` && git rev-parse --show-toplevel)
repo_file_path=$(echo "$path" | sed "s~$repo_path~~")
origin=$(git -C $repo_path remote get-url origin)
revision=$(git -C $repo_path rev-parse HEAD)

remote_url=$(
echo "$origin/-/blob/$revision$repo_file_path#L$line" | \
sed "s~git@~https://~" | \
sed "s~.com:~.com/~" | \
sed "s~\.git~~"
)

echo "$remote_url"
