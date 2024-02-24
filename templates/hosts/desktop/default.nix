{
  pkgs,
  config,
  lib,
  ...
}: {
  imports = [./hardware.nix];

  modules = {
    shell = {
      default = "zsh";
      toolset = {
        git.enable = true;
        gnupg.enable = true;
      };
    };
    networking.networkManager.enable = true;
    services.ssh.enable = true;

    themes.active = "catppuccin";
    desktop = {
      gnome.enable = true;
      terminal = {
        default = "alacritty";
        alacritty.enable = true;
      };
      editors = {
        default = "nvim";
        neovim.enable = true;
      };
      browsers = {
        default = "firefox";
        firefox.enable = true;
      };
      extensions.player = {
        music.enable = true;
        video.enable = true;
      };
      toolset.docViewer = {
        enable = true;
        program = "zathura";
      };
    };
  };
}
