setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)
