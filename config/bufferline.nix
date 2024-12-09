{
  plugins.web-devicons.enable = true;
  plugins.bufferline = {
    enable = true;
  };
  keymaps = [
    {
      action = "<cmd>BufferLineCycleNext<CR>";
      key = "<S-l>";
      options = {
        silent = true;
      };
    }
    {
      action = "<cmd>BufferLineCyclePrev<CR>";
      key = "<S-h>";
      options = {
        silent = true;
      };
    }
  ];
}
