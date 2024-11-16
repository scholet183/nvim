require("tim.remap")
print("hi from tim")
vim.opt.clipboard = 'unnamedplus'
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.mouse = 'a'

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.spelllang = 'de'
vim.opt.spell = true

-- Lua-Funktion zum Starten von browser-sync
function StartBrowserSync()
  local cmd = "browser-sync start --server --files '*.html, *.css, *.js'"
  vim.fn.jobstart(cmd, { detach = true })
end

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.htm*",
    command = "0r ~/AppData/Local/nvim/templates/html_template.html"
})
