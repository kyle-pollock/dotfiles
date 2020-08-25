colorscheme gruvbox
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

autocmd Filetype gitcommit setlocal textwidth=72
autocmd Filetype go,python setlocal omnifunc=v:lua.vim.lsp.omnifunc
autocmd BufWritePre *.go,*.py lua vim.lsp.buf.formatting_sync(nil, 1000)

packadd nvim-lsp
lua require'nvim_lsp'.gopls.setup{}
lua require'nvim_lsp'.pyls.setup{}
lua require'nvim_lsp'.tsserver.setup{}
