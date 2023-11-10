#!/bin/sh

. ./test-common.sh

# check rotation with extension moved after the number
cleanup 78

preptest test.log 78 1 0
$RLR test-config.78 --force || exit 23

checkoutput <<EOF
test.log 0
test.1.log 0 zero
EOF
