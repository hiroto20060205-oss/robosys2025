#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Fujitake Hiroto
# SPDX-Licence-Identifier: MIT

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### NORMAL INPUT ###
out=$(seq 6 | ./prime_factorization.py) #素数に分解されるか確認
[ "${out}" = "[2, 3]" ] || ng "$LINENO"


[ "${res}" = 0 ] && echo ok
exit $res
