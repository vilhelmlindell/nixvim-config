{
  plugins = {
    rustaceanvim = {
      enable = false;
      server.onAttach = ''
        function(client, bufnr)
          client.server_capabilities.semanticTokensProvider = nil
        end,
      '';
    };
    crates-nvim.enable = true;
  };
}
