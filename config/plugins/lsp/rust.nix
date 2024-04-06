{
  plugins = {
    rustaceanvim = {
      enable = true;
    };
    crates-nvim.enable = true;
  };
  extraConfigLua = ''
    vim.g.rustaceanvim = {
      -- Plugin configuration
      tools = {
      },
      -- LSP configuration
      server = {
        on_attach = function(client, bufnr)
    	  client.server_capabilities.semanticTokensProvider = nil
        end,
        capabilities = {
          textDocument = {
            completion = {
              completionItem = {
                snippetSupport = false
              },
            },
          },
        },
        default_settings = {
          -- rust-analyzer language server configuration
          ['rust-analyzer'] = {
          },
        },
      },
      -- DAP configuration
      dap = {
      },
    }
  '';
}
