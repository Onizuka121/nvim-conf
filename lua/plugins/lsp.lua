-- plugins/lsp.lua
return function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Aggiungi le capacità di completamento a pyright
    lspconfig.pyright.setup{}
    lspconfig.clangd.setup({
      cmd = { "clangd" },
      filetypes = {"c","cpp"},
    })
    -- Puoi aggiungere qui altre configurazioni per server LSP
end
