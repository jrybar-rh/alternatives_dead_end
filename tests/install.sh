#!/bin/sh

. "init.sh"
_setup

link=$bin_dir/fac_link
name=fac_alt_link
path=$fac_dir/facility
priority=10

# Create symlinks
$alternatives --install $link $name $path $priority $alt_dirs_opts \
						 --slave "$link"_slave "$name"_slave "$path"_slave

# Get real output
echo $(readlink -f $link) > out
echo $(readlink -f "$link"_slave) >> out

# Get expected output
echo $path > exp
echo "$path"_slave >> exp

_compare || fail=1

_tear_down

echo $fail
