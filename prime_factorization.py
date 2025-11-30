#!/usr/bin/python3
# SPDX-FileCopyrightText: 2025 Hiroto Fujitake
# SPDX-License-Identifier: MIT

# 数字を受け取る
n = int(input())

# 結果を入れるリスト
results = []

# 割る数（とりあえず2のみ）
a = 2

# nが1になるまで繰り返す
while a <= n:
    if n % a == 0:
        # 割り切れたらリストに追加
        results.append(a)
        # nを更新する
        n = n // a
    else:
        # 割り切れなかったら次の数字へ
        a = a + 1

# 結果を表示
print(results)
