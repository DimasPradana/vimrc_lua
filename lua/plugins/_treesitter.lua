require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "typescript",
    "javascript",
    "html",
    "java",
    "php",
    "rust",
    "tsx",
    "python",
    "go",
    "lua"
  },

  highlight = {
    enable = true,
    disable = {'svelte'},
    -- use_languagetree = false,
    use_languagetree = true,
    custom_captures = {
      ["variable"] = "Identifier",
      ["punctuation.delimiter"] = "Identifier"
    }
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true,
  },
}
