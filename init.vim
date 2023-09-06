set nu tabstop=2 shiftwidth=2
syntax enable
filetype plugin indent on
lua require("config.lazy")

" Deoplete config
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']})



let b:ale_fixers = ['prettier', 'eslint']
" Equivalent to the above.
let b:ale_fixers = {'javascript': ['prettier', 'eslint'], 'typescript':['prettier','eslint']}
let g:ale_completion_enabled = 1

