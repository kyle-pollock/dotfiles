colorscheme gruvbox
set termguicolors
set background=dark
set hlsearch
set ignorecase
set list
set number
set smartcase
set updatetime=100
set wildmode=full

let test#strategy = "dispatch"
let g:deoplete#enable_at_startup = 1

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

nnoremap <C-p> :<C-u>FZF<CR>

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gR    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> gA    <cmd>lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> gZ    <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>

autocmd Filetype gitcommit setlocal textwidth=72
autocmd Filetype go,python setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd BufWritePre *.go,*.py lua vim.lsp.buf.formatting_sync(nil, 1000)
autocmd BufWritePre *.go lua vim.lsp.buf.code_action({ source = { organizeImports = true } })

packadd nvim-lsp
lua require'lspconfig'.gopls.setup{}
lua require'lspconfig'.tsserver.setup{}
