local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

-- Reload config
map("n", "<leader>r", "<CMD>source $MYVIMRC<CR>") -- Sorts

-- Editing maps
map("n", "<c-s>", "<CMD>w<CR>")
map("n", "<c-\\>", "<CMD>vs<CR>") -- Splits Vertical
map("n", "<leader>s", "<CMD>Sort<CR>") -- Sorts

-- Splits Mgmt
map("n", "<c-h>", "<c-w>h");
map("n", "<c-j>", "<c-w>j");
map("n", "<c-k>", "<c-w>k");
map("n", "<c-l>", "<c-w>l");

map("n", "<c-Left>", "<CMD>:vertical resize +3<CR>");
map("n", "<c-Right>", "<CMD>:vertical resize -3<CR>");
map("n", "<c-Up>", "<CMD>:resize +3<CR>");
map("n", "<c-Down>", "<CMD>:resize -3<CR>");

-- Lazygit in floatterm
map("n", "<c-`>", "<CMD>FloatermNew<CR>")
map("n", "<c-g>", "<CMD>FloatermNew lazygit<CR>")

return {
  map = map
}
