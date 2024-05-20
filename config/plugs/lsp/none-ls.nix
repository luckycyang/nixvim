{
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    updateInInsert = false;
    sources = {
      code_actions = {
        gitsigns.enable = true;
        statix.enable = true;
      };
      diagnostics = {
        statix.enable = true;
        yamllint.enable = true;
      };
      formatting = {
        alejandra.enable = true; # nix
        black = {
          enable = true;
          withArgs = ''
            {
              extra_args = { "--fast" },
            }
          '';
        }; # python
        prettier = {
          enable = true; # js css md html graphQL yaml....
          disableTsServerFormatter = true;
          withArgs = ''
            {
              extra_args = { "--no-semi", "--single-quote" },
            }
          '';
        };
        clang_format.enable = true;
        stylua.enable = true;
        yamlfmt.enable = true;
        sqlfluff.enable = true;
      };
    };
  };
  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>cf";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      options = {
        silent = true;
        desc = "Format";
      };
    }
  ];
}
