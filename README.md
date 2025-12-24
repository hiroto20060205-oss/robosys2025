# ロボットシステム学課題1_素因数分解コマンド

![test](https://github.com/hiroto20060205-oss/robosys2025/actions/workflows/test.yml/badge.svg)

## 概要
**入力した数値を素数に分解するコマンドです.**

## 使用方法

### リポジトリのクローン

```bash
git clone https://github.com/hiroto20060205-oss/robosys2025.git
```

### 実行コマンド

```bash
./prime_factorization.py
```

### エラーが出た場合 
**以下の原因が考えられます.**

- 数字以外を入力している可能性があります
- 何も入力せずに実行すると発生します

### 例外的な処理
**負の数値や、2より小さい数値を入力すると[]を出力をします.**


## 動作環境
- Ubuntu 24.04.3 LTS

## 必要なソフトウェア
- **python**
    - テスト済みバージョン:3.7 ~ 3.13

## 参考文献
- https://www.sejuku.net/blog/40530 [参照日 2025/11/30]

## ライセンス
- © 2025 Hiroto Fujitake
- このパッケージはMIT licenseに基づいて公開されています.
- ライセンスの全文は[LICENSE](./LICENSE)から確認できます.
