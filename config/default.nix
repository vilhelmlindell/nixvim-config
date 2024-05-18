{
  imports = [
    ./keymaps.nix
    ./settings.nix

    ./plugins/colorscheme/colorscheme.nix

    ./plugins/snippets/luasnip.nix

    ./plugins/completion/cmp.nix
    ./plugins/completion/lspkind.nix
    #./plugins/completion/lsp-signature.nix

    #./plugins/git/gitsigns.nix
    #./plugins/git/lazygit.nix

    ./plugins/lsp/conform.nix
    ./plugins/lsp/fidget.nix
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/lspsaga.nix
    ./plugins/lsp/none-ls.nix
    ./plugins/lsp/trouble.nix

    ./plugins/lsp/filetypes/rust.nix
    ./plugins/lsp/filetypes/haskell.nix
    ./plugins/lsp/filetypes/java.nix

    ./plugins/treesitter/treesitter-context.nix
    ./plugins/treesitter/treesitter-textobjects.nix
    ./plugins/treesitter/treesitter.nix

    ./plugins/ui/bufferline.nix
    ./plugins/ui/staline.nix
    ./plugins/ui/telescope-zoxide.nix
    ./plugins/ui/telescope.nix
    ./plugins/ui/neo-tree.nix
    #./plugins/ui/alpha.nix
    #./plugins/ui/noice.nix
    #./plugins/ui/nvim-notify.nix

    ./plugins/utils/flash.nix
    ./plugins/utils/grapple.nix
    ./plugins/utils/illuminate.nix
    ./plugins/utils/nvim-autopairs.nix
    ./plugins/utils/oil.nix
    ./plugins/utils/undotree.nix
    ./plugins/utils/ufo.nix
    ./plugins/utils/whichkey.nix
    #./plugins/utils/dap.nix
    #./plugins/utils/hardtime.nix
    #./plugins/utils/harpoon.nix
    #./plugins/utils/zellij.nix
    #./plugins/utils/rainbow-delimiters.nix
    #./plugins/utils/indent-blankline.nix
  ];
}
