syntax off
set path=.,,
nnoremap <C-P> :find *
nnoremap <C-L> :nohlsearch<CR><C-L>

let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1

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

lua << EOF
lspconfig = require "lspconfig"
lspconfig.gopls.setup{}
lspconfig.tsserver.setup{}
EOF
