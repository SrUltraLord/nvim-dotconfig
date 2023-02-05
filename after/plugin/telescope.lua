local m = require"ul.maps"

m.map("n", "<c-p>", "<CMD>Telescope find_files<CR>")
m.map("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
m.map("n", "<leader>ft", "<CMD>Telescope live_grep<CR>")

require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" },
  }
}
