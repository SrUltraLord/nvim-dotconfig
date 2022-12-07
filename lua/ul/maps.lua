local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

-- Lazygit in floatterm
map("n", "<c-g>", "<CMD>FloatermNew lazygit<CR>")

-- Keybindings for Nerd tree
map("n", "<c-b>", "<CMD>NvimTreeToggle<CR>")

-- Keybindings for telescope
map("n", "<c-p>", "<CMD>Telescope find_files<CR>")
-- map("n", "<leader>fb", "<CMD>Telescope file_browser<CR>")
