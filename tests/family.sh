#!/bin/sh

. "init.sh"
_setup

link=$bin_dir/fac_link
name=fac_alt_link
family=java.x86_64

path=$fac_dir/facility
priority=100

alt_path_1=$fac_dir/facility_alt1
alt_priority_1=10

alt_path_2=$fac_dir/facility_alt2
alt_priority_2=15

touch $path $alt_path_1 $alt_path_2

$alternatives --install $link $name $path $priority $alt_dirs_opts
$alternatives --install $link $name $alt_path_1 $alt_priority_1 --family $family $alt_dirs_opts
$alternatives --install $link $name $alt_path_2 $alt_priority_2 --family $family $alt_dirs_opts

# Set alternative from a family
$alternatives --set $name $alt_path_2 $alt_dirs_opts

# Delete it and expect the one in the same family with lower priority to become active instead of the more prioritized alternative outside of the family
$alternatives --remove $name $alt_path_2 $alt_dirs_opts

echo $(readlink -f $link) > out

# $link should be pointing to $alt_path_1 even though it has a lower priority due to belonging to the same family as $alt_path_2
echo $alt_path_1 > exp

_compare || fail=1

_tear_down

echo $fail

