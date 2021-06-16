"*****************************************************************************
"" Vim-Plug core
"*****************************************************************************
call plug#begin('~/.vim/plugged')
Plug 'voldikss/vim-floaterm'
Plug 'neoclide/coc.nvim'
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
" grep
Plug 'vim-scripts/grep.vim'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" colorscheme
Plug 'tomasiser/vim-code-dark'
" fzf
if isdirectory('/usr/local/opt/fzf')
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
else
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif
let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif
" indent
Plug 'Yggdroot/indentLine'
" go
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}
" javascript
Plug 'jelera/vim-javascript-syntax'
" typescript
Plug 'leafgarland/typescript-vim'
Plug 'HerringtonDarkholme/yats.vim'
call plug#end()
"" Include user's extra bundle
if filereadable(expand("~/.config/nvim/settings/ale.vim"))
  source ~/.config/nvim/settings/ale.vim
endif
if filereadable(expand("~/.config/nvim/settings/default.vim"))
  source ~/.config/nvim/settings/default.vim
endif
if filereadable(expand("~/.config/nvim/settings/coc.vim"))
  source ~/.config/nvim/settings/coc.vim
endif
if filereadable(expand("~/.config/nvim/settings/airline.vim"))
  source ~/.config/nvim/settings/airline.vim
endif
if filereadable(expand("~/.config/nvim/settings/session.vim"))
  source ~/.config/nvim/settings/session.vim
endif
if filereadable(expand("~/.config/nvim/settings/grep.vim"))
  source ~/.config/nvim/settings/grep.vim
endif
if filereadable(expand("~/.config/nvim/settings/fzf.vim"))
  source ~/.config/nvim/settings/fzf.vim
endif
if filereadable(expand("~/.config/nvim/settings/vimgo.vim"))
  source ~/.config/nvim/settings/vimgo.vim
endif
if filereadable(expand("~/.config/nvim/settings/typescript.vim"))
  source ~/.config/nvim/settings/typescript.vim
endif
if filereadable(expand("~/.config/nvim/settings/floaterm.vim"))
  source ~/.config/nvim/settings/floaterm.vim
endif
if filereadable(expand("~/.config/nvim/settings/easymotion.vim"))
  source ~/.config/nvim/settings/easymotion.vim
endif
if filereadable(expand("~/.config/nvim/settings/python.vim"))
  source ~/.config/nvim/settings/python.vim
endif
if filereadable(expand("~/.config/nvim/settings/git.vim"))
  source ~/.config/nvim/settings/git.vim
endif
