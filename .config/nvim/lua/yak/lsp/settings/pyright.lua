local util = require "lspconfig.util"

local root_files = {
    'main.py',
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'Pipfile',
    'pyrightconfig.json',
}

return {
    root_dir = util.root_pattern(unpack(root_files)),
    settings = {

        venvPath = "~/Development/python/Environments",
    },
}
