#!/bin/sh

. "init.sh"
_setup

link=$bin_dir/fac_link
name=fac_alt_link
path=$fac_dir/facility
priority=10

touch $path

$alternatives --install $link $name $path $priority $alt_dirs_opts
$alternatives --remove $name $path $alt_dirs_opts

if [ -h $name ]; then
	echo "$name should have been deleted" > out
else
	echo "" > out
fi

echo "" > exp

_compare || fail=1

_tear_down

echo $fail

