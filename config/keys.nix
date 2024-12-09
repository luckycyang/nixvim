{
  globals.mapleader = " ";

  keymaps =
    [
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w>h";
        options = {
          silent = true;
          desc = "Move to left window";
        };
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w>j";
        options = {
          silent = true;
          desc = "Move to below window";
        };
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w>k";
        options = {
          silent = true;
          desc = "Move to above window";
        };
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w>l";
        options = {
          silent = true;
          desc = "Move to right window";
        };
      }
      {
        mode = "n";
        key = "<C-Up>";
        action = ":resize -2<CR>";
        options = {
          silent = true;
          desc = "Resize window up";
        };
      }
      {
        mode = "n";
        key = "<C-Down>";
        action = ":resize +2<CR>";
        options = {
          silent = true;
          desc = "Resize window down";
        };
      }
      {
        mode = "n";
        key = "<C-Left>";
        action = ":vertical resize -2<CR>";
        options = {
          silent = true;
          desc = "Resize window left";
        };
      }
      {
        mode = "n";
        key = "<C-Right>";
        action = ":vertical resize +2<CR>";
        options = {
          silent = true;
          desc = "Resize window right";
        };
      }
      {
        mode = "n";
        key = "<C-e>";
        action = ":Neotree<CR>";
        options = {
          silent = true;
          desc = "Open Neotree";
        };
      }
      {
        mode = "v";
        key = "<";
        action = "<gv";
        options = {
          silent = true;
          desc = "Indent left";
        };
      }
      {
        mode = "v";
        key = ">";
        action = ">gv";
        options = {
          silent = true;
          desc = "Indent right";
        };
      }
      {
        mode = "v";
        key = "<A-j>";
        action = ":m '>+1<CR>gv=gv";
        options = {
          silent = true;
          desc = "Move selection down";
        };
      }
      {
        mode = "v";
        key = "<A-k>";
        action = ":m '<-2<CR>gv=gv";
        options = {
          silent = true;
          desc = "Move selection up";
        };
      }
      {
        mode = "n";
        key = "<leader>cf";
        action = "<cmd>lua vim.lsp.buf.format()<cr>";
        options = {
          silent = true;
          desc = "Format code";
        };
      }
    ];
  extraConfigLua = ''
    function ToggleLineNumber()
    if vim.wo.number then
      vim.wo.number = false
    else
      vim.wo.number = true
        vim.wo.relativenumber = false
        end
        end

        function ToggleRelativeLineNumber()
        if vim.wo.relativenumber then
          vim.wo.relativenumber = false
        else
          vim.wo.relativenumber = true
            vim.wo.number = false
            end
            end

            function ToggleWrap()
            vim.wo.wrap = not vim.wo.wrap
            end
  '';
}
