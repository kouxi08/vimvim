set number
set list
set title
set belloff=all
set laststatus=2
set ruler
set cursorline
syntax on
let mapleader = "\<Space>"
set fenc=utf-8
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set listchars=tab:¦\ ,eol:↲,trail:_,extends:»,precedes:«,nbsp:%
set autoindent
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
set mouse=a
vnoremap < <gv
vnoremap > >gv
noremap x "_x
noremap X "_X
noremap c "_c
noremap C "_C
noremap s "_s
noremap S "_S
xnoremap <expr> p 'pgv"'.v:register.'y`>'
set ignorecase
set smartcase
set hlsearch
nnoremap <Leader>q :nohlsearch<CR>
set incsearch
set history=100
set clipboard=unnamed
set noswapfile
set autoread
set showcmd
set ambiwidth=double
set autochdir
set wildmenu
set history=5000 " 保存するコマンド履歴の数
"マウス設定
if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif
"ペースト設定
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif









