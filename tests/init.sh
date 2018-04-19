#!/bin/sh


_setup() {
	# reinitialize fail variable
	fail=0
	# temporary directories
	admin_dir=$(mktemp -d)
	alt_dir=$(mktemp -d)
	bin_dir=$(mktemp -d)
	fac_dir=$(mktemp -d)
	# Path to alternatives binary
	alternatives=alternatives

	# Shorthand for setting different default directories
	alt_dirs_opts="--altdir $alt_dir --admindir $admin_dir"
}

_compare () {
	diff -Naur "out" "exp" > tmp_diff
	if [ "" == "$(cat tmp_diff)" ]; then
		return 0
	else
		cat tmp_diff >> test_log_file
		return 1
	fi
}

_tear_down() {
	rm -rf $admin_dir $alt_dir $bin_dir $fac_dir
	rm exp out tmp_diff
}

