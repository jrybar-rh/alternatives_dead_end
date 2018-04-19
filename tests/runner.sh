#!/bin/sh
tests="install.sh \
			 install_slaves.sh \
			 remove.sh \
			 remove-all.sh \
			 set.sh \
			 family.sh"

test_log_file=test_log_file

rm $test_log_file

for tst in $tests; do
	echo "Test $tst" >> $test_log_file

	fail=$(bash $tst)

	if [ "$fail" -eq "1" ]; then
		echo "Test $tst FAILED"
		echo -e "FAILED\n" >> $test_log_file
	else
		echo -e "SUCCESS\n" >> $test_log_file
	fi
done
