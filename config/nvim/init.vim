set nocompatible
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set ruler

let mapleader = " "

nnoremap <esc> :noh<return><esc>

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  function! s:find_files()
      let git_dir = system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
      if git_dir != ''
        execute 'GFiles' git_dir
      else
        execute 'Files'
      endif
  endfunction
  command! ProjectFiles execute s:find_files()
  nnoremap <leader>g :ProjectFiles<CR>

Plug 'easymotion/vim-easymotion'
  nmap s <Plug>(easymotion-s2)
  nmap t <Plug>(easymotion-t2)

Plug 'Yggdroot/indentLine'

Plug 'jiangmiao/auto-pairs'

Plug 'ntpeters/vim-better-whitespace'

Plug 'pineapplegiant/spaceduck', { 'branch': 'main' },

Plug 'vim-airline/vim-airline'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Use tab for trigger completion with characters ahead and navigate.
  " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
  " other plugin before putting this into your config.
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
      call CocActionAsync('doHover')
    else
      execute '!' . &keywordprg . " " . expand('<cword>')
    endif
  endfunction

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  " Use K to show documentation in preview window.
  nnoremap <silent> K :call <SID>show_documentation()<CR>
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

call plug#end()

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme spaceduck