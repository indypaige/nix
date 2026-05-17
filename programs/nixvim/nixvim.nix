{ pkgs, ... }:

let luaHi = builtins.readFile ./hi.lua;
in {
  extraConfigLuaPre = luaHi;

  extraPlugins      = with pkgs; [ vimPlugins.gruber-darker-nvim ];

  colorscheme       = "gruber-darker";

  globals           = {
    mapleader = " ";
  };

  keymaps           = [
		{
			key    = "<leader>pv";
			mode   = "n";
			action = "<CMD>Oil<CR>";
		}

		{
			key    = "<leader>a";
			mode   = "n";
			action = "<CMD>lua require('harpoon'):list():add()<CR>";
		}

		{
			key    = "<C-q>";
			mode   = "n";
			action = "<CMD>lua require('harpoon'):list():prev()<CR>";
		}

		{
			key    = "<C-p>";
			mode   = "n";
			action = "<CMD>lua require('harpoon'):list():next()<CR>";
		}

		{
			key    = "<C-e>";
			mode   = "n";
			action = "<CMD>lua require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())<CR>";
		}

    {
      key    = "<C-r>";
      mode   = "n";
      action = "<CMD>lua open_repl(0, 13)<CR>";
    }

    {
      key    = "<C-i>";
      mode   = "n";
      action = "<CMD>lua open_id(0, 80)<CR>";
    }
	];

  plugins           = {
    web-devicons.enable = true;

    treesitter          = {
      grammarPackages = with pkgs
        .vimPlugins
        .nvim-treesitter
	.builtGrammars; [ haskell rust nix ];

      settings        = {
        indent.enable = true;

        highlight     = {
          additional_vim_regex_highlighting = true;

          disable                           = [
            "nix"
          ];

          enable                            = true;
        };
      };

      enable          = true;
    };

    harpoon             = {
      enable = true;
    };

    oil                 = {
      enable = true;
    };
  };

  opts                = {
	  relativenumber = true;
	  background     = "dark";
	  shiftwidth     = 8;
	  expandtab      = true;
	  tabstop        = 8;
	  number         = true;
  };
}
