{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    neovim

    # Language Servers
    nodePackages.bash-language-server
    clang-tools_17
    csharp-ls
    gopls
    lua-language-server
    ruff
    nodePackages.typescript-language-server
    zls

    # Debuggers
    gdb

    # Formatters
    ruff
    nodePackages.prettier
    stylua

    wl-clipboard
  ];

  xdg.configFile."nvim" = { source = ./.; force = true; };
}
