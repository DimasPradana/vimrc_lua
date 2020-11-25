local nvim_lsp = require('lspconfig')
local mappings = require('modules.lsp._mappings')

require('modules.lsp._svelte') -- svelteserver config
require('modules.lsp._custom_handlers') -- override hover callback
require('modules.lsp._diagnostic') -- diagnostic stuff
require('modules.lsp._sumneko_lua') -- dimas
require('modules.lsp._gopls') -- dimas
require('modules.lsp._intelephense') -- dimas
require('modules.lsp._jedi-language-server') -- dimas

local custom_on_attach = function()
  mappings.lsp_mappings() -- lsp related mappings
end

local custom_on_init = function()
  -- print('Language Server Protocol started!')
  print('LSP jalan pak')
end

nvim_lsp.tsserver.setup{
  filetypes = { 'javascript', 'typescript', 'typescriptreact' },
  on_attach = custom_on_attach,
  on_init = custom_on_init,
  root_dir = function() return vim.loop.cwd() end
}

nvim_lsp.html.setup{
  on_attach = custom_on_attach,
  on_init = custom_on_init
}

nvim_lsp.cssls.setup{
  on_attach = custom_on_attach,
  on_init = custom_on_init
}

nvim_lsp.svelte.setup{
  on_attach = custom_on_attach,
  on_init = custom_on_init
}

-- dimas
nvim_lsp.sumneko_lua.setup{
  cmd = { "/home/snub/.cache/nvim/lspconfig/lua-language-server/bin/Linux/lua-language-server" },
  filetypes = { "lua" },
  log_level = 2,
  on_attach = custom_on_attach,
  on_init = custom_on_init
}

-- dimas
nvim_lsp.gopls.setup{
  cmd = { "gopls" },
  filetypes = { "go", "gomod" },
  log_level = 2,
  on_attach = custom_on_attach,
  on_init = custom_on_init
}

-- dimas
nvim_lsp.intelephense.setup{
  cmd = { "intelephense", "--stdio" },
  filetypes = { "php" },
  log_level = 2,
  on_attach = custom_on_attach,
  on_init = custom_on_init
}
--
-- dimas
nvim_lsp.jedi_language_server.setup{
  cmd = { "jedi-language-server" },
  filetypes = { "python" },
  on_attach = custom_on_attach,
  on_init = custom_on_init
}

-- nvim_lsp.sumneko_lua.setup{
--   on_attach = custom_on_attach,
--   on_init = custom_on_init,
--   settings = {
--     Lua = {
--       runtime = { version = "LuaJIT", path = vim.split(package.path, ';'), },
--       completion = { keywordSnippet = "Disable", },
--       diagnostics = { enable = true, globals = {
--         "vim", "describe", "it", "before_each", "after_each" },
--       },
--     }
--   }
-- }

nvim_lsp.rust_analyzer.setup{
  on_attach = custom_on_attach,
  on_init = custom_on_init,
}

-- temporarily disable this stuff, my laptop couldn't handle multiple lsp sadly
if false then
nvim_lsp.diagnosticls.setup{
  filetypes = { 'javascript', 'typescript', 'typescriptreact', 'svelte' },
  on_attach = custom_on_attach,
  on_init = function() print("Diagnosticls started") end,
  init_options = {
    filetypes = {
      javascript = "eslint",
      svelte = "eslint",
      typescriptreact = "eslint",
    },
    linters = {
      eslint = {
        sourceName = "eslint",
        command = "./node_modules/.bin/eslint",
        rootPatterns = { ".git" },
        debounce = 100,
        args = {
          "--stdin",
          "--stdin-filename",
          "%filepath",
          "--format",
          "json",
        },
        parseJson = {
          errorsRoot = "[0].messages",
          line = "line",
          column = "column",
          endLine = "endLine",
          endColumn = "endColumn",
          message = "${message} [${ruleId}]",
          security = "severity",
        };
        securities = {
          [2] = "error",
          [1] = "warning"
        }
      }
    }
  }
}
end
