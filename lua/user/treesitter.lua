local M = {
}
function M.config()
  local treesitter = require "nvim-treesitter"
  local configs = require "nvim-treesitter.configs"

  configs.setup {
  ensure_installed = { "bash", "c", "json", "lua", "python", "latex",
  -- "typescript", "tsx", "css", "java", "yaml", "javascript",
  "rust", "markdown", "markdown_inline" }, -- one of "all" or a list of languages
	ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
    sync_install = false,                                                          -- install languages synchronously (only applied to `ensure_installed`)

    highlight = {
      enable = true,       -- false will disable the whole extension
      disable = { }, -- list of language that will be disabled
    },
    autopairs = {
      enable = true,
    },
    indent = { enable = true, disable = { "python" } },

    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  }
end

return M
