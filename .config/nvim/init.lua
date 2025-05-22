require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
-- require "user.dap"
require "user.telescope"
require "user.treesitter"
require "user.comment"
require "user.gitsigns"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.indentline"
require "user.alpha"
require "user.whichkey"
require "user.autocommands"
require "user.persisted"
require "user.mini"
require "user.nvim-tree-cfg"
require 'nvim-tree'.setup {
  disable_netrw = true,
  tab = {
    sync = {
      open = false,
      ignore = {
          'startify',
          'dashboard',
          'alpha',
      }
    }
  },
  sync_root_with_cwd = true,
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  update_focused_file = {
    enable = true,
    update_root = true,
    ignore_list = {},
  },
  system_open = {
    cmd = nil,
    args = {},
  },
  filters = {
    dotfiles = false,
    git_ignored = true,
    custom = {},
  },
  git = {
    enable = true,
    timeout = 500,
  },
  view = {
    width = 30,
    side = "left",
    number = true,
    relativenumber = true,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    }
  },
  renderer = {
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          deleted = "",
          untracked = "U",
          ignored = "◌",
        },
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
        },
      }
    }
  }
}
