{
  # Import all your configuration modules here
  imports = [ 
    ./bufferline.nix
    ./sets.nix
    ./plug/colortheme
    # completion
    ./plug/completion/cmp.nix
    ./plug/completion/lspkind.nix
    # snippets
    ./plug/snippets/luasnip.nix
    # lsp
    ./plug/lsp/lsp.nix
    ./plug/lsp/fidget.nix
    ./plug/lsp/hlchunk.nix

    # utils
    ./plug/utils/whichkey.nix

    # treesitter
    ./plug/treesitter/treesitter.nix
  ];
}
