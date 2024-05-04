{
  plugins.neo-tree = {
    enable = true;
  };
  keymaps = [
    {
      mode = ["n"];
      key = "<leader>e";
      action = "<cmd>Neotree toggle right<cr>";
      options = {
        silent = true;
        desc = "Open neo-tree";
      };
    }
  ];
}
