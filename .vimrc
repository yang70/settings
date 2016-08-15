set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-commentary'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'Townk/vim-autoclose'
Plugin 'digitaltoad/vim-jade'
Plugin 'pangloss/vim-javascript'
Plugin 'briancollins/vim-jst'
Plugin 'tpope/vim-obsession'
Plugin 'StanAngeloff/php.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'mattn/emmet-vim'
Plugin 'ap/vim-css-color'
Plugin 'leafgarland/typescript-vim'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'mxw/vim-jsx'
Plugin 'thoughtbot/vim-rspec'
Plugin 'szw/vim-maximizer'
Plugin 'wavded/vim-stylus'
Plugin 'isRuslan/vim-es6'
Plugin 'rust-lang/rust.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
filetype plugin on

" omnicomplete
set omnifunc=syntaxcomplete#Complete

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTriggert="<c-z>"
let g:UltiSnipsEditSplit="horizontal"

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Run rspec commands through Dispatch
let g:rspec_command = "Dispatch rspec {spec}"

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
syntax enable
"
" options in ~/.vim/colors/
colorscheme monokai

set number
set tabstop=2
set shiftwidth=2
set expandtab

" get propper indentation with html and php
Bundle 'captbaritone/better-indent-support-for-php-with-html'

" react/jsx syntax. second line adds highlighting in .js files
" Bundle 'mxw/vim-jsx'
let g:jsx_ext_required = 0

" copy to system clipboard
set clipboard=unnamed
" Change status line color when in insert, normal mode
" enable status line always
set laststatus=2

" Enable relative numbering and map to control-n
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-y> :call NumberToggle()<cr>

" xmpfilter shortcuts
nmap <buffer> <C-e> <Plug>(xmpfilter-run)
xmap <buffer> <C-e> <Plug>(xmpfilter-run)
imap <buffer> <C-e> <Plug>(xmpfilter-run)
nmap <buffer> <C-w> <Plug>(xmpfilter-mark)
xmap <buffer> <C-w> <Plug>(xmpfilter-mark)
imap <buffer> <C-w> <Plug>(xmpfilter-mark)

" Nerdtree file system viewer
map <C-f> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Shortcut rspec/dispatch
map <C-t> :Dispatch rspec<CR>

" emmet trigger
let g:user_emmet_leader_key='<C-M>'

" vim syntax libraries
let g:used_javascript_libs = 'jquery,angularjs,angularui,angularuirouter,react,flux,requirejs,jasmine,chai,handlebars'

" disable auto comment on next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" vim-airline - tab line
let g:airline#extensions#tabline#enabled = 1
