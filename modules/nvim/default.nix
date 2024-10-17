{ pkgs, lib, config, ... }:
{
  home.packages = with pkgs; [
    neovim

    # Language Servers
    nodePackages.bash-language-server
    clang-tools_17
    csharp-ls
    gopls
    jdt-language-server
    lua-language-server
    pyright
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

  xdg.configFile."nvim" = { source = ./.; };
}
