{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./sets.nix
    ./keys.nix
    ./plug/colortheme
    # completion
    ./plug/completion/cmp.nix
    ./plug/completion/lspkind.nix
    # snippets
    ./plug/snippets/luasnip.nix
    # lsp
    ./plug/lsp/conform.nix
    ./plug/lsp/lsp.nix
    ./plug/lsp/none-ls.nix
    ./plug/lsp/fidget.nix
    ./plug/lsp/hlchunk.nix
    ./plug/lsp/lspsaga.nix
    ./plug/lsp/trouble.nix
    ./plug/lsp/rustaceanvim.nix

    # utils
    ./plug/utils/whichkey.nix

    # treesitter
    ./plug/treesitter/treesitter.nix
    # ui
    ./plug/ui/telescope.nix
  ];
}
