#!/bin/sh

. "init.sh"
_setup

link=$bin_dir/bin_link
name=alt_link
path=$fac_dir/facility
priority=10

alt_path=$fac_dir/alt_facility
alt_priority=5

touch $path $alt_path

$alternatives --install $link $name $path $priority $alt_dirs_opts
$alternatives --install $link $name $alt_path $alt_priority $alt_dirs_opts
$alternatives --remove-all $name $alt_dirs_opts

if [ -h $name ]; then
	echo "$name should have been deleted" > out
else
	echo "" > out
fi

if [ ! -f $path ] || [ ! -f $alt_path ]; then
	echo "$path nor $alt_path were not supposed to be removed!" > out
fi

echo "" > exp

_compare || fail=1

_tear_down

echo $fail

