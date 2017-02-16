if &t_Co > 1
	    syntax enable
"==============================================
"colorscheme
        set hlsearch
	    "colorscheme monokai
	    "colorscheme kitchen
	
	    "colorscheme molokai
	    "let g:molokai_original = 1
	    "let g:rehash256 = 1
	    
	    "colorscheme badwolf
	    "highlight Normal ctermbg=none
	    "colorscheme goodwolf
        
"==============================================
"syntax color   
	    syntax on

"==============================================
"tab   
	    set smarttab
	    set tabstop=4
	    set shiftwidth=4
	    set expandtab	"make 'tab' 'space' for color indent custom
        set shiftround

"==============================================
"edit
	    set autoindent
"       set smartindent
	    set ignorecase
	    set showmatch
	    set matchtime=1
"==============================================
"search
	    set incsearch
"==============================================
"auto correct
        "limit of auto correct
	    set pumheight=8

        "paint auto correct
        "for vim7
        hi Pmenu        ctermfg=Black ctermbg=Grey
        hi PmenuSel     ctermbg=Blue
        hi PmenuSbar    ctermbg=Cyan

"==============================================
"display
	    set number
	    set title
	    set ruler
	    set display=lastline

"==============================================
"Character code
	    set encoding=utf-8
	    set fileencoding=utf-8
	    set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8

"==============================================
"Back up
        set nobackup
"       noswapfile
"==============================================
"Other ???
	    set showmode
"==============================================
"KeyMapping

     "$B8mF0:nM=KI(B
        nnoremap Q <Nop>
"        nnoremap ZZ <Nop>
"        nnoremap ZQ <Nop>

	    nmap <Esc><Esc> :nohlsearch<CR><Esc>

        inoremap { {}<Left>
        inoremap [ []<Left>
        inoremap ( ()<Left>
        inoremap " ""<Left>
        inoremap ' ''<Left>
        inoremap < <><Left>
        "imap / //<Left>   // for rudy

    "move the display line-by-line
        nnoremap j gj
        nnoremap k gk
        vnoremap j gj
        vnoremap k gk

        nnoremap <silent><C-e> :NERDTree<CR>
        
    "Alt key $B%+!<%=%k0LCV$r0\F0$9$kA0$KLa$9(B
        nnoremap <M-Right> <C-i>
        nnoremap <M-Left> <C-o>

    "'Browser page reading short cut' application
        nnoremap <C-Up> gg
        nnoremap <C-Down> <S-g>
        nnoremap <Home> gg

"$B$3$l$rM-8z$K$9$l$P(BCtrl+Tab$B$,MxMQ$G$-$k$h$&$K$J$k$,!"JLES%$%s%9%H!<%k$,I,MW$J$?$a!"F3F~$r$7$J$$!#$h$C$F(BCtrl+Tab$B$K$h$k%7%g!<%H%+%C%H$OMxMQ$7$J$$(B
"        *vt100.translation: #override \n\
"            Ctrl ~Shift <Key>Tab: string(0x1b) string("[27;5;9~") \n \
"            Ctrl Shift <Key>Tab: string(0x1b) string("[27;6;9~") \n

    "Ctrl + Tab $B$,;H$($J$$$?$a!"J]N1(B
        if 0
            nnoremap <C-w> :close<CR>
            nnoremap <C-Tab> :echo "bbb"<CR>
            nnoremap <C-Tab> <C-w><C-w>
        endif

        nnoremap <C-Tab> :echo "abc"<CR>

    "if $B%5!<%A%b!<%I$,%*%s$N;~$N$_$K$7$?$$(B
        nmap <Tab> n<CR>
        nmap <S-Tab> <S-n>

    "'Edit short cut' application
        nnoremap <C-z> u
        nnoremap <C-y> <C-r>
        
"        nnoremap <S-Up> v
"        nnoremap <S-Down> v
"        nnoremap <S-Left> v
"        nnoremap <S-Right> v
        vnoremap <Tab> >
        vnoremap <S-Tab> <

        
    "open .vimrc , just now
        nnoremap ,. :<C-u>edit $MYVIMRC<CR>
        
    "Individual Key Mapping
        noremap Y y$
	    nnoremap \ *
	    nnoremap ^ $
"	    nnoremap <S-^> ^
        nnoremap <S-w> b
        nnoremap <C-u> g;
        nnoremap <C-r> g,

endif
"-----------------------------------------------------------
"^[$B>!<j$KDI2C!!KLLn^[(B
"move cursor the last edit part
if has("autocmd")
    	filetype plugin indent on
    	autocmd BufReadPost *
	            \ if line("'\"") > 0 && line("'\"") <= line("$") |
	            \ exe "normal g'\"" |
	            \ endif
endif

set laststatus=2
"----------------------------------------------------------
" $BA43Q%9%Z!<%9$NI=<((B for ZenkakuSpace
" http://inari.hatenablog.com/entry/2014/05/05/231307
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction

if has('syntax')
        augroup ZenkakuSpace
            autocmd!
            autocmd ColorScheme * call ZenkakuSpace()
            autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '$B!!(B')
        augroup END
        call ZenkakuSpace()
endif

"---------------------------------------------------------
"$BM=B,JQ49(B auto correct indicater
"URL : http://io-fia.blogspot.jp/2012/11/vimvimrc.html
set completeopt=menuone
for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
	exec "imap " . k . " " . k . "<C-N><C-P>"
endfor
imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"

"---------------------------------------------------------
"dein Scripts
if &compatible
	set nocompatible
endif

let s:dein_dir = expand('~/.cache/dein')
"" dein.vim $BK\BN(B
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim $B$,$J$1$l$P(B github $B$+$iMn$H$7$F$/$k(B
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)
"~~~My Plugins here~~~
"	call dein#add({path to dein.vim directory})
	call dein#add('Shougo/neocomplete.vim')
	call dein#add('Shougo/deoplete.nvim')
"	call dein#add('Shougo/unite.vim') 
    " comment : need python3 install

    call dein#add('haya14busa/incsearch.vim')
        nmap / <Plug>(incsearch-forward)
        map ? <plug>(incsearch-background)
        map g/ <plug>(incsearch-stay)
    " comment : give color to some search word

    call dein#add('vim-Scripts/AnsiEsc.vim')
    " comment : color log file 

    call dein#add('scrooloose/nerdtree')
    " comment : it is the God Plugin
    "           let ':NERDTree'!!

    call dein#add('osyo-manga/vim-anzu')
    " mapping
    " when you want to display it in screen,change this
    if 1    " if 1
        nmap n <Plug>(anzu-n-with-echo)
        nmap N <Plug>(anzu-N-with-echo)
    else    " if 0
        nmap n <Plug>(anzu-mode-n)
        nmap N <Plug>(anzu-mode-N)
    endif
        nmap * <Plug>(anzu-star-with-echo)
        nmap # <Plug>(anzu-sharp-with-echo) 
    " clear status
"        nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
    " statusline
        set statusline=%{anzu#search_status()}
    " comment :
    "           if you search 'word', word(12/51) in command line

    call dein#add('osyo-manga/vim-over')
    " command : when you '%s/word1/word2/g', 
    "           paint ward after ':OverCommandLine'!
    call dein#add('nathanaelkane/vim-indent-guides')
    "indent color
    "$B%$%s%G%s%H$K?'$rIU$1$F8+$d$9$/$9$k(B

    "vim$B$rN)$A>e$2$?$H$-$K!"<+F0E*$K(Bvim-indent-guides$B$r%*%s$K$9$k(B
    let g:indent_guides_enable_on_vim_startup = 1
    "$B<+F0%+%i!<L58z(B
    let g:indent_guides_auto_colors = 0
    "$B6v?t9T$H4q?t9T$N?'$r@_Dj(B
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#444433 ctermbg=black "3
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#333344 ctermbg=darkgray "4
    "$B2?9TL\$+$i?'IU$1$r9T$&$+$r;XDj$9$k(B
    let g:indent_guides_start_level = 2
    "$B2D;k2=NN0h$N%5%$%:$r;XDj(B
    let g:indent_guides_guide_size = 1
    "set background=dark

"	call dein#add('')
" --- Please add new plugin ---

	let g:rc_dir	= expand('~/.vim/rc')
	let s:toml		= g:rc_dir . '/dein.toml'
	let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

	call dein#load_toml(s:toml,			{'lazy': 0})
	call dein#load_toml(s:lazy_toml,	{'lazy': 1})

"~~~My plugin end~~~
	call dein#end()
	call dein#save_state()
endif

filetype plugin indent on

"if you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"-----------------------------------------------------------
