{ ... }:

{
	keymaps = [
		{
    	mode = "n";
    	key = "<leader>sh";
    	action = "<C-w>h";
    	options = {
      	desc = "go to left split";
      	silent = true;
    	};
    }
		{
    	mode = "n";
    	key = "<leader>sj";
    	action = "<C-w>j";
    	options = {
      	desc = "go to bottom split";
      	silent = true;
    	};
    }
		{
    	mode = "n";
    	key = "<leader>sk";
    	action = "<C-w>k";
    	options = {
      	desc = "go to top split";
      	silent = true;
    	};
    }
		{
    	mode = "n";
    	key = "<leader>sl";
    	action = "<C-w>l";
    	options = {
      	desc = "go to right split";
      	silent = true;
    	};
    }
	];
}
