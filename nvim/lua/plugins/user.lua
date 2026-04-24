-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- customize alpha options
--   {
--     "goolord/alpha-nvim",
--     opts = function(_, opts)
--       -- customize the dashboard header
--       opts.section.header.type = "group"
--       opts.section.header.val = {
--         {
--           type = "text",
--           val = " ██████   █████                   █████   █████ █████ ██████   ██████",
--           opts = { hl = "NeovimDashboardLogo1", shrink_margin = false, position = "center" },
--         },
--         {
--           type = "text",
--           val = "░░██████ ░░███                   ░░███   ░░███ ░░███ ░░██████ ██████ ",
--           opts = { hl = "NeovimDashboardLogo2", shrink_margin = false, position = "center" },
--         },
--         {
--           type = "text",
--           val = " ░███░███ ░███   ██████   ██████  ░███    ░███  ░███  ░███░█████░███ ",
--           opts = { hl = "NeovimDashboardLogo3", shrink_margin = false, position = "center" },
--         },
--         {
--           type = "text",
--           val = " ░███░░███░███  ███░░███ ███░░███ ░███    ░███  ░███  ░███░░███ ░███ ",
--           opts = { hl = "NeovimDashboardLogo4", shrink_margin = false, position = "center" },
--         },
--         {
--           type = "text",
--           val = " ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░░░  ░███ ",
--           opts = { hl = "NeovimDashboardLogo5", shrink_margin = false, position = "center" },
--         },
--         {
--           type = "text",
--           val = " ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███      ░███ ",
--           opts = { hl = "NeovimDashboardLogo6", shrink_margin = false, position = "center" },
--         },
--         {
--             type = "text",
--             val = " █████  ░░█████░░██████ ░░██████     ░░███      █████ █████     █████",
--             opts = { hl  = "NeovimDashboardLogo7", shrink_margin = false, position = "center"},
--         },
--         {
--             type = "text",
--             val = "░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░     ░░░░░ ",
--             opts = { hl  = "NeovimDashboardLogo8", shrink_margin = false, position = "center"},
--         },
--         { type = "padding", val = 2 },
--         {
--           type = "text",
--           val = "Autumn's NeoVIM (◕‿◕✿)",
--           opts = { hl = "NeovimDashboardUsername", shrink_margin = false, position = "center" },
--         },
--       }
--       -- Define and set highlight groups for each logo line
--       vim.api.nvim_set_hl(0, "NeovimDashboardLogo1", { fg = "#9d0208" }) -- Red
--       vim.api.nvim_set_hl(0, "NeovimDashboardLogo2", { fg = "#bb0c02" }) 
--       vim.api.nvim_set_hl(0, "NeovimDashboardLogo3", { fg = "#d92202" }) 
--       vim.api.nvim_set_hl(0, "NeovimDashboardLogo4", { fg = "#f73d02" }) 
--       vim.api.nvim_set_hl(0, "NeovimDashboardLogo5", { fg = "#fe6619" }) 
--       vim.api.nvim_set_hl(0, "NeovimDashboardLogo6", { fg = "#fe8c36" }) 
--       vim.api.nvim_set_hl(0, "NeovimDashboardLogo7", { fg = "#ffad53" }) 
--       vim.api.nvim_set_hl(0, "NeovimDashboardLogo8", { fg = "#ffc971" }) -- Yellow
--       vim.api.nvim_set_hl(0, "NeovimDashboardUsername", { fg = "#ffc971" }) -- Faded Red
-- 		-- stylua: ignore
-- 		vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#311B92" })       -- Dark Indigo
--       vim.api.nvim_set_hl(0, "AlphaShortcut", { fg = "#8BC34A" }) -- Greenish
--       vim.api.nvim_set_hl(0, "AlphaFooter", { fg = "#edd691" })
--       return opts
--     end,
--   },
-- }

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },
  
  {
    "iurimateus/luasnip-latex-snippets.nvim",
    config = function()
        require("luasnip-latex-snippets").setup { use_treesitter = true }
        -- or setup({)
        require("luasnip").config.setup { enable_autosnippets = true }
    end,
},

}
