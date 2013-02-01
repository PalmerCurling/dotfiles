execute pathogen#infect()

"From Bilal:"
"A simple vimrc that I give to people just starting to use Vim."
"Lines beginning with a double quote are comments."

"Basic settings"
"======================================================================="
set nocompatible "Fixes old Vi bugs"
syntax on
set backspace=2 "Makes backspace work"
set history=500 "Sets undo history size"
set ruler "Sets up status bar"
set laststatus=2 "Always keeps the status bar active"
set number "Turns on line numbering"
set t_Co=256 "Sets Vim to use 256 colors"
colorscheme distinguished

"Indentation settings"
"======================================================================="
set tabstop=4 "Sets display width of tabs"
set shiftwidth=4 "Sets indentation width"
set autoindent "Turns on auto-indenting"
set smartindent "Remembers previous indent when creating new lines"
"
"Choose between tabs and spaces for indentation by uncommenting one of
"these two. Expand for spaces, noexpand for tabs:"
"set noexpandtab
"set expandtab
"
set smarttab "Smarter indentation management regardless of tabs/spaces"


"Search settings"
"======================================================================="
set hlsearch "Highlights search terms"
set showmatch "Highlights matching parentheses"
set ignorecase "Ignores case when searching"
set smartcase "Unless you put some caps in your search term"


"Key mappings"
"======================================================================="
"Use qq instead of escape in insert mode"
inoremap qq <Esc>`^


"Turn on plugin & indentation support for specific filetypes"
filetype plugin indent on

"Include pathogen"
call pathogen#infect()
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"Enable Syntastic"
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1
let g:syntastic_mode_map = { 'mode': 'active',
	\ 'active_filetypes': [],
	\ 'passive_filetypes': [] }
