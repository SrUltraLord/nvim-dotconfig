local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

-- Reload config
map("n", "<c-r>", "<CMD>e $MYVIMRC<CR>") -- Sorts

-- Editing maps
map("n", "<c-s>", "<CMD>Sort<CR>") -- Sorts
map("n", "<c-\\>", "<CMD>vs<CR>")  -- Splits Vertical

-- Lazygit in floatterm
map("n", "<c-`>", "<CMD>FloatermNew<CR>")
map("n", "<c-g>", "<CMD>FloatermNew lazygit<CR>")

return {
  map = map
}
