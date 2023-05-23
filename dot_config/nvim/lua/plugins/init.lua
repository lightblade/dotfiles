return {
  "nvim-lua/plenary.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",

  "mrjones2014/legendary.nvim",

}
-- vim-illuminate
-- nvim-dap
-- nvim-dap-ui
-- project.nvim
-- LSP
-- bufferline.nvim
-- flit.nvim
-- mini.bufremove
-- neo-tree.nvim
-- noice.nvim
-- nui
-- nvim-notify
-- nvim-spectre
-- nvim-treesitter
-- persistence.nvim
-- telescope.nvim
-- return {
--   {
--     "nvim-tree/nvim-web-devicons",
--     enabled = vim.g.icons_enabled,
--     opts = {
--       override = {
--         default_icon = { icon = require("astronvim.utils").get_icon "DefaultFile" },
--         deb = { icon = "", name = "Deb" },
--         lock = { icon = "󰌾", name = "Lock" },
--         mp3 = { icon = "󰎆", name = "Mp3" },
--         mp4 = { icon = "", name = "Mp4" },
--         out = { icon = "", name = "Out" },
--         ["robots.txt"] = { icon = "󰚩", name = "Robots" },
--         ttf = { icon = "", name = "TrueTypeFont" },
--         rpm = { icon = "", name = "Rpm" },
--         woff = { icon = "", name = "WebOpenFontFormat" },
--         woff2 = { icon = "", name = "WebOpenFontFormat2" },
--         xz = { icon = "", name = "Xz" },
--         zip = { icon = "", name = "Zip" },
--       },
--     },
--   },
--   {
--     "onsails/lspkind.nvim",
--     opts = {
--       mode = "symbol",
--       symbol_map = {
--         Array = "󰅪",
--         Boolean = "⊨",
--         Class = "󰌗",
--         Constructor = "",
--         Key = "󰌆",
--         Namespace = "󰅪",
--         Null = "NULL",
--         Number = "#",
--         Object = "󰀚",
--         Package = "󰏗",
--         Property = "",
--         Reference = "",
--         Snippet = "",
--         String = "󰀬",
--         TypeParameter = "󰊄",
--         Unit = "",
--       },
--     },
--     enabled = vim.g.icons_enabled,
--     config = require "plugins.configs.lspkind",
--   },
--   {
--     "rcarriga/nvim-notify",
--     init = function() require("astronvim.utils").load_plugin_with_func("nvim-notify", vim, "notify") end,
--     opts = { on_open = function(win) vim.api.nvim_win_set_config(win, { zindex = 1000 }) end },
--     config = require "plugins.configs.notify",
--   },
--   {
--     "stevearc/dressing.nvim",
--     init = function() require("astronvim.utils").load_plugin_with_func("dressing.nvim", vim.ui, { "input", "select" }) end,
--     opts = {
--       input = {
--         default_prompt = "➤ ",
--         win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" },
--       },
--       select = {
--         backend = { "telescope", "builtin" },
--         builtin = { win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" } },
--       },
--     },
--   },
--   {
--     "NvChad/nvim-colorizer.lua",
--     event = "User AstroFile",
--     cmd = { "ColorizerToggle", "ColorizerAttachToBuffer", "ColorizerDetachFromBuffer", "ColorizerReloadAllBuffers" },
--     opts = { user_default_options = { names = false } },
--   },
-- }
-- return {
--   "b0o/SchemaStore.nvim",
--   {
--     "folke/neodev.nvim",
--     opts = {
--       override = function(root_dir, library)
--         for _, astronvim_config in ipairs(astronvim.supported_configs) do
--           if root_dir:match(astronvim_config) then
--             library.plugins = true
--             break
--           end
--         end
--         vim.b.neodev_enabled = library.enabled
--       end,
--     },
--   },
--   {
--     "stevearc/aerial.nvim",
--     event = "User AstroFile",
--     opts = {
--       attach_mode = "global",
--       backends = { "lsp", "treesitter", "markdown", "man" },
--       layout = { min_width = 28 },
--       show_guides = true,
--       filter_kind = false,
--       guides = {
--         mid_item = "├ ",
--         last_item = "└ ",
--         nested_top = "│ ",
--         whitespace = "  ",
--       },
--       keymaps = {
--         ["[y"] = "actions.prev",
--         ["]y"] = "actions.next",
--         ["[Y"] = "actions.prev_up",
--         ["]Y"] = "actions.next_up",
--         ["{"] = false,
--         ["}"] = false,
--         ["[["] = false,
--         ["]]"] = false,
--       },
--     },
--   },
-- }
-- return {
--   "nvim-lua/plenary.nvim",
--   { "AstroNvim/astrotheme", opts = { plugins = { ["dashboard-nvim"] = true } } },
--   { "famiu/bufdelete.nvim", cmd = { "Bdelete", "Bwipeout" } },
--   { "NMAC427/guess-indent.nvim", event = "User AstroFile", config = require "plugins.configs.guess-indent" },
--   { -- TODO: REMOVE neovim-session-manager with AstroNvim v4
--     "Shatur/neovim-session-manager",
--     event = "BufWritePost",
--     cmd = "SessionManager",
--     enabled = vim.g.resession_enabled ~= true,
--   },
--   {
--     "stevearc/resession.nvim",
--     enabled = vim.g.resession_enabled == true,
--     opts = {
--       buf_filter = function(bufnr) return require("astronvim.utils.buffer").is_valid(bufnr) end,
--       tab_buf_filter = function(tabpage, bufnr) return vim.tbl_contains(vim.t[tabpage].bufs, bufnr) end,
--       extensions = { astronvim = {} },
--     },
--   },
--   { "s1n7ax/nvim-window-picker", opts = { use_winbar = "smart" } },
--   {
--     "mrjones2014/smart-splits.nvim",
--     opts = { ignored_filetypes = { "nofile", "quickfix", "qf", "prompt" }, ignored_buftypes = { "nofile" } },
--   },
--   {
--     "windwp/nvim-autopairs",
--     event = "InsertEnter",
--     opts = {
--       check_ts = true,
--       ts_config = { java = false },
--       fast_wrap = {
--         map = "<M-e>",
--         chars = { "{", "[", "(", '"', "'" },
--         pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
--         offset = 0,
--         end_key = "$",
--         keys = "qwertyuiopzxcvbnmasdfghjkl",
--         check_comma = true,
--         highlight = "PmenuSel",
--         highlight_grey = "LineNr",
--       },
--     },
--     config = require "plugins.configs.nvim-autopairs",
--   },
--   {
--     "numToStr/Comment.nvim",
--     keys = {
--       { "gc", mode = { "n", "v" }, desc = "Comment toggle linewise" },
--       { "gb", mode = { "n", "v" }, desc = "Comment toggle blockwise" },
--     },
--     opts = function()
--       local commentstring_avail, commentstring = pcall(require, "ts_context_commentstring.integrations.comment_nvim")
--       return commentstring_avail and commentstring and { pre_hook = commentstring.create_pre_hook() } or {}
--     end,
--   },
--   {
--     "akinsho/toggleterm.nvim",
--     cmd = { "ToggleTerm", "TermExec" },
--     opts = {
--       size = 10,
--       on_create = function()
--         vim.opt.foldcolumn = "0"
--         vim.opt.signcolumn = "no"
--       end,
--       open_mapping = [[<F7>]],
--       shading_factor = 2,
--       direction = "float",
--       float_opts = {
--         border = "curved",
--         highlights = { border = "Normal", background = "Normal" },
--       },
--     },
--   },
-- }
-- return {
--   "goolord/alpha-nvim",
--   cmd = "Alpha",
--   opts = function()
--     local dashboard = require "alpha.themes.dashboard"
--     dashboard.section.header.val = {
--       " █████  ███████ ████████ ██████   ██████",
--       "██   ██ ██         ██    ██   ██ ██    ██",
--       "███████ ███████    ██    ██████  ██    ██",
--       "██   ██      ██    ██    ██   ██ ██    ██",
--       "██   ██ ███████    ██    ██   ██  ██████",
--       " ",
--       "    ███    ██ ██    ██ ██ ███    ███",
--       "    ████   ██ ██    ██ ██ ████  ████",
--       "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
--       "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
--       "    ██   ████   ████   ██ ██      ██",
--     }
--     dashboard.section.header.opts.hl = "DashboardHeader"
-- 
--     local button = require("astronvim.utils").alpha_button
--     dashboard.section.buttons.val = {
--       button("LDR n  ", "  New File  "),
--       button("LDR f f", "  Find File  "),
--       button("LDR f o", "󰈙  Recents  "),
--       button("LDR f w", "󰈭  Find Word  "),
--       button("LDR f '", "  Bookmarks  "),
--       button("LDR S l", "  Last Session  "),
--     }
-- 
--     dashboard.config.layout[1].val = vim.fn.max { 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) }
--     dashboard.config.layout[3].val = 5
--     dashboard.config.opts.noautocmd = true
--     return dashboard
--   end,
--   config = require "plugins.configs.alpha",
-- }
-- 
-- return {
--   {
--     "nvim-tree/nvim-web-devicons",
--     enabled = vim.g.icons_enabled,
--     opts = {
--       override = {
--         default_icon = { icon = require("astronvim.utils").get_icon "DefaultFile" },
--         deb = { icon = "", name = "Deb" },
--         lock = { icon = "󰌾", name = "Lock" },
--         mp3 = { icon = "󰎆", name = "Mp3" },
--         mp4 = { icon = "", name = "Mp4" },
--         out = { icon = "", name = "Out" },
--         ["robots.txt"] = { icon = "󰚩", name = "Robots" },
--         ttf = { icon = "", name = "TrueTypeFont" },
--         rpm = { icon = "", name = "Rpm" },
--         woff = { icon = "", name = "WebOpenFontFormat" },
--         woff2 = { icon = "", name = "WebOpenFontFormat2" },
--         xz = { icon = "", name = "Xz" },
--         zip = { icon = "", name = "Zip" },
--       },
--     },
--   },
--   {
--     "stevearc/dressing.nvim",
--     init = function() require("astronvim.utils").load_plugin_with_func("dressing.nvim", vim.ui, { "input", "select" }) end,
--     opts = {
--       input = {
--         default_prompt = "➤ ",
--         win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" },
--       },
--       select = {
--         backend = { "telescope", "builtin" },
--         builtin = { win_options = { winhighlight = "Normal:Normal,NormalNC:Normal" } },
--       },
--     },
--   },
--   {
--     "lukas-reineke/indent-blankline.nvim",
--     event = "User AstroFile",
--     opts = {
--       buftype_exclude = {
--         "nofile",
--         "terminal",
--       },
--       filetype_exclude = {
--         "help",
--         "startify",
--         "aerial",
--         "alpha",
--         "dashboard",
--         "lazy",
--         "neogitstatus",
--         "NvimTree",
--         "neo-tree",
--         "Trouble",
--       },
--       context_patterns = {
--         "class",
--         "return",
--         "function",
--         "method",
--         "^if",
--         "^while",
--         "jsx_element",
--         "^for",
--         "^object",
--         "^table",
--         "block",
--         "arguments",
--         "if_statement",
--         "else_clause",
--         "jsx_element",
--         "jsx_self_closing_element",
--         "try_statement",
--         "catch_clause",
--         "import_statement",
--         "operation_type",
--       },
--       show_trailing_blankline_indent = false,
--       use_treesitter = true,
--       char = "▏",
--       context_char = "▏",
--       show_current_context = true,
--     },
--   },
-- }
--
-- 
-- return {
-- 
--   -- measure startuptime
--   {
--     "dstein64/vim-startuptime",
--     cmd = "StartupTime",
--     config = function()
--       vim.g.startuptime_tries = 10
--     end,
--   },
-- 
--   -- session management
--   {
--     "folke/persistence.nvim",
--     event = "BufReadPre",
--     opts = { options = { "buffers", "curdir", "tabpages", "winsize", "help", "globals" } },
--     -- stylua: ignore
--     keys = {
--       { "<leader>qs", function() require("persistence").load() end, desc = "Restore Session" },
--       { "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
--       { "<leader>qd", function() require("persistence").stop() end, desc = "Don't Save Current Session" },
--     },
--   },
-- 
--   -- library used by other plugins
--   { "nvim-lua/plenary.nvim", lazy = true },
-- 
-- }
-- return {
--   -- Better `vim.notify()`
--   {
--     "rcarriga/nvim-notify",
--     keys = {
--       {
--         "<leader>un",
--         function()
--           require("notify").dismiss({ silent = true, pending = true })
--         end,
--         desc = "Dismiss all Notifications",
--       },
--     },
--     opts = {
--       timeout = 3000,
--       max_height = function()
--         return math.floor(vim.o.lines * 0.75)
--       end,
--       max_width = function()
--         return math.floor(vim.o.columns * 0.75)
--       end,
--     },
--     init = function()
--       -- when noice is not enabled, install notify on VeryLazy
--       local Util = require("lazyvim.util")
--       if not Util.has("noice.nvim") then
--         Util.on_very_lazy(function()
--           vim.notify = require("notify")
--         end)
--       end
--     end,
--   },
-- 
--   -- better vim.ui
--   {
--     "stevearc/dressing.nvim",
--     lazy = true,
--     init = function()
--       ---@diagnostic disable-next-line: duplicate-set-field
--       vim.ui.select = function(...)
--         require("lazy").load({ plugins = { "dressing.nvim" } })
--         return vim.ui.select(...)
--       end
--       ---@diagnostic disable-next-line: duplicate-set-field
--       vim.ui.input = function(...)
--         require("lazy").load({ plugins = { "dressing.nvim" } })
--         return vim.ui.input(...)
--       end
--     end,
--   },
-- 
--   -- bufferline
--   {
--     "akinsho/bufferline.nvim",
--     event = "VeryLazy",
--     keys = {
--       { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
--       { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
--     },
--     opts = {
--       options = {
--         -- stylua: ignore
--         close_command = function(n) require("mini.bufremove").delete(n, false) end,
--         -- stylua: ignore
--         right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
--         diagnostics = "nvim_lsp",
--         always_show_bufferline = false,
--         diagnostics_indicator = function(_, _, diag)
--           local icons = require("lazyvim.config").icons.diagnostics
--           local ret = (diag.error and icons.Error .. diag.error .. " " or "")
--             .. (diag.warning and icons.Warn .. diag.warning or "")
--           return vim.trim(ret)
--         end,
--         offsets = {
--           {
--             filetype = "neo-tree",
--             text = "Neo-tree",
--             highlight = "Directory",
--             text_align = "left",
--           },
--         },
--       },
--     },
--   },
-- 
--   -- statusline
--   {
--     "nvim-lualine/lualine.nvim",
--     event = "VeryLazy",
--     opts = function()
--       local icons = require("lazyvim.config").icons
--       local Util = require("lazyvim.util")
-- 
--       return {
--         options = {
--           theme = "auto",
--           globalstatus = true,
--           disabled_filetypes = { statusline = { "dashboard", "alpha" } },
--         },
--         sections = {
--           lualine_a = { "mode" },
--           lualine_b = { "branch" },
--           lualine_c = {
--             {
--               "diagnostics",
--               symbols = {
--                 error = icons.diagnostics.Error,
--                 warn = icons.diagnostics.Warn,
--                 info = icons.diagnostics.Info,
--                 hint = icons.diagnostics.Hint,
--               },
--             },
--             { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
--             { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
--             -- stylua: ignore
--             {
--               function() return require("nvim-navic").get_location() end,
--               cond = function() return package.loaded["nvim-navic"] and require("nvim-navic").is_available() end,
--             },
--           },
--           lualine_x = {
--             -- stylua: ignore
--             {
--               function() return require("noice").api.status.command.get() end,
--               cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
--               color = Util.fg("Statement"),
--             },
--             -- stylua: ignore
--             {
--               function() return require("noice").api.status.mode.get() end,
--               cond = function() return package.loaded["noice"] and require("noice").api.status.mode.has() end,
--               color = Util.fg("Constant"),
--             },
--             -- stylua: ignore
--             {
--               function() return "  " .. require("dap").status() end,
--               cond = function () return package.loaded["dap"] and require("dap").status() ~= "" end,
--               color = Util.fg("Debug"),
--             },
--             { require("lazy.status").updates, cond = require("lazy.status").has_updates, color = Util.fg("Special") },
--             {
--               "diff",
--               symbols = {
--                 added = icons.git.added,
--                 modified = icons.git.modified,
--                 removed = icons.git.removed,
--               },
--             },
--           },
--           lualine_y = {
--             { "progress", separator = " ", padding = { left = 1, right = 0 } },
--             { "location", padding = { left = 0, right = 1 } },
--           },
--           lualine_z = {
--             function()
--               return " " .. os.date("%R")
--             end,
--           },
--         },
--         extensions = { "neo-tree", "lazy" },
--       }
--     end,
--   },
-- 
-- 
--   -- noicer ui
-- 
--   -- dashboard
-- 
--   -- lsp symbol navigation for lualine
--   {
--     "SmiteshP/nvim-navic",
--     lazy = true,
--     init = function()
--       vim.g.navic_silence = true
--       require("lazyvim.util").on_attach(function(client, buffer)
--         if client.server_capabilities.documentSymbolProvider then
--           require("nvim-navic").attach(client, buffer)
--         end
--       end)
--     end,
--     opts = function()
--       return {
--         separator = " ",
--         highlight = true,
--         depth_limit = 5,
--         icons = require("lazyvim.config").icons.kinds,
--       }
--     end,
--   },
-- 
--   -- icons
--   { "nvim-tree/nvim-web-devicons", lazy = true },
-- 
--   -- ui components
--   { "MunifTanjim/nui.nvim", lazy = true },
-- }
-- return {
--   {
--     "nvim-treesitter/nvim-treesitter",
--     version = false, -- last release is way too old and doesn't work on Windows
--     build = ":TSUpdate",
--     event = { "BufReadPost", "BufNewFile" },
--     dependencies = {
--       {
--         "nvim-treesitter/nvim-treesitter-textobjects",
--         init = function()
--           -- PERF: no need to load the plugin, if we only need its queries for mini.ai
--           local plugin = require("lazy.core.config").spec.plugins["nvim-treesitter"]
--           local opts = require("lazy.core.plugin").values(plugin, "opts", false)
--           local enabled = false
--           if opts.textobjects then
--             for _, mod in ipairs({ "move", "select", "swap", "lsp_interop" }) do
--               if opts.textobjects[mod] and opts.textobjects[mod].enable then
--                 enabled = true
--                 break
--               end
--             end
--           end
--           if not enabled then
--             require("lazy.core.loader").disable_rtp_plugin("nvim-treesitter-textobjects")
--           end
--         end,
--       },
--     },
--     keys = {
--       { "<c-space>", desc = "Increment selection" },
--       { "<bs>", desc = "Decrement selection", mode = "x" },
--     },
--     ---@type TSConfig
--     opts = {
--       highlight = { enable = true },
--       indent = { enable = true },
--       ensure_installed = {
--         "bash",
--         "c",
--         "html",
--         "javascript",
--         "json",
--         "lua",
--         "luadoc",
--         "luap",
--         "markdown",
--         "markdown_inline",
--         "python",
--         "query",
--         "regex",
--         "tsx",
--         "typescript",
--         "vim",
--         "vimdoc",
--         "yaml",
--       },
--       incremental_selection = {
--         enable = true,
--         keymaps = {
--           init_selection = "<C-space>",
--           node_incremental = "<C-space>",
--           scope_incremental = false,
--           node_decremental = "<bs>",
--         },
--       },
--     },
--     ---@param opts TSConfig
--     config = function(_, opts)
--       if type(opts.ensure_installed) == "table" then
--         ---@type table<string, boolean>
--         local added = {}
--         opts.ensure_installed = vim.tbl_filter(function(lang)
--           if added[lang] then
--             return false
--           end
--           added[lang] = true
--           return true
--         end, opts.ensure_installed)
--       end
--       require("nvim-treesitter.configs").setup(opts)
--     end,
--   },
-- }
-- local Util = require("lazyvim.util")
-- 
-- return {
-- 
--   -- file explorer
--   {
--     "nvim-neo-tree/neo-tree.nvim",
--     cmd = "Neotree",
--     keys = {
--       {
--         "<leader>fe",
--         function()
--           require("neo-tree.command").execute({ toggle = true, dir = require("lazyvim.util").get_root() })
--         end,
--         desc = "Explorer NeoTree (root dir)",
--       },
--       {
--         "<leader>fE",
--         function()
--           require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
--         end,
--         desc = "Explorer NeoTree (cwd)",
--       },
--       { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (root dir)", remap = true },
--       { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
--     },
--     deactivate = function()
--       vim.cmd([[Neotree close]])
--     end,
--     init = function()
--       vim.g.neo_tree_remove_legacy_commands = 1
--       if vim.fn.argc() == 1 then
--         local stat = vim.loop.fs_stat(vim.fn.argv(0))
--         if stat and stat.type == "directory" then
--           require("neo-tree")
--         end
--       end
--     end,
--     opts = {
--       filesystem = {
--         bind_to_cwd = false,
--         follow_current_file = true,
--         use_libuv_file_watcher = true,
--       },
--       window = {
--         mappings = {
--           ["<space>"] = "none",
--         },
--       },
--       default_component_configs = {
--         indent = {
--           with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
--           expander_collapsed = "",
--           expander_expanded = "",
--           expander_highlight = "NeoTreeExpander",
--         },
--       },
--     },
--     config = function(_, opts)
--       require("neo-tree").setup(opts)
--       vim.api.nvim_create_autocmd("TermClose", {
--         pattern = "*lazygit",
--         callback = function()
--           if package.loaded["neo-tree.sources.git_status"] then
--             require("neo-tree.sources.git_status").refresh()
--           end
--         end,
--       })
--     end,
--   },
-- 
--   -- search/replace in multiple files
--   {
--     "nvim-pack/nvim-spectre",
--     -- stylua: ignore
--     keys = {
--       { "<leader>sr", function() require("spectre").open() end, desc = "Replace in files (Spectre)" },
--     },
--   },
-- 
--   -- fuzzy finder
-- 
--   -- easily jump to any location and enhanced f/t motions for Leap
--   {
--     "ggandor/flit.nvim",
--     keys = function()
--       ---@type LazyKeys[]
--       local ret = {}
--       for _, key in ipairs({ "f", "F", "t", "T" }) do
--         ret[#ret + 1] = { key, mode = { "n", "x", "o" }, desc = key }
--       end
--       return ret
--     end,
--     opts = { labeled_modes = "nx" },
--   },
--   {
--     "ggandor/leap.nvim",
--     keys = {
--       { "s", mode = { "n", "x", "o" }, desc = "Leap forward to" },
--       { "S", mode = { "n", "x", "o" }, desc = "Leap backward to" },
--       { "gs", mode = { "n", "x", "o" }, desc = "Leap from windows" },
--     },
--     config = function(_, opts)
--       local leap = require("leap")
--       for k, v in pairs(opts) do
--         leap.opts[k] = v
--       end
--       leap.add_default_mappings(true)
--       vim.keymap.del({ "x", "o" }, "x")
--       vim.keymap.del({ "x", "o" }, "X")
--     end,
--   },
-- 
--   -- which-key
--   {
--     "folke/which-key.nvim",
--     event = "VeryLazy",
--     opts = {
--       plugins = { spelling = true },
--       defaults = {
--         mode = { "n", "v" },
--         ["g"] = { name = "+goto" },
--         ["gz"] = { name = "+surround" },
--         ["]"] = { name = "+next" },
--         ["["] = { name = "+prev" },
--         ["<leader><tab>"] = { name = "+tabs" },
--         ["<leader>b"] = { name = "+buffer" },
--         ["<leader>c"] = { name = "+code" },
--         ["<leader>f"] = { name = "+file/find" },
--         ["<leader>g"] = { name = "+git" },
--         ["<leader>gh"] = { name = "+hunks" },
--         ["<leader>q"] = { name = "+quit/session" },
--         ["<leader>s"] = { name = "+search" },
--         ["<leader>u"] = { name = "+ui" },
--         ["<leader>w"] = { name = "+windows" },
--         ["<leader>x"] = { name = "+diagnostics/quickfix" },
--       },
--     },
--     config = function(_, opts)
--       local wk = require("which-key")
--       wk.setup(opts)
--       wk.register(opts.defaults)
--     end,
--   },
-- 
--   -- git signs
-- 
--   -- references
--   {
--     "RRethy/vim-illuminate",
--     event = { "BufReadPost", "BufNewFile" },
--     opts = { delay = 200 },
--     config = function(_, opts)
--       require("illuminate").configure(opts)
-- 
--       local function map(key, dir, buffer)
--         vim.keymap.set("n", key, function()
--           require("illuminate")["goto_" .. dir .. "_reference"](false)
--         end, { desc = dir:sub(1, 1):upper() .. dir:sub(2) .. " Reference", buffer = buffer })
--       end
-- 
--       map("]]", "next")
--       map("[[", "prev")
-- 
--       -- also set it after loading ftplugins, since a lot overwrite [[ and ]]
--       vim.api.nvim_create_autocmd("FileType", {
--         callback = function()
--           local buffer = vim.api.nvim_get_current_buf()
--           map("]]", "next", buffer)
--           map("[[", "prev", buffer)
--         end,
--       })
--     end,
--     keys = {
--       { "]]", desc = "Next Reference" },
--       { "[[", desc = "Prev Reference" },
--     },
--   },
-- 
--   -- buffer remove
--   {
--     "echasnovski/mini.bufremove",
--     -- stylua: ignore
--     keys = {
--       { "<leader>bd", function() require("mini.bufremove").delete(0, false) end, desc = "Delete Buffer" },
--       { "<leader>bD", function() require("mini.bufremove").delete(0, true) end, desc = "Delete Buffer (Force)" },
--     },
--   },
-- 
--   -- better diagnostics list and others
-- 
-- }
-- 
--   -- snippets
-- 
-- 
--   -- auto pairs
--   {
--     "echasnovski/mini.pairs",
--     event = "VeryLazy",
--     opts = {},
--   },
-- 
--   -- surround
-- 
--   -- comments
--   {
--     "echasnovski/mini.comment",
--     event = "VeryLazy",
--     opts = {},
--   },
-- 
--   -- better text-objects
--   {
--     "echasnovski/mini.ai",
--     -- keys = {
--     --   { "a", mode = { "x", "o" } },
--     --   { "i", mode = { "x", "o" } },
--     -- },
--     event = "VeryLazy",
--     dependencies = { "nvim-treesitter-textobjects" },
--     opts = function()
--       local ai = require("mini.ai")
--       return {
--         n_lines = 500,
--         custom_textobjects = {
--           o = ai.gen_spec.treesitter({
--             a = { "@block.outer", "@conditional.outer", "@loop.outer" },
--             i = { "@block.inner", "@conditional.inner", "@loop.inner" },
--           }, {}),
--           f = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }, {}),
--           c = ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }, {}),
--         },
--       }
--     end,
--     config = function(_, opts)
--       require("mini.ai").setup(opts)
--       -- register all text objects with which-key
--       if require("lazyvim.util").has("which-key.nvim") then
--         ---@type table<string, string|table>
--         local i = {
--           [" "] = "Whitespace",
--           ['"'] = 'Balanced "',
--           ["'"] = "Balanced '",
--           ["`"] = "Balanced `",
--           ["("] = "Balanced (",
--           [")"] = "Balanced ) including white-space",
--           [">"] = "Balanced > including white-space",
--           ["<lt>"] = "Balanced <",
--           ["]"] = "Balanced ] including white-space",
--           ["["] = "Balanced [",
--           ["}"] = "Balanced } including white-space",
--           ["{"] = "Balanced {",
--           ["?"] = "User Prompt",
--           _ = "Underscore",
--           a = "Argument",
--           b = "Balanced ), ], }",
--           c = "Class",
--           f = "Function",
--           o = "Block, conditional, loop",
--           q = "Quote `, \", '",
--           t = "Tag",
--         }
--         local a = vim.deepcopy(i)
--         for k, v in pairs(a) do
--           a[k] = v:gsub(" including.*", "")
--         end
-- 
--         local ic = vim.deepcopy(i)
--         local ac = vim.deepcopy(a)
--         for key, name in pairs({ n = "Next", l = "Last" }) do
--           i[key] = vim.tbl_extend("force", { name = "Inside " .. name .. " textobject" }, ic)
--           a[key] = vim.tbl_extend("force", { name = "Around " .. name .. " textobject" }, ac)
--         end
--         require("which-key").register({
--           mode = { "o", "x" },
--           i = i,
--           a = a,
--         })
--       end
--     end,
--   },
-- }
