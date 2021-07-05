set path=.,,
set termguicolors
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

nnoremap <C-p> :find *
nnoremap <C-l> :nohlsearch<CR><C-l>

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

let g:prettier#autoformat_require_pragma = 0
let g:prettier#autoformat_config_present = 1

lua require("lsp")
