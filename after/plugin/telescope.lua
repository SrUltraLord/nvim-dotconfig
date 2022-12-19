local m = require"ul.maps"

m.map("n", "<leader>ff", "<CMD>Telescope find_files<CR>")
m.map("n", "<leader>fb", "<CMD>Telescope file_browser<CR>")

require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" },
  }
}
