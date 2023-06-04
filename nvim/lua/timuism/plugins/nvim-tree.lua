local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended setting from nvim-tree docs:
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- change arrow color
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3fc5ff ]])

nvimtree.setup({
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "→",
					arrow_open = "↓",
				},
			},
		},
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	git = {
		ignore = false,
	},
})
