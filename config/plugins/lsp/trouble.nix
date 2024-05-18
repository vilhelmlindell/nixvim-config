{
  plugins.trouble = {
    enable = true;
  };
  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>t";
      action = "+trouble";
    }
    {
      mode = ["n" "v"];
      key = "<leader>tt";
      action = "<cmd> TroubleToggle<cr>";
      options = {desc = "Toggle diagnostics";};
    }
    {
      mode = ["n" "v"];
      key = "<leader>tw";
      action = "<cmd> TroubleToggle workspace_diagnostics<cr>";
      options = {desc = "Toggle workspace diagnostics";};
    }
    {
      mode = ["n" "v"];
      key = "<leader>td";
      action = "<cmd> TroubleToggle document_diagnostics<cr>";
      options = {desc = "Toggle document diagnostics";};
    }
    {
      mode = ["n" "v"];
      key = "<leader>tq";
      action = "<cmd> TroubleToggle quickfix<cr>";
      options = {desc = "Toggle quickfix";};
    }
    {
      mode = ["n" "v"];
      key = "<leader>tl";
      action = "<cmd> TroubleToggle loclist<cr>";
      options = {desc = "Toggle loclist";};
    }
  ];
}
