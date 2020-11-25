local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

local server_name = 'gopls'
local bin_name = 'goplsserver'

configs[server_name] = {
  default_config = {
    cmd = {"gopls"};
    filetypes = {"go", "gomod"};
    root_dir = util.root_pattern("go.mod", ".git");
  };
}
