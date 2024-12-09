{
  keymaps = [
    # Window Switch
    {
      mode = "n";
      action = "<C-w>h";
      key = "<C-h>";
      options = {
        silent = true;
        desc = "Switch to left window";
      };
    }
    {
      mode = "n";
      action = "<C-w>j";
      key = "<C-j>";
      options = {
        silent = true;
        desc = "Switch to buttom window";
      };
    }
    {
      mode = "n";
      action = "<C-w>k";
      key = "<C-k>";
      options = {
        silent = true;
        desc = "Switch to top window";
      };
    }
    {
      mode = "n";
      action = "<C-w>l";
      key = "<C-l>";
      options = {
        silent = true;
        desc = "Switch to right window";
      };
    }
    # Resize window
    {
      mode = "n";
      action = ":resize -2<CR>";
      key = "<C-Up>";
      options = {
        silent = true;
        desc = "Resize forward top";
      };
    }
    {
      mode = "n";
      action = ":resize +2<CR>";
      key = "<C-Down>";
      options = {
        silent = true;
        desc = "Resize forward buttom";
      };
    }
    {
      mode = "n";
      action = ":vertical resize -2<CR>";
      key = "<C-Left>";
      options = {
        silent = true;
        desc = "Resize forward left";
      };
    }
    {
      mode = "n";
      action = ":vertical resize +2<CR>";
      key = "<C-Right>";
      options = {
        silent = true;
        desc = "Resize forward right";
      };
    }

    # ident
    {
      mode = "v";
      action = "<gv";
      key = "<";
      options = {
        silent = true;
        desc = "tab -2";
      };
    }
    {
      mode = "v";
      action = ">gv";
      key = ">";
      options = {
        silent = true;
        desc = "tab +2";
      };
    }
  ];
}
