{ pkgs }:

with pkgs;
[
  #agent
  ollama
  claude-code
  opencode
  claude-monitor
  qwen-code

  #other
  pay-respects

  #nix
  nix-output-monitor

  #downloader
  aria2
  mise
]
