local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

-- This section is commented out to not make conflicts with
-- rust-tools plugin
-- lspconfig.rust_analyzer.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = {"rust"},
--   root_dir = util.root_pattern("Cargo.toml"),
--   settings = {
--     ['rust-analyzer'] = {
--       cargo = {
--         allFeatures = true,
--       },
--     },
--   },
-- })


lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "go" },
  root_dir = lspconfig.util.root_pattern "go.mod",
}
