syntax enable
set number
set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/autoload')

Plug 'rip-rip/clang_complete'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:clang_library_path='/usr/lib64/libclang.so.9'


filetype plugin indent on

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
