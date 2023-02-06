local m = require "ul.maps"

m.map('n', 'gT', '<Cmd>BufferPrevious<CR>')
m.map('n', 'gt', '<Cmd>BufferNext<CR>')

m.map("n", "<c-x>", "<CMD>BufferClose<CR>") -- Close tabs
m.map("n", "<leader>ct", "<CMD>BufferClose<CR>") -- Close tabs
m.map('n', '<leader>ctbc', '<Cmd>BufferCloseAllButCurrent<CR>')
m.map('n', '<leader>ctr', '<Cmd>BufferCloseBuffersRight<CR>')

m.map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>')
m.map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>')
m.map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>')
m.map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>')
m.map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>')
m.map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>')
m.map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>')
m.map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>')
m.map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>')
