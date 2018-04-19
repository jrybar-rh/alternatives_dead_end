#!/bin/sh

. "init.sh"
_setup

link=$bin_dir/fac_link
name=fac_alt_link
path=$fac_dir/facility
priority=10

alt_path="$path"_alternative
alt_priority=15

# Create symlinks
$alternatives --install $link $name $path $priority $alt_dirs_opts \
						 --slave "$link"_slave "$name"_slave "$path"_slave
# Create another alternative
$alternatives --install $link $name $alt_path $alt_priority $alt_dirs_opts \

# Output mode setting. FIXME - only for old config file style
# Auto expected when no manual changes were done
echo $(head -1 $admin_dir/$name) >> out
echo "auto" >> exp

# Set first alternative as the active one
$alternatives --set $name $path $alt_dirs_opts

# Get real and expected output
echo $(readlink -f $link) > out
echo $path > exp

# Output mode setting. FIXME - only for old config file style
# Manual expected, after manual changes done
echo $(head -1 $admin_dir/$name) >> out
echo "manual" >> exp

_compare || fail=1

_tear_down

echo $fail

