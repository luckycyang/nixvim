{
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = false;
      settings = {
        mapping = {
          __raw = ''
              cmp.mapping.preset.insert({
            		["<C-Space>"] = cmp.mapping.complete(),
            		["<C-b>"] = cmp.mapping.scroll_docs(-4),
            		["<C-e>"] = cmp.mapping.abort(),
            		["<C-f>"] = cmp.mapping.scroll_docs(4),
            		["<C-j>"] = cmp.mapping.select_next_item(),
            		["<C-k>"] = cmp.mapping.select_prev_item(),
            		["<CR>"] = cmp.mapping.confirm({ select = true }),
            		["<S-CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
            		["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
              })
          '';
        };
        snippet = {
          expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        };
        sources = {
          __raw = ''
            cmp.config.sources({
              { name = "nvim_lsp" },
            		{ keywordLength = 3, name = "buffer", option = { get_bufnrs = vim.api.nvim_list_bufs } },
            		{ name = "cmdline" },
            		{ name = "path" },
            		{ keywordLength = 3, name = "luasnip" },
              })
          '';
        };
        window = {
          completion = { border = "solid"; };
          documentation = { border = "solid"; };
        };
      };
    };
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp-buffer.enable = true;
    cmp-cmdline.enable = true;
    friendly-snippets.enable = true;
    luasnip.enable = true;
  };
}
