{ pkgs, inputs, ... }:

{
	programs.nixvim = {
		enable = true;
		nixpkgs.config.allowUnfree = true;
		defaultEditor = true;
		clipboard.register = "unnamedplus";
		clipboard.providers.xclip.enable = true;
		
		plugins = {
			web-devicons.enable = true;
			mini-statusline.enable = true;
      indent-blankline.enable = true;
			nvim-autopairs.enable = true;
      blink-cmp.enable = true;
		};

		extraPlugins = [
    	(pkgs.vimUtils.buildVimPlugin {
      	name = "ember-theme";
      	src = inputs.ember-theme;
      })
    ];
		colorscheme = "ember";

		imports = [
			./opts.nix
			./keymaps.nix
      ./treesitter.nix
      ./lsp.nix
			./toggleterm.nix
		];
	};
}
