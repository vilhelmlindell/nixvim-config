{
  plugins.conform-nvim = {
    enable = true;
    formatOnSave = {
      lspFallback = true;
      timeoutMs = 500;
    };
    notifyOnError = true;
    formattersByFt = {
      liquidsoap = ["liquidsoap-prettier"];
      html = [["prettierd" "prettier"]];
      css = [["prettierd" "prettier"]];
      javascript = [["prettierd" "prettier"]];
      javascriptreact = [["prettierd" "prettier"]];
      typescript = [["prettierd" "prettier"]];
      typescriptreact = [["prettierd" "prettier"]];
      python = ["black"];
      java = ["google-java-format"];
      lua = ["stylua"];
      csharp = ["csharpier"];
      rust = ["rustfmt"];
      markdown = [["prettierd" "prettier"]];
      yaml = ["yamllint" "yamlfmt"];
      haskell = ["fourmolu"];
      go = ["gofmt"];
    };
  };
}
