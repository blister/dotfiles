local overrides = {}

overrides.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		root_folder_label = ":~:s?$?/..?",
		highlight_git = true,
		indent_width = 3,
		highlight_opened_files = "icon",
		highlight_modified = "all",
		icons = {
			show = {
				git = true,
			},
		},
	},

	actions = {
		open_file = {
			quit_on_open = true,
			resize_window = true,
		}
	}

}

return overrides
