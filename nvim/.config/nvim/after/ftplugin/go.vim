setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)
autocmd BufWritePre <buffer> lua vim.lsp.buf.code_action({ source = { organizeImports = true } })
