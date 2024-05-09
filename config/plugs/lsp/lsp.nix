let
  pkgs =
    import (
      builtins.fetchTarball {
        url = "https://github.com/NixOS/nixpkgs/archive/nixos-23.11.tar.gz";
        sha256 = "0yqbwqbripb1bbhlwjfbqmg9qb0lai2fc0k1vfh674d6rrc8igwv";
      }
    ) {
      localSystem = "x86_64-linux";
    };
in {
  plugins = {
    lsp-format = {enable = true;};
    lsp = {
      enable = true;
      servers = {
        clangd.enable = true;
        cmake.enable = true;
        nil_ls.enable = true;
        pylyzer = {
          enable = false;
          package = pkgs.pylyzer;
        };
        pyright.enable = true;
        marksman.enable = true;
        sqls.enable = true;
        typst-lsp.enable = true;
        elixirls.enable = true;
        slint-lsp.enable = true;
        metals.enable = true;
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
  keymaps = [
    {
      mode = ["n"];
      key = "<leader>c";
      action = "+code";
      options = {
        desc = "code";
      };
    }
  ];
}
