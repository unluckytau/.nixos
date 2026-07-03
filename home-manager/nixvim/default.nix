{ config, pkgs, lib, inputs, ... }:

{
	programs.nixvim = {
		enable = true;
		defaultEditor = true;
		clipboard.register = "unnamedplus";
		clipboard.providers.xclip.enable = true;

		plugins = {
			web-devicons.enable = true;
			mini-pick.enable = true;
			mini-statusline.enable = true;
			nvim-autopairs.enable = true;
			friendly-snippets.enable = true;
			luasnip.enable = true;
		};

		extraPlugins = [
			(pkgs.vimUtils.buildVimPlugin {
				name = "ember-theme";
				src = inputs.ember-theme;
			})
		];
		colorscheme = "ember";

		imports = [
			./settings.nix
			./keymaps.nix
			./treesitter.nix
			./lsp.nix
			./cmp.nix
			./toggleterm.nix
		];
	};
}
