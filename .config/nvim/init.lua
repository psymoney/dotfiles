-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- auto format on save
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*",
  command = "silent! write",
})
