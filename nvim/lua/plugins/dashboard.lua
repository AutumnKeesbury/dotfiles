return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dashboard = {

      sections = {
        { 
          section = "terminal",
          cmd = "pokemon-colorscripts -n venusaur --no-title",
          indent = 10,
          height = 20,
          padding = 2,
        },
        { section = "keys", gap = 1, padding = 1 },
        { pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        {
          pane = 2,
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
        {
          pane = 2,
          section = "terminal",
          cmd = "pokemon-colorscripts -n bulbasaur --no-title",
          indent = 20,
          height = 15,
          padding = 2,
        },
        { section = "startup" },
      },
    },
    bigfile = { enabled = true },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  }
}
