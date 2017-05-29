" Tab settins
set tabstop=4
set shiftwidth=4
set softtabstop=0

" VIM Grep
map find :vimgrep <C-r><C-w> **/*.c **/*.h **/*.cpp<CR>:copen<CR>

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

 " Required:
  set runtimepath+=~/vimfiles/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/vimfiles/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundle 'scrooloose/nerdtree'

NeoBundle 'Shougo/unite.vim'

NeoBundle 'Shougo/neocomplcache.vim'

NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
  \     'windows' : 'make -f make_mingw32.mak',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'unix' : 'make -f make_unix.mak',
  \    },
  \ }

NeoBundleLazy 'Shougo/neocomplete.vim', {
  \ 'depends' : 'Shougo/vimproc',
  \ 'autoload' : { 'insert' : 1,}
  \ }

NeoBundleLazy 'h1mesuke/unite-outline'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
" NeoBundleCheck

"complete {{{
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
" }}}

