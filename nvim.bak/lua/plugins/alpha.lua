return {

	"goolord/alpha-nvim",
	event = "VimEnter",
	enabled = true,
	init = false,
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.type = "group"
		dashboard.section.header.val = {
			{ type = "text", val = " █████╗ ██╗   ██╗████████╗██╗   ██╗███╗   ███╗███╗   ██╗ ███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗", opts = { hl = "NeovimDashboardLogo1", shrink_margin = false, position = "center" }, },
			{ type = "text", val = "██╔══██╗██║   ██║╚══██╔══╝██║   ██║████╗ ████║████╗  ██║ ██╔════╝██╔═══██╗██║   ██║██║████╗ ████║", opts = { hl = "NeovimDashboardLogo2", shrink_margin = false, position = "center" }, },
			{ type = "text", val = "███████║██║   ██║   ██║   ██║   ██║██╔████╔██║██╔██╗ ██║ █████╗  ██║   ██║██║   ██║██║██╔████╔██║", opts = { hl = "NeovimDashboardLogo3", shrink_margin = false, position = "center" }, },
			{ type = "text", val = "██╔══██║██║   ██║   ██║   ██║   ██║██║╚██╔╝██║██║╚██╗██║ ██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║", opts = { hl = "NeovimDashboardLogo4", shrink_margin = false, position = "center" }, },
			{ type = "text", val = "██║  ██║╚██████╔╝   ██║   ╚██████╔╝██║ ╚═╝ ██║██║ ╚████║ ███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║", opts = { hl = "NeovimDashboardLogo5", shrink_margin = false, position = "center" }, },
			{ type = "text", val = "╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝", opts = { hl = "NeovimDashboardLogo6", shrink_margin = false, position = "center" }, },
			{ type = "padding", val = 1, },
			{ type = "text", val = "Autumn's NeoVIM (◕‿◕✿)", opts = { hl = "NeovimDashboardUsername", shrink_margin = false, position = "center" }, },
		}
		dashboard.section.buttons.val = {
			dashboard.button("f", "  Find file", ":Telescope find_files hidden=true no_ignore=true<CR>"),
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
			dashboard.button("u", "  Update plugins", ":Lazy sync<CR>"),
			dashboard.button("r", "⧗  Recently opened files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("l", "☭  Open last session", "<cmd>RestoreSession<CR>"),
			dashboard.button("q", "✌  Quit", ":qa<CR>")
		}
		-- Define and set highlight groups for each logo line
		vim.api.nvim_set_hl(0, "NeovimDashboardLogo1", { fg = "#9d0208" }) -- Red
		vim.api.nvim_set_hl(0, "NeovimDashboardLogo2", { fg = "#d00000" }) -- Red-Orange
		vim.api.nvim_set_hl(0, "NeovimDashboardLogo3", { fg = "#dc2f02" }) -- Orange-red
		vim.api.nvim_set_hl(0, "NeovimDashboardLogo4", { fg = "#e85d04" }) -- Orange-Yellow
		vim.api.nvim_set_hl(0, "NeovimDashboardLogo5", { fg = "#f48c06" }) -- Yellow-Orange
		vim.api.nvim_set_hl(0, "NeovimDashboardLogo6", { fg = "#faa307" }) -- Yellow
		vim.api.nvim_set_hl(0, "NeovimDashboardUsername", { fg = "#ffc971" }) -- Faded Red
		-- stylua: ignore
		vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#311B92" })       -- Dark Indigo
		vim.api.nvim_set_hl(0, "AlphaShortcut", { fg = "#8BC34A" })     -- Greenish
		vim.api.nvim_set_hl(0, "AlphaFooter", { fg = "#edd691" })

		dashboard.section.header.opts.hl = "AlphaHeader"
		dashboard.section.footer.opts.hl = "AlphaFooter"
		dashboard.opts.layout[1].val = 3

		alpha.setup(dashboard.opts)

		return dashboard
	end
}
