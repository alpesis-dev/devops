set number
set nu
set ru
syntax enable
set background=dark
colorscheme solarized
filetype plugin indent on
setlocal textwidth=80
autocmd BufwritePre * :%s/\s\+$//ge
