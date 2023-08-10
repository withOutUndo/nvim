local util = require("formatter.util")

require("formatter").setup({
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    lua = require("formatter.filetypes.lua").stylua,
    typescript = require("formatter.filetypes.typescript").prettier,
    javascript = require("formatter.filetypes.javascript").prettier,
    rust = require("formatter.filetypes.rust").rustfmt,
    json = require("formatter.filetypes.json").prettier,
    html = require("formatter.defaults").prettier,
    css = require("formatter.filetypes.css").prettier,
    sh = require("formatter.filetypes.sh").shfmt,

    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      -- "formatter.filetypes.any" defines default configurations for any
      -- filetype
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
})
