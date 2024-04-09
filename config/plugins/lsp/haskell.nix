{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    haskell-tools-nvim
  ];

  keymaps = [
    {
      mode = ["n"];
      key = "<leader>hs";
      action = "<cmd>lua require('haskell-tools').hoogle.hoogle_signature()<cr>";
      options = {
        desc = "Hoogle signature";
      };
    }
  ];
}
