-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git" ,"--branch=stable", lazypath })

end
vim.opt.rtp:prepend(lazypath)

-- Habilitar el resaltado de sintaxis
vim.cmd('syntax on')

-- Habilitar la detección de tipos de archivo y plugins asociados
vim.cmd('filetype plugin indent on')

require("lazy").setup("plugins")
require("vim-options")


-- Configuraciones específicas para archivos COBOL
vim.cmd([[
  autocmd FileType cobol setlocal expandtab shiftwidth=4 softtabstop=4
]])


