local configs = require 'nvim_lsp/configs'
local util = require 'nvim_lsp/util'

local server_name = 'intelephense'
local bin_name = 'intelephense'

configs[server_name] = {
  default_config = {
    cmd = {"intelephense", "--stdio"};
    filetypes = {"php"};
    root_dir = util.root_pattern("composer.json", ".git");
  };
}
