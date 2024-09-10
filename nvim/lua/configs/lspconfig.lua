-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {"bashls", "yamlls", "ruff"}
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.pylsp.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    pylsp = {
      plugins = {
          -- Disable linting
          pycodestyle = { enabled = false },
          flake8 = { enabled = false },
          pylint = { enabled = false },
          mccabe = { enabled = false },
          pyflakes = { enabled = false },

          -- Disable formatting
          autopep8 = { enabled = false },
          yapf = { enabled = false },
          black = { enabled = false },

          -- Disable import organizing
          isort = { enabled = false },
          importmagic = { enabled = false },

          -- Type checking
          mypy = { enabled = false },
      }
    }
  }
}

lspconfig.ruff.setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}
