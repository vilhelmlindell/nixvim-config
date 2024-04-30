{
  plugins = {
    lsp-format = {enable = true;};
    lsp = {
      enable = true;
      servers = {
        html = {enable = true;};
        lua-ls = {enable = true;};
        nil_ls = {enable = true;};
        marksman = {enable = true;};
        pyright = {enable = true;};
        #gopls = {
        #  enable = true;
        #  extraOptions = {
        #    capabilities = {
        #      textDocument = {
        #        completion = {
        #          completionItem = {
        #            snippetSupport = false;
        #          };
        #        };
        #      };
        #    };
        #  };
        #};
        omnisharp = {enable = true;};
        terraformls = {enable = true;};
        tsserver = {enable = true;};
        #java-language-server = {enable = true;};
        #rust-analyzer = {
        #  enable = true;
        #  extraOptions = {
        #    capabilities = {
        #      textDocument = {
        #        completion = {
        #          completionItem = {
        #            snippetSupport = true;
        #          };
        #        };
        #      };
        #    };
        #  };
        #};
        #hls = {enable = true;};
        yamlls = {enable = true;};
      };
      #onAttach = ''
      #  client.server_capabilities.semanticTokensProvider = nil
      #'';
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
          "<leader>ca" = {
            action = "code_action";
            desc = "Code Action";
          };
          "<C-k>" = {
            action = "signature_help";
            desc = "Signature Help";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
}
