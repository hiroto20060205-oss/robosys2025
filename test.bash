#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Fujitake Hiroto
# SPDX-License-Identifier: MIT

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0



[ "${res}" = 0 ] && echo ok
exit $res
