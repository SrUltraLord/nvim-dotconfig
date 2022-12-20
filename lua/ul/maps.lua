local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

-- Editing maps
map("n", "<c-s>", "<CMD>Sort<CR>") -- Sorts

-- Lazygit in floatterm
map("n", "<c-g>", "<CMD>FloatermNew lazygit<CR>")

return {
  map = map
}
