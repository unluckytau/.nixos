{ ... }:

{
  plugins.lsp = {
    enable = true;

    servers = {
      clangd.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      pyright.enable = true;
      nil_ls = {
        enable = true;
        settings = {
          nix.flake.autoArchive = false;
        };
      };
      marksman.enable = true;
    };
  };

  extraConfigLua = ''
    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = false,
    })
  '';
}
