# nazozo dotfiles

[![DeepWiki](https://img.shields.io/badge/DeepWiki-nazozokc%2Fdotfiles-blue.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAyCAYAAAAnWDnqAAAAAXNSR0IArs4c6QAAA05JREFUaEPtmUtyEzEQhtWTQyQLHNak2AB7ZnyXZMEjXMGeK/AIi+QuHrMnbChYY7MIh8g01fJoopFb0uhhEqqcbWTp06/uv1saEDv4O3n3dV60RfP947Mm9/SQc0ICFQgzfc4CYZoTPAswgSJCCUJUnAAoRHOAUOcATwbmVLWdGoH//PB8mnKqScAhsD0kYP3j/Yt5LPQe2KvcXmGvRHcDnpxfL2zOYJ1mFwrryWTz0advv1Ut4CJgf5uhDuDj5eUcAUoahrdY/56ebRWeraTjMt/00Sh3UDtjgHtQNHwcRGOC98BJEAEymycmYcWwOprTgcB6VZ5JK5TAJ+fXGLBm3FDAmn6oPPjR4rKCAoJCal2eAiQp2x0vxTPB3ALO2CRkwmDy5WohzBDwSEFKRwPbknEggCPB/imwrycgxX2NzoMCHhPkDwqYMr9tRcP5qNrMZHkVnOjRMWwLCcr8ohBVb1OMjxLwGCvjTikrsBOiA6fNyCrm8V1rP93iVPpwaE+gO0SsWmPiXB+jikdf6SizrT5qKasx5j8ABbHpFTx+vFXp9EnYQmLx02h1QTTrl6eDqxLnGjporxl3NL3agEvXdT0WmEost648sQOYAeJS9Q7bfUVoMGnjo4AZdUMQku50McDcMWcBPvr0SzbTAFDfvJqwLzgxwATnCgnp4wDl6Aa+Ax283gghmj+vj7feE2KBBRMW3FzOpLOADl0Isb5587h/U4gGvkt5v60Z1VLG8BhYjbzRwyQZemwAd6cCR5/XFWLYZRIMpX39AR0tjaGGiGzLVyhse5C9RKC6ai42ppWPKiBagOvaYk8lO7DajerabOZP46Lby5wKjw1HCRx7p9sVMOWGzb/vA1hwiWc6jm3MvQDTogQkiqIhJV0nBQBTU+3okKCFDy9WwferkHjtxib7t3xIUQtHxnIwtx4mpg26/HfwVNVDb4oI9RHmx5WGelRVlrtiw43zboCLaxv46AZeB3IlTkwouebTr1y2NjSpHz68WNFjHvupy3q8TFn3Hos2IAk4Ju5dCo8B3wP7VPr/FGaKiG+T+v+TQqIrOqMTL1VdWV1DdmcbO8KXBz6esmYWYKPwDL5b5FA1a0hwapHiom0r/cKaoqr+27/XcrS5UwSMbQAAAABJRU5ErkJggg==)](https://deepwiki.com/nazozokc/dotfiles)

Nix で管理する個人 dotfiles。Linux / macOS マルチシステム対応。

---

## 注意事項

> 本 dotfiles は個人使用目的です。スクリプトの実行・config の使用は自己責任でお願いします。
> 本リポジトリの内容を使用したことによるいかなる損害についても、作者は一切の責任を負いません。

---

## 対応 OS

| システム       | 管理方法     |
| -------------- | ------------ |
| `x86_64-linux` | home-manager |

---

## 管理対象

- fish, zsh, bash
- neovim
- starship
- lazygit
- opencode

---

## 前提条件

- [Nix](https://nixos.org/download.html) がインストール済み（flakes 有効）

### Nix のインストール

```bash
# Linux (マルチユーザー)
sh <(curl -L https://nixos.org/nix/install) --daemon --yes

# macOS
sh <(curl -L https://nixos.org/nix/install) --no-daemon
```

---

## セットアップ

```bash
git clone https://github.com/nazozokc/dotfiles.git ~/ghq/github.com/nazozokc/dotfiles
cd ~/ghq/github.com/nazozokc/dotfiles

nix run .#switch
```

---

## コマンド

```bash
# 環境を切り替え（OS 自動検出）
nix run .#switch

# ビルドのみ（切り替えなし）
nix run .#build

# flake.lock を更新
nix run .#update
```

---

## 参考リポジトリ

- https://github.com/ryoppippi/dotfiles
- https://github.com/mozumasu/dotfiles
- https://github.com/ntsk/dotfiles

---

## Activity

![Alt](https://repobeats.axiom.co/api/embed/6db611309bf5ffac5cfb2d18f1363d48018c8e5a.svg "Repobeats analytics image")

---

## LICENSE

MIT
