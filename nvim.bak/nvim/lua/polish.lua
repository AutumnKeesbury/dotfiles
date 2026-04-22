-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- luasnip

local ls = require "luasnip"

vim.keymap.set({ "i" }, "<C-Tab>", function() ls.expand() end, { silent = true })
vim.keymap.set({ "i", "s" }, "<S-Tab>", function() ls.jump(1) end, { silent = true })
vim.keymap.set({ "i", "s" }, "<S-Tab>", function() ls.jump(-1) end, { silent = true })
vim.keymap.set({ "i", "s" }, "<Tab>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  else
    ls.jump(1)
  end
end, { silent = true })

-- Load snippets from ~/.config/nvim/LuaSnip/
ls.config.setup { -- Setting LuaSnip config
  -- Enable autotriggered snippets
  enable_autosnippets = true,
}

-- Load all snippets from the nvim/LuaSnip directory at startup
require("luasnip.loaders.from_lua").load { path = "~/.config/nvim/LuaSnip/" }

-- Lazy-load snippets, i.e. only load when required, e.g. for a given filetype
require("luasnip.loaders.from_lua").lazy_load { path = "~/.config/nvim/LuaSnip/" }

-- vimtex
-- From: https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt#L4671-L4713
vim.o.foldmethod = "expr"
vim.o.foldexpr = "vimtex#fold#level(v:lnum)"
vim.o.foldtext = "vimtex#fold#text()"
-- vim.cmd[[
--    autocmd! BufWritePost *.tex normal ,ll
--]]
-- I like to see at least the content of the sections upon opening
vim.o.foldlevel = 2

vim.g.maplocalleader = ","

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}
