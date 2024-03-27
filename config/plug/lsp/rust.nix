{
  plugins = {
    rustaceanvim = {
      enable = true;
      server.onAttach = ''
        function(client, bufnr)
          client.server_capabilities.semanticTokensProvider = nil
        end,
      '';
    };
    crates-nvim.enable = true;
  };
}
