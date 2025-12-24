#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Fujitake Hiroto
# SPDX-License-Identifier: MIT

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

#正常な入力

# 1 / 1000 = 0.001s = 1.0ms
out=$(echo 1000 | ./convert_frequency_period) #周波数を周期に変換
[ "${out}" = "1 ms" ] || ng "$LINENO"

# 1 / 0.001 = = 1000Hz = 1.0kHz
out=$(echo 0.001 | ./convert_frequency_period) #周期を周波数に変換
[ "${out}" = "1 kHz" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo ok
exit $res
