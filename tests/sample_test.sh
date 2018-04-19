#!/bin/sh
#
# THIS IS A SAMPLE TEST
#
# To add a test, place the test file in tests/ directory and add the test filename to runner.sh script
#
# Every test should include init.sh in the beginning to initialize variables and create temporary directories.
#
# Run _setup before the test and _tear_down after the test.
#
# During the test there are 2 files expected to be produced. "out" for real $alternatives output and "exp" for expected output. Those files are compared with `diff` by calling _compare
#
# $fail is initialized in _setup with "0" value. When something went wrong, set it to "1" and echo it out
#
# Inspect created test_log_file for errors after the test suite finishes.
#

. "init.sh"
_setup

# Helper variables
link=$bin_dir/fac_link
name=fac_alt_link
path=$fac_dir/facility
priority=10

# Some usage of $alternatives
#$alternatives --install $link $name $path $priority $alt_dirs_opts \
#							--slave "$link"_slave "$name"_slave "$path"_slave

# Get real output
echo "output" > out

# Get expected output
echo "output" > exp

_compare || fail=1

_tear_down

echo $fail

