# Nix Dotfiles 構成ガイド

## 概要

この dotfiles は `flake.nix` をエントリーポイントとし、Linux (WSL) 対応の開発環境を構築します。

## システム構成

| コンポーネント     | Linux (x86_64) |
| ------------------ | -------------- |
| システム設定       | home-manager   |
| ユーザーパッケージ | home-manager   |
| シェル             | fish           |

## パッケージ管理のアーキテクチャ

### 共通パッケージ (`nix/modules/home-manager/packages/default.nix`)

以下のパッケージがインストールされます:

- エディタ：neovim
- シェル：fish, zsh, bash, starship
- CLI ツール：jq, bat, curl, wget, zoxide, fzf, tmux, eza, yazi, btop, just
- Nix 関連：nix-tree, direnv, cachix, niv
- 言語：python312, nodejs, bun, deno, rustc
- LSP/フォーマッタ：rust-analyzer, nil, nixd, nixfmt, stylua
- Git 関連：git, gh, ghq, lazygit, gitui

### Linux 専用パッケージ (`nix/modules/linux/system.nix`)

- xclip, wl-clipboard (クリップボード)
- pulseaudio, pavucontrol (音声)
- unzip, zip (アーカイブ)
- nmap (ネットワーク)

## モジュール構造

```
nix/
├── modules/
│   ├── home-manager/
│   │   ├── tools-read.nix
│   │   ├── agent-skills.nix
│   │   ├── dotfiles-link.nix
│   │   ├── packages/
│   │   │   ├── base.nix
│   │   │   ├── cli.nix
│   │   │   ├── default.nix
│   │   │   ├── dev.nix
│   │   │   └── treefmt.nix
│   │   └── program/
│   │       └── gh/
│   │           └── gh.nix
│   └── linux/
│       └── system.nix
├── overlays/
│   ├── ai-tools.nix
│   └── default.nix
├── README.md
├── cachix.nix
└── shared.nix
```

## コマンド

```bash
# 環境切り替え
nix run .#switch

# ビルドのみ (切り替えなし)
nix run .#build

# flake 更新
nix run .#update
```

## 参考リポジトリ

<https://github.com/nazozokc/dotfiles>

**一番参照**
<https://github.com/ryoppippi/dotfiles>

**少し参照**
<https://github.com/mozumasu/dotfiles>

**あまり参照はないが参考にはなりそう**
<https://github.com/ntsk/dotfiles>
