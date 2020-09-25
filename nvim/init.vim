set nocompatible              " be iMproved, required
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/plug-config/coc.vim
"lua require'plug-colorizer'
"luafile $HOME/.config/nvim/lua/plug-colorizer.lua
filetype off                  " required

set clipboard+=unnamedplus

call plug#begin('~/.local/share/nvim/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  Plug 'alvan/vim-closetag'
  Plug 'tpope/vim-surround'
  Plug 'mattn/emmet-vim'

  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'yuezk/vim-js'
  Plug 'maxmellon/vim-jsx-pretty'
  " Spaceline
  " Plug 'hardcoreplayers/spaceline.vim'
  " Use the icon plugin for better behavior
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'  
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'arcticicestudio/nord-vim'
  "Plug 'haishanh/night-owl.vim'
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'kovetskiy/sxhkd-vim'
  " Plug 'itchyny/lightline.vim'
call plug#end()
"""""""""""""""""""""""""
" => Theme
"""""""""""""""""""""""""
" colorscheme nord
set background=dark
colorscheme palenight

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" Italics for my favorite color scheme
let g:palenight_terminal_italics=1

let g:airline_theme='palenight'
" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

""""""""""""""""""""""""""
" => Nerd Tree
""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

