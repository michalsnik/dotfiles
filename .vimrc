set nocompatible
set expandtab
set shiftwidth=2
set softtabstop=2
set laststatus=2
set number

syntax on

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'itchyny/lightline.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'joukevandermaas/vim-ember-hbs'

call vundle#end()
filetype plugin indent on

colorscheme wombat

" Set lightline theme
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ }

" Set nerd tree shortcuts
let mapleader = ","
nmap <leader>n :NERDTreeToggle<cr>

" Customize fuzzy search
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
