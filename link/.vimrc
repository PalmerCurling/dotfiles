"From Bilal:"
"A simple vimrc that I give to people just starting to use Vim."
"Lines beginning with a double quote are comments."

"Load plugins and set up mappings and options"
"======================================================================="
"Minimum version for plugins"
if version >= 702
	"Install vundle if we don't have it"
	let s:vundle_init=0
	let s:vundle_readme=expand('~/.vim/bundle/vundle/README.md')
	if !filereadable(s:vundle_readme)
		echo "Installing Vundle..\n"
		silent !mkdir -p ~/.vim/bundle
		silent !git clone git://github.com/gmarik/vundle ~/.vim/bundle/vundle
		let s:vundle_init=1
	endif

	"Setup vundle"
	filetype off
	set rtp+=~/.vim/bundle/vundle/
	let $GIT_SSL_NO_VERIFY = 'true'        " Don't use SSL
	let g:vundle_default_git_proto = 'git' " Use git:// over http://
	call vundle#rc()
	Bundle 'gmarik/vundle'

	"Load our plugins"
	Bundle 'scrooloose/syntastic'
	Bundle 'Lokaltog/vim-distinguished'

endif

"Basic settings"
"======================================================================="
set nocompatible "Fixes old Vi bugs"
syntax enable
set backspace=2 "Makes backspace work"
set history=500 "Sets undo history size"
set ruler "Sets up status bar"
set laststatus=2 "Always keeps the status bar active"
set number "Turns on line numbering"
set t_Co=256 "Sets Vim to use 256 colors"

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

"fix my tendency to attempt to quit vim too quickly"
:command WQ wq
:command Wq wq
:command W w
:command Q q

"Turn on plugin & indentation support for specific filetypes"
filetype plugin indent on

"Include pathogen"
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

colorscheme distinguished

"enable mouse copy"
:set mouse=a

"Enable Syntastic"
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1
let g:syntastic_mode_map = { 'mode': 'active',
	\ 'active_filetypes': [],
	\ 'passive_filetypes': [] }
hi Normal ctermbg=none
