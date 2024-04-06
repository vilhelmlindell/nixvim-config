{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    lsp_signature-nvim
  ];
  extraConfigLua = ''
    require('lsp_signature').setup({})
  '';
}
