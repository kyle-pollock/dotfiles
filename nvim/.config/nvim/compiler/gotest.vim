if exists('current_compiler')
  finish
endif
let current_compiler = 'gotest'

if exists(':CompilerSet') != 2
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim

CompilerSet makeprg=go\ test
CompilerSet errorformat=TODO

let &cpo = s:cpo_save
unlet s:cpo_save
