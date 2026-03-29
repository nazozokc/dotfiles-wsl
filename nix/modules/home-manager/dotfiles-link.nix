{ config, ... }:

let
  homeDir = config.home.homeDirectory;
  dotfilesDir = "${homeDir}/ghq/github.com/nazozokc/dotfiles";
  link = config.lib.file.mkOutOfStoreSymlink;
in
{
  home.file = {
    ".config/fish".source = link "${dotfilesDir}/fish";
    ".config/claude".source = link "${dotfilesDir}/claude";
    "commitlint.config.js".source = link "${dotfilesDir}/commitlint.config.js";
    ".config/nvim".source = link "${dotfilesDir}/nvim";
    ".config/starship.toml".source = link "${dotfilesDir}/starship/starship.toml";
    ".zshrc".source = link "${dotfilesDir}/zsh/zshrc";
    ".bashrc".source = link "${dotfilesDir}/bash/bashrc";
    ".config/lazygit".source = link "${dotfilesDir}/lazygit";

    # opencode
    ".config/opencode/opencode.json".source = link "${dotfilesDir}/opencode/opencode.json";
    ".config/opencode/tui.json".source = link "${dotfilesDir}/opencode/tui.json";
  };
}
