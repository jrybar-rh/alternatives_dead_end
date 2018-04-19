#!/bin/sh

. "init.sh"
_setup

link=$bin_dir/fac_link
name=fac_alt_link
path=$fac_dir/facility
priority=10

alt_priority=15
alt_path=$fac_dir/facility


# Create symlinks
$alternatives --install $link $name $path $priority $alt_dirs_opts \
						 --slave "$link"_slave1 "$name"_slave1 "$path"_slave1 \
						 --slave "$link"_slave2 "$name"_slave2 "$path"_slave2

# Get real output
echo $(readlink -f $link) > out
echo $(readlink -f "$link"_slave1) >> out
echo $(readlink -f "$link"_slave2) >> out

# Get expected output
echo $path > exp
echo "$path"_slave1 >> exp
echo "$path"_slave2 >> exp

# Add another alternative that replaces slave 1
$alternatives --install $link $name $alt_path $alt_priority $alt_dirs_opts \
						 --slave "$link"_slave1 "$name"_slave1 "$path"_slave2_new

echo $(readlink -f "$link"_slave1) >> out

# slave 1 link should be pointing to slave2_new now
echo "$path"_slave2_new >> exp

# slave 2 link should be removed
if [ -h "$link"_slave2 ]; then
	echo "$link"_slave2 should have been removed >> out
fi

_compare || fail=1

_tear_down

echo $fail

