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
        gopls = {enable = true;};
        omnisharp = {enable = true;};
        terraformls = {enable = true;};
        tsserver = {enable = true;};
        java-language-server = {enable = true;};
        #rust-analyzer = {enable = true;};
        yamlls = {enable = true;};
      };
      onAttach = "client.server_capabilities.semanticTokensProvider = nil";
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
  #extraConfigLua = ''
  #      local _border = "rounded"

  #      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
  #        vim.lsp.handlers.hover, {
  #          border = _border
  #        }
  #      )

  #      vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
  #        vim.lsp.handlers.signature_help, {
  #          border = _border
  #        }
  #      )

  #      vim.diagnostic.config{
  #        float={border=_border}
  #      };

  #      require('lspconfig.ui.windows').default_options = {
  #        border = _border
  #      }
  #      -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  #      require'lspconfig'.rust_analyzer.setup {
  #        capabilities = {
  #    experimental = {
  #      serverStatusNotification = true
  #    },
  #    general = {
  #      positionEncodings = { "utf-16" }
  #    },
  #    textDocument = {
  #      callHierarchy = {
  #        dynamicRegistration = false
  #      },
  #      codeAction = {
  #        codeActionLiteralSupport = {
  #          codeActionKind = {
  #            valueSet = { "", "quickfix", "refactor", "refactor.extract", "refactor.inline", "refactor.rewrite", "source", "source.organizeImports" }
  #          }
  #        },
  #        dataSupport = true,
  #        dynamicRegistration = true,
  #        isPreferredSupport = true,
  #        resolveSupport = {
  #          properties = { "edit" }
  #        }
  #      },
  #      completion = {
  #        completionItem = {
  #          commitCharactersSupport = false,
  #          deprecatedSupport = false,
  #          documentationFormat = { "markdown", "plaintext" },
  #          preselectSupport = false,
  #          snippetSupport = false
  #        },
  #        completionItemKind = {
  #          valueSet = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
  #        },
  #        completionList = {
  #          itemDefaults = { "editRange", "insertTextFormat", "insertTextMode", "data" }
  #        },
  #        contextSupport = false,
  #        dynamicRegistration = false
  #      },
  #      declaration = {
  #        linkSupport = true
  #      },
  #      definition = {
  #        dynamicRegistration = true,
  #        linkSupport = true
  #      },
  #      diagnostic = {
  #        dynamicRegistration = false
  #      },
  #      documentHighlight = {
  #        dynamicRegistration = false
  #      },
  #      documentSymbol = {
  #        dynamicRegistration = false,
  #        hierarchicalDocumentSymbolSupport = true,
  #        symbolKind = {
  #          valueSet = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 }
  #        }
  #      },
  #      formatting = {
  #        dynamicRegistration = true
  #      },
  #      hover = {
  #        contentFormat = { "markdown", "plaintext" },
  #        dynamicRegistration = true
  #      },
  #      implementation = {
  #        linkSupport = true
  #      },
  #      inlayHint = {
  #        dynamicRegistration = true,
  #        resolveSupport = {
  #          properties = { "textEdits", "tooltip", "location", "command" }
  #        }
  #      },
  #      publishDiagnostics = {
  #        dataSupport = true,
  #        relatedInformation = true,
  #        tagSupport = {
  #          valueSet = { 1, 2 }
  #        }
  #      },
  #      rangeFormatting = {
  #        dynamicRegistration = true
  #      },
  #      references = {
  #        dynamicRegistration = false
  #      },
  #      rename = {
  #        dynamicRegistration = true,
  #        prepareSupport = true
  #      },
  #      semanticTokens = {
  #        augmentsSyntaxTokens = true,
  #        dynamicRegistration = false,
  #        formats = { "relative" },
  #        multilineTokenSupport = false,
  #        overlappingTokenSupport = true,
  #        requests = {
  #          full = {
  #            delta = true
  #          },
  #          range = false
  #        },
  #        serverCancelSupport = false,
  #        tokenModifiers = { "declaration", "definition", "readonly", "static", "deprecated", "abstract", "async", "modification", "documentation", "defaultLibrary" },
  #        tokenTypes = { "namespace", "type", "class", "enum", "interface", "struct", "typeParameter", "parameter", "variable", "property", "enumMember", "event", "function", "method", "macro", "keyword", "modifier", "comment", "string", "number", "regexp", "operator", "decorator" }
  #      },
  #      signatureHelp = {
  #        dynamicRegistration = false,
  #        signatureInformation = {
  #          activeParameterSupport = true,
  #          documentationFormat = { "markdown", "plaintext" },
  #          parameterInformation = {
  #            labelOffsetSupport = true
  #          }
  #        }
  #      },
  #      synchronization = {
  #        didSave = true,
  #        dynamicRegistration = false,
  #        willSave = true,
  #        willSaveWaitUntil = true
  #      },
  #      typeDefinition = {
  #        linkSupport = true
  #      }
  #    },
  #    window = {
  #      showDocument = {
  #        support = true
  #      },
  #      showMessage = {
  #        messageActionItem = {
  #          additionalPropertiesSupport = false
  #        }
  #      },
  #      workDoneProgress = true
  #    },
  #    workspace = {
  #      applyEdit = true,
  #      configuration = true,
  #      didChangeConfiguration = {
  #        dynamicRegistration = false
  #      },
  #      didChangeWatchedFiles = {
  #        dynamicRegistration = true,
  #        relativePatternSupport = true
  #      },
  #      inlayHint = {
  #        refreshSupport = true
  #      },
  #      semanticTokens = {
  #        refreshSupport = true
  #      },
  #      symbol = {
  #        dynamicRegistration = false,
  #        symbolKind = {
  #          valueSet = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 }
  #        }
  #      },
  #      workspaceEdit = {
  #        resourceOperations = { "rename", "create", "delete" }
  #      },
  #      workspaceFolders = true
  #    }
  #  }
  #      }
  #'';
}
