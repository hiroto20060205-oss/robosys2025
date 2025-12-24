#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Fujitake Hiroto
# SPDX-License-Identifier: MIT

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

#正常な入力

# 1 / 50 = 0.02s = 20ms
out=$(echo 50 | ./convert_frequency_period) #周波数を周期に変換
[ "${out}" = "20 ms" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo ok
exit $res
