{ pkgs, userConfig, ... }:
{

  imports = [
    (import ./git.nix { inherit pkgs userConfig; })
    ./zsh.nix
    (import ./vscode.nix { inherit pkgs userConfig; })
    ./uwsm.nix
  ];

  programs = {
    home-manager.enable = true;
    neovim = {
      enable = true;
      defaultEditor = true;
    };
    zsh.enable = true;
    nix-index.enable = true;
  };
}
