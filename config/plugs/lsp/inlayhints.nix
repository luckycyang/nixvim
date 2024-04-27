{pkgs, ...}: {
  extraPlugins = [
    pkgs.vimPlugins.lsp-inlayhints-nvim
  ];
  extraConfigLua = ''

  '';
}
