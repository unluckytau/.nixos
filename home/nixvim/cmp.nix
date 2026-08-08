{ ... }:

{
  opts = {
    completeopt = [ "menuone" "noselect" "popup" "fuzzy" ];
    pumheight = 10;
  };

  autoCmd = [
    {
      event = "LspAttach";
      desc = "Enable native LSP completion";
      callback = {
        __raw = ''
          function(args)
            local client = vim.lsp.get_client_by_id(args.data.client_id)
            if client and client:supports_method("textDocument/completion") then
              vim.lsp.completion.enable(true, client.id, args.buf, {
                autotrigger = true,
              })
            end
          end
        '';
      };
    }
  ];

  keymaps = [
    {
      mode = "i";
      key = "<C-Space>";
      action = { __raw = "vim.lsp.completion.get"; };
      options.desc = "Trigger completion manually";
    }
    {
      mode = "i";
      key = "<Tab>";
      action = {
        __raw = ''
          function()
            if vim.fn.pumvisible() == 1 then
              return "<C-n>"
            elseif vim.snippet.active({ direction = 1 }) then
              return "<Cmd>lua vim.snippet.jump(1)<CR>"
            else
              return "<Tab>"
            end
          end
        '';
      };
      options = {
        expr = true;
        desc = "Next completion item / snippet jump forward";
      };
    }
    {
      mode = "i";
      key = "<S-Tab>";
      action = {
        __raw = ''
          function()
            if vim.fn.pumvisible() == 1 then
              return "<C-p>"
            elseif vim.snippet.active({ direction = -1 }) then
              return "<Cmd>lua vim.snippet.jump(-1)<CR>"
            else
              return "<S-Tab>"
            end
          end
        '';
      };
      options = {
        expr = true;
        desc = "Previous completion item / snippet jump back";
      };
    }
  ];
}
