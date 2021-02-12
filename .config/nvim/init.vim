" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/plugged')

" Make sure you use single quotes
Plug 'neoclide/coc.nvim', {'branch': 'release'} 	
Plug 'elixir-editors/vim-elixir' 			" syntax highlight and filetype detection
Plug 'rainglow/vim'	 				" colorscheme

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)

" Initialize plugin system
call plug#end()

syntax on 

filetype plugin indent on

""" Customize colors
set termguicolors " requires coc-highlight

"func! s:my_colors_setup() abort
"    " fix error popup box background
"    hi Pmenu ctermbg=#d7e5dc guibg=#d7e5dc guibg=black 
"    hi PmenuSel ctermbg=#b7c7b7 guibg=#b7c7b7 
"    hi PmenuSbar ctermbg=#bcbcbc guibg=#bcbcbc
"    hi PmenuThumb ctermbg=#585858 guibg=#585858
"endfunc

"augroup colorscheme_coc_setup | au!
"    au ColorScheme * call s:my_colors_setup()
"augroup END

colorscheme darkside
