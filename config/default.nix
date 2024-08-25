{
  # Import all your configuration modules here
  imports = [ 
    ./bufferline.nix
    ./sets.nix
    ./plug/colortheme
    ./plug/completion/cmp.nix
    ./plug/completion/lspkind.nix
    ./plug/snippets/luasnip.nix
    # lsp
    ./plug/lsp/lsp.nix
    ./plug/lsp/fidget.nix
    ./plug/lsp/hlchunk.nix
  ];
}
