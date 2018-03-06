set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set nobackup
set nowritebackup
set noswapfile

set number
set sw=2
set ts=2
set expandtab
let g:ctrlp_map = '<c-o>'
let g:ctrlp_cmd = 'CtrlP'

" Load custom ruby indentation before the default one kicks.
" Also use proper variable based setting instead of stupid default one.
source ~/.vim_runtime/my_plugins/vim-ruby/indent/ruby.vim
let g:ruby_indent_assignment_style = "variable"

" highlight trailing whitespace
match ErrorMsg '\s\+$'

" kill trailing whitespace automatically
autocmd BufWritePre * :%s/\s\+$//e

" ag instead of ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
