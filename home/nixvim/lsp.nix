{ pkgs, ... }:

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

    # Runs once per buffer when a server attaches.
    # `client` and `bufnr` are provided automatically by Nixvim.
    onAttach = ''
      if client:supports_method("textDocument/completion") then
        vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
      end
    '';
  };

  keymaps = [
    {
      mode = "i";
      key = "<C-Space>";
      action = "<Cmd>lua vim.lsp.completion.get()<CR>";
      options.desc = "Trigger completion manually";
    }
    {
      mode = "i";
      key = "<Tab>";
      action.__raw = ''
        function()
          if vim.fn.pumvisible() == 1 then
            return "<C-n>"
          else
            return "<Tab>"
          end
        end
      '';
      options = {
        expr = true;
        desc = "Next completion item";
      };
    }
    {
      mode = "i";
      key = "<S-Tab>";
      action.__raw = ''
        function()
          if vim.fn.pumvisible() == 1 then
            return "<C-p>"
          else
            return "<S-Tab>"
          end
        end
      '';
      options = {
        expr = true;
        desc = "Previous completion item";
      };
    }
    {
      mode = "i";
      key = "<CR>";
      action.__raw = ''
        function()
          if vim.fn.pumvisible() == 1 then
            return "<C-y>"
          else
            return "<CR>"
          end
        end
      '';
      options = {
        expr = true;
        desc = "Confirm completion / normal Enter";
      };
    }
    {
      mode = "i";
      key = "<C-e>";
      action.__raw = ''
        function()
          if vim.fn.pumvisible() == 1 then
            return "<C-e>"
          else
            return "<C-e>"
          end
        end
      '';
      options = {
        expr = true;
        desc = "Abort completion";
      };
    }
  ];

  extraConfigLua = ''
    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = false,
    })
  '';
}
