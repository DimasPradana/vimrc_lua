local configs = require 'nvim_lsp/configs'
local util = require 'nvim_lsp/util'

local server_name = 'gopls'
local bin_name = 'goplsserver'

configs[server_name] = {
  default_config = {
    cmd = {"gopls"};
    filetypes = {"go", "gomod"};
    root_dir = util.root_pattern("go.mod", ".git");
  };
}
