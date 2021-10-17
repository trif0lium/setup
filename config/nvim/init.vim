set cursorline
set nocompatible
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set ruler

let mapleader = " "

nnoremap <esc> :noh<return><esc>

if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    silent !ln -s ~/.config/nvim/autoload/plug.vim ~/.vim/autoload/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'junegunn/fzf.vim'

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

Plug 'ntpeters/vim-better-whitespace'

Plug 'pineapplegiant/spaceduck', { 'branch': 'main' },

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'

Plug 'LunarWatcher/auto-pairs', { 'tag': '*' }

Plug 'unblevable/quick-scope'

Plug 'jacoborus/tender.vim'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }

Plug 'rhysd/accelerated-jk'
  nmap j <Plug>(accelerated_jk_gj)
  nmap k <Plug>(accelerated_jk_gk)

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

  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

call plug#end()

let g:coc_global_extensions = [
      \'coc-json',
      \'coc-tsserver',
      \'coc-prettier',
      \'coc-sourcekit',
      \'coc-explorer',
      \'coc-go',
      \]

nnoremap <leader>e :CocCommand explorer<CR>

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

nmap <leader>1 1gt
nmap <leader>2 2gt
nmap <leader>3 3gt
nmap <leader>4 4gt
nmap <leader>5 5gt
nmap <leader>6 6gt
nmap <leader>7 7gt
nmap <leader>8 8gt
nmap <leader>9 9gt

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
colorscheme tender

let g:qs_highlight_on_keys = ['f', 'F']
