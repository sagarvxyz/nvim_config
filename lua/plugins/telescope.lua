return {
	'nvim-telescope/telescope.nvim',
	tag='0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{ mode = { "n" }, "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files respecting .gitignore" },
		{ mode = { "n" }, "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find files tracked in git, respecting .gitignore" },
		{ mode = { "n" }, "<leader>fs", function() require("telescope.builtin").grep_string( { search = vim.fn.input("Grep > ") }) end}
	}
}
