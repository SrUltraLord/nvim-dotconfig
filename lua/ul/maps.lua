local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

-- Editing maps
map("n", "<c-s>", "<CMD>Sort<CR>") -- Sorts
map("n", "<c-x>", "<CMD>BufferClose<CR>") -- Close tabs

-- Lazygit in floatterm
map("n", "<c-g>", "<CMD>FloatermNew lazygit<CR>")

-- Nerd tree
map("n", "<c-b>", "<CMD>NvimTreeToggle<CR>")

-- Telescope
map("n", "<c-p>", "<CMD>Telescope find_files<CR>")
-- map("n", "<leader>fb", "<CMD>Telescope file_browser<CR>")

-- Bar Bar
-- Move to previous/next
map('n', 'gT', '<Cmd>BufferPrevious<CR>')
map('n', 'gt', '<Cmd>BufferNext<CR>')

