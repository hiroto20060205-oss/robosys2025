# ロボットシステム学課題1_周波数・周期変換コマンド

![test](https://github.com/hiroto20060205-oss/robosys2025/actions/workflows/test.yml/badge.svg)

## 概要
**入力した数値を周波数or周期に変換するコマンドです.**

- **入力値がn >= 1の場合：** 周波数（Hz）とみなして、周期（s,ms,us,ns）に変換
- **入力値がn < 1の場合：** 周期（s）とみなして、周波数（Hz,kHz,MHz）に変換

## デモ

## 使用方法

### リポジトリのクローンと実行準備

```bash
git clone https://github.com/hiroto20060205-oss/robosys2025.git
```

```bash
#実行ディレクトリに移動
cd robosys2025

#実行権限を付与
chmod +x convert_frequency_period
```

### 実行例

**周波数から周期へ**
```bash
echo 1000 | ./convert_frequency_period
1 ms
```

**周期から周波数へ**
```bash
echo 0.001 | ./convert_frequency_period
1 kHz
```

**複数入力**
```bash
echo 1000 0.001 | ./convert_frequency_period
1 ms
1 kHz
```

### その他の入力
- 
- 
- 

## 動作環境
- Ubuntu 24.04.3 LTS

## 必要なソフトウェア
- **python**
    - テスト済みバージョン:3.7 ~ 3.13

## 参考文献
- [参照日 2025/12/23]
- [参照日 2025/12/24]

## ライセンス
- © 2025 Hiroto Fujitake
- このパッケージはMIT licenseに基づいて公開されています.
- ライセンスの全文は[LICENSE](./LICENSE)から確認できます.
