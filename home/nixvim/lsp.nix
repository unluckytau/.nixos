{ ... }:

{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    capabilities = ''
      capabilities.textDocument.completion.completionItem.snippetSupport = true;
    '';

    servers = {
      clangd.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
        installRustfmt = true;
        settings.check.command = "clippy";
      };
      basedpyright.enable = true;
      nixd.enable = true;
      marksman.enable = true;
    };

    keymaps = {
      silent = true;
      diagnostic = {
        "<leader>e" = "open_float";
        "[d" = "goto_prev";
        "]d" = "goto_next";
      };
      lspBuf = {
        gd = "definition";
        gD = "declaration";
        gi = "implementation";
        gr = "references";
        K = "hover";
        "<leader>rn" = "rename";
        "<leader>ca" = "code_action";
      };
    };
  };
}
