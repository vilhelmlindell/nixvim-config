{
  plugins.neo-tree = {
    enable = true;
  };
  keymaps = [
    {
      mode = ["n" "i"];
      key = "<leader>e";
      action = "<cmd>Neotree toggle right<cr>";
      options = {
        silent = true;
        desc = "Open neo-tree";
      };
    }
  ];
}
