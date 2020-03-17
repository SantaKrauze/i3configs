syntax enable
set number
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/autoload')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim', {'name':'dracula'}

call plug#end()
filetype plugin indent on

let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'


inoremap { {}<left>
inoremap {{ {
inoremap {} {}
inoremap [ []<left>
inoremap [[ [
inoremap [] []
inoremap ( ()<left>
inoremap (( (
inoremap () ()
inoremap " ""<left>
inoremap "" ""
inoremap ' ''<left>
inoremap '' ''
