local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

-- Editing maps
map("n", "<c-s>", "<CMD>Sort<CR>") -- Sorts
map("n", "<c-x>", "<CMD>BufferClose<CR>") -- Close tabs

-- Lazygit in floatterm
map("n", "<c-g>", "<CMD>FloatermNew lazygit<CR>")

return {
  map = map
}
