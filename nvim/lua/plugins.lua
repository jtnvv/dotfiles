-- Automatically run: PackerCompile
vim.api.nvim_create_autocmd("BufWritePost", {
	group = vim.api.nvim_create_augroup("PACKER", { clear = true }),
	pattern = "plugins.lua",
	command = "source <afile> | PackerCompile",
})

return require("packer").startup(function(use)
	-- Packer
	use ('wbthomason/packer.nvim')
  
  -- icons
  use ('nvim-tree/nvim-web-devicons')

  -- tree file manager
  use({
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  })

  -- lua line
  use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-web-devicons" },
	})

  -- terminal
  use "akinsho/toggleterm.nvim"

  -- lsp

end)
