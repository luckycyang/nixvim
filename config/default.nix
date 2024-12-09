{
  # Import all your configuration modules here
  imports = [
    # Basic
    ./bufferline.nix
    ./sets.nix
    ./keys.nix
    ./colortheme.nix

    # cmp
    ./plug/cmp/cmp.nix

    # lsp
    ./plug/lsp/lsp.nix

  ];
}
