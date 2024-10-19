{
  plugins.toggleterm = {
    enable = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>tt";
      action = "<cmd>ToggleTerm<cr>";
      options = {
        silent = true;
        desc = "Toggle Term";
      };
    }
  ];
}
