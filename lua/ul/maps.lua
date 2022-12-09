local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end
local opts = { noremap = true, silent = true }

-- Lazygit in floatterm
map("n", "<c-g>", "<CMD>FloatermNew lazygit<CR>")

-- Nerd tree
map("n", "<c-b>", "<CMD>NvimTreeToggle<CR>")

-- Telescope
map("n", "<c-p>", "<CMD>Telescope find_files<CR>")
-- map("n", "<leader>fb", "<CMD>Telescope file_browser<CR>")

-- Bar Bar
-- Move to previous/next
map('n', 'gT', '<Cmd>BufferPrevious<CR>', opts)
map('n', 'gt', '<Cmd>BufferNext<CR>', opts)

