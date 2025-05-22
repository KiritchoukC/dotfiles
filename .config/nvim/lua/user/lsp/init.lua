local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
    return
end

local status_ok, cmplsp = pcall(require, "cmp_nvim_lsp")
if not status_ok then
    return
end

local status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
    return
end

local lsp_capabilities = cmplsp.default_capabilities()

mason.setup()

mason_lspconfig.setup {
    ensure_installed = {
        'tsserver',
        'html',
        'cssls'
    },
    handlers = {
        function(server)
            lspconfig[server].setup {
                capabilities = lsp_capabilities,
            }
        end,
        ['tsserver'] = function()
            lspconfig.tsserver.setup {
                capabilities = lsp_capabilities,
                settings = {
                    completions = {
                        completeFunctionCalls = true
                    }
                },
                on_attach = function(client)
                    client.resolved_capabilities.document_formatting = false
                end
            }
        end
    }
}


local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
    return
end

function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup {
    debug = false,
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.code_actions.eslint,
        null_ls.builtins.diagnostics.eslint,
    },
    on_attach = function(client, bufnr)
        if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePost", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                        async = true,
                        bufnr = bufnr,
                        -- filter = function(client)
                        --     return client.name == "null-ls"
                        -- end,
                    })
                end,
            })
        end
    end,

}
