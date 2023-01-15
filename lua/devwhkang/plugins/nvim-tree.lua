local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#E6C384 ]])

-- auto close를 위한 최소한의 코드(주의. 복잡한 nvim 설정에서 잘 안될 수 있음)
vim.api.nvim_create_autocmd("BufEnter", {
	nested = true,
	callback = function()
		if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
			vim.cmd("quit")
		end
	end,
})

nvimtree.setup({
	open_on_setup = true, -- 폴더에서 nvim으로 열때 자동 오픈
	open_on_setup_file = true, -- 파일을 nivm으로 열때 자동 오픈
	update_focused_file = { -- telescope등으로 찾아서 오픈 할 때 자동 포커스
		enable = true,
	},
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "",
					arrow_open = "",
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
})
