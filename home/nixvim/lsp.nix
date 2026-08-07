{ ... }:

{
  lsp = {
    enable = true;
    servers = {
      clangd.enable = true;
      rust_analyzer = {
        enable = true;
        package = null;
      };
      pyright.enable = true;
      nil_ls.enable = true;
      marksman.enable = true;
    };
  };
}
