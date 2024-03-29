{inputs, ...}: let
  colorScheme = inputs.nix-colors.colorSchemes.${inputs.nix-config.colorScheme};
in {
  colorschemes = {
    base16 = {
      enable = true;
      colorscheme = {
        base00 = "#${colorScheme.palette.base00}";
        base01 = "#${colorScheme.palette.base01}";
        base02 = "#${colorScheme.palette.base02}";
        base03 = "#${colorScheme.palette.base03}";
        base04 = "#${colorScheme.palette.base04}";
        base05 = "#${colorScheme.palette.base05}";
        base06 = "#${colorScheme.palette.base06}";
        base07 = "#${colorScheme.palette.base07}";
        base08 = "#${colorScheme.palette.base08}";
        base09 = "#${colorScheme.palette.base09}";
        base0A = "#${colorScheme.palette.base0A}";
        base0B = "#${colorScheme.palette.base0B}";
        base0C = "#${colorScheme.palette.base0C}";
        base0D = "#${colorScheme.palette.base0D}";
        base0E = "#${colorScheme.palette.base0E}";
        base0F = "#${colorScheme.palette.base0F}";
      };
    };
  };
}
