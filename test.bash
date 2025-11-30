#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Fujitake Hiroto
# SPDX-Licence-Identifier: MIT

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

### NORMAL INPUT ###
out=$(echo 6 | ./prime_factorization.py) #素数に分解されるか確認
[ "${out}" = "[2, 3]" ] || ng "$LINENO"

out=$(echo 7 | ./prime_factorization.py) #単体で素数の数が表示されるか確認
[ "${out}" = "[7]" ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo あ | ./prime_factorization.py) #数字以外を入力したらエラーを出すか
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./prime_factorization.py) #空文字を入力したらエラーを出すか
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

### It's not an error, but it's not normal ###
out=$(echo 1 | ./prime_factorization.py) #2で割り切れない数字を入力したら[]を出すか
[ "$?" = 0 ]        || ng "$LINENO"
[ "${out}" = "[]" ] || ng "$LINENO"

out=$(echo -6  | ./prime_factorization.py) #負の値を入力したら[]を出すか
[ "$?" = 0 ]        || ng "$LINENO"
[ "${out}" = "[]" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo ok
exit $res
