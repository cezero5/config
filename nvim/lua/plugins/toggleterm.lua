-- ~/.config/nvim/lua/toggleterm.lua
return {
  "akinsho/toggleterm.nvim",  -- El plugin para la terminal flotante
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-z>]],  -- Atajo para abrir el terminal (Ctrl + \)
      direction = 'float',       -- El terminal será flotante
      size = 20,                 -- Tamaño del terminal flotante
      shell = '/bin/zsh',        -- Usar Zsh como shell predeterminado
    })
  end
}

