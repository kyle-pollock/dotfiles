if !exists('g:loaded_nvim_treesitter')
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
     enable = true,
     disable = {},
  },
  ensure_installed = {
    "go",
    "javascript",
    "typescript",
    "tsx",
    "php",
    "cmake",
    "json",
    "yaml",
    "html"
  }
}
EOF
