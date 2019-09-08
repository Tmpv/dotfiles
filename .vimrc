scriptencoding utf-8
set nocompatible              " be iMproved, required
set encoding=utf-8
filetype off

" Vundle plugins
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'L9'                                        " required by other plugins
Plugin 'epeli/slimux'                              " send text from vim to another tmux pane

" Lang-specific
Plugin 'godlygeek/tabular'                  " Vim script for text filtering and alignment; also required by vim-markdown
Plugin 'plasticboy/vim-markdown'
Plugin 'elzr/vim-json'
Plugin 'slim-template/vim-slim'
Plugin 'dhruvasagar/vim-table-mode'

" Ruby
Plugin 'tpope/vim-rails'                    " Rails syntax
Plugin 'gmitrev/vim-ruby'                   " Using my fork because of the support for (), {} and []
Plugin 'vim-scripts/ruby.vim--IGREQUE'      " Improved Indendation
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-liquid'                   " Markdown syntax Highlight for jekyll

" JS
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mxw/vim-jsx'
Plugin 'mtscout6/vim-cjsx'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mustache/vim-mustache-handlebars'

" Html
Plugin 'mattn/emmet-vim'

" Clj
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'

" Elixir
Plugin 'elixir-lang/vim-elixir'

" Git
Plugin 'tpope/vim-fugitive'

" Syntax
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim'

" Indentation
Plugin 'vim-scripts/IndentAnything'

" Autocompletion
Bundle 'surround.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'

" Navigation
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" File navigation
Plugin 'rking/ag.vim'                       " Search in files
Plugin 'kien/ctrlp.vim'                     " Quick file navigation
Plugin 'JazzCore/ctrlp-cmatcher'            " Better matching algorithm for ctrlp. Requires additional installation

" Util
Plugin 'danro/rename.vim'                   " A command and function that basically does a ':saveas <newfile>' then removes the old filename on the disk.
Plugin 'AndrewRadev/writable_search.vim'    " Useful for global search and replace

" Text transformation
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'terryma/vim-multiple-cursors'

" Themes
Plugin 'gmitrev/amalgam.vim'
Plugin 'dracula/vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'ap/vim-css-color'
Plugin 'itchyny/lightline.vim'
Plugin 'altercation/vim-colors-solarized'

Plugin 'thoughtbot/vim-rspec'

" Puppet
Plugin 'rodjek/vim-puppet'

call vundle#end()
filetype plugin indent on
filetype plugin on

set tabstop=2       " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
set showcmd         " Show (partial) command in status line.
set number          " Show line numbers.
set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
set ignorecase      " Ignore case in search patterns.
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode.
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
" set rnu             " Show relative line numbers
set title
set nobackup        " We don't want no backup
set noswapfile      " Get rid of swap files
set nocompatible
set gdefault        " Apply substitutions globally by default
set wildmenu         " make cmdline tab completion similar to bash
" set nolist          " Don't show invisible characters
" set cul             " highlight current line
set scrolloff=3     " scroll when nearing screen top/end
set pastetoggle=<F2> " External copy/paste
" Open splits in the right or bottom
set splitbelow
set splitright
set cursorline      " Highlight current line

set term=screen-256color " Better colors

syntax on

set background=dark
color amalgam
" hi Normal ctermbg=none
" set background=light
" colorscheme solarized

" Make j and k jump visual, not real lines
nnoremap j gj
nnoremap k gk

" Auto HTML tag closing and auto identation ref: http://vim.wikia.com/wiki/Auto_closing_an_HTML_tagk
:inoremap <lt>/ </<C-x><C-o><Esc>==gi

" Syntax config
au BufRead,BufNewFile *.md set filetype=markdown
au BufNewFile,BufRead *.rabl set filetype=ruby
au BufNewFile,BufRead *.thor set filetype=ruby
au BufNewFile,BufRead Guardfile set filetype=ruby
au BufNewFile,BufRead .pryrc set filetype=ruby
au BufNewFile,BufRead Vagrantfile set filetype=ruby
au BufNewFile,BufRead *.pp set filetype=ruby
au BufNewFile,BufRead *.prawn set filetype=ruby
au BufNewFile,BufRead Appraisals set filetype=ruby
au BufNewFile,BufRead .psqlrc set filetype=sql
au BufNewFile,BufRead *.less set filetype=css
au BufNewFile,BufRead bash_profile set filetype=sh
au BufNewFile,BufRead *.slim set filetype=slim
au BufNewFile,BufRead *.eco set filetype=html
au BufNewFile,BufRead *.pp set filetype=puppet
au BufNewFile,BufRead *.hbs set filetype=mustache
au BufNewFile,BufRead scratch_pad set filetype=ruby


" Enable lightline
set laststatus=2

" Remove trailing spaces on save (oh yeah)
autocmd BufWritePre * :%s/\s\+$//e

" Vertical column at char 100
set colorcolumn=100

" AG searches
nnoremap <Leader>f :Ag -w <cword><CR>

" CtrlP
" set runtimepath^=~/.vim/bundle/ctrlp.vim
" nnoremap <Leader>p :CtrlPTag<CR>
" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' } " Use better matching algorithm
let g:ctrlp_max_files = 100000
let g:ctrlp_max_depth = 40
let g:ctrlp_custom_ignore = '\v[\/](coverage|tmp|out|node_modules|deps|_build)$'

" Rubocop config
let g:syntastic_ruby_checkers     = ['rubocop', 'mri']
let g:syntastic_ruby_rubocop_exec = 'rubocop'

" VIM Table Mode
let g:table_mode_corner='|'

" Custome leader mappings
let mapleader = "\<space>"

" Format json
com! FormatJSON %!python -m json.tool

