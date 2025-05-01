return {
	{
		'ThePrimeagen/harpoon',
		config = function()
			vim.keymap.set("n", "<leader>a", require('harpoon.mark').add_file)
			vim.keymap.set("n", "<leader>hh", require('harpoon.ui').toggle_quick_menu)
			vim.keymap.set("n", "<leader>h1", function() require('harpoon.ui').nav_file(1)end)
			vim.keymap.set("n", "<leader>h2", function() require('harpoon.ui').nav_file(2)end)
			vim.keymap.set("n", "<leader>h3", function() require('harpoon.ui').nav_file(3)end)
			vim.keymap.set("n", "<leader>h4", function() require('harpoon.ui').nav_file(4)end)
		end

	}
}
