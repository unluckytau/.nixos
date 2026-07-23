{ config, pkgs, lib, ... }:

{
	globals = {
		mapleader = " ";
		maplocalleader = " ";
		have_nerd_font = true;
		loaded_netrw = 1;
		loaded_netrwPlugin = 1;
	};

	opts = {
		number = true;
		relativenumber = true;
		cmdheight = 0;
		signcolumn = "yes";
		splitright = true;
		splitbelow = true;
		list = true;
		listchars = { tab = "  "; trail = " "; nbsp = "␣"; };
		cursorline = true;
		mouse = "a";
		termguicolors = true;
		showmode = false;
		wrap = false;
		tabstop = 2;
		shiftwidth = 2;
		swapfile = false;
		inccommand = "split";
		winborder = "rounded";
	};

	highlight = {
		StatusLine = { bg = "NONE"; };
	};
}
