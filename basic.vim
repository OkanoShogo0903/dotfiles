"---------------------------------------------------------
" mapping等の設定を書いてある
" 
"---------------------------------------------------------
"syntax color   
        syntax on

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
"tab   
        set smarttab
        set tabstop=4
        set shiftwidth=4
        set expandtab   "make 'tab' 'space' for color indent custom
"        set retab
        set shiftround

"==============================================
"edit
        set autoindent
"       set smartindent
        set ignorecase
        set showmatch
        set matchtime=1
"==============================================
""search
        set incsearch
"==============================================
"display
        set number
        set title
        set ruler
        set display=lastline

"==============================================
"statusline

"ステータスラインの色をノーマルモードと挿入モードで区別する
"guifg = FrontGround
"guibg = BackGround
"gui,cterm = BigChar, SlantingChar
"        au InsertEnter * hi statusLine guifg=DarkBlue guibg=DarkGray gui=none ctermfg=Blue ctermbg=DarkGray cterm=none
"        au InsertLeave * hi statusLine guifg=DarkBlue guibg=DarkGray gui=none ctermfg=Blue ctermbg=DarkGray cterm=none

    set statusline+=%{matchstr(hostname(),'\\w\\+')}@
    
"==============================================
"Character code
        set encoding=utf-8
        set fileencoding=utf-8
        set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932
"==============================================
"Back up
        set nobackup
        set noswapfile
"==============================================
"Other ???
        set showmode
        set helplang=ja
        ":version"で+clipboardになってないと機能しない。
        "その場合は端末のヴァージョンアップが必要になる
        set clipboard=unnamed
        ",autoselect
"==============================================
"KeyMapping

    "誤動作予防
        nnoremap Q <Nop>
        "nnoremap ZZ <Nop>
        "nnoremap ZQ <Nop>
    
    "basic
        nmap <Esc><Esc> :nohlsearch<CR><Esc>

"        inoremap { {}<Left>
"        inoremap [ []<Left>
"        inoremap ( ()<Left>
"        inoremap " ""<Left>
"        inoremap ' ''<Left>
"        inoremap < <><Left>
        "imap / //<Left>   // for rudy

    "move the display line-by-line
        nnoremap j gj
        nnoremap k gk
        vnoremap j gj
        vnoremap k gk

        nnoremap <silent><C-e> :NERDTree<CR>
    "???どっちか   
    "Alt key カーソル位置を移動する前に戻す
""        nnoremap <M-Right> <C-i>
""        nnoremap <M-Left> <C-o>
""        nnoremap <C-o> :OpenFile<CR>

    "'Browser page reading short cut' application
        nnoremap <C-Up> gg
        nnoremap <C-Down> <S-g>
        "?コマンドは1種類
        ""nnoremap <Home> gg

"これを有効にすればCtrl+Tabが利用できるようになるが、別途インストールが必要なため、導入をしない。よってCtrl+Tabによるショートカットは利用しない
"        *vt100.translation: #override \n\
"            Ctrl ~Shift <Key>Tab: string(0x1b) string("[27;5;9~") \n \
"            Ctrl Shift <Key>Tab: string(0x1b) string("[27;6;9~") \n

    "Ctrl + Tab が使えないため、保留
        if 0
            nnoremap <C-w> :<C-u>close<CR>
            nnoremap <C-Tab> :<C-u>echo "bbb"<CR>
            nnoremap <C-Tab> <C-w><C-w>
        endif

        ""nnoremap <C-Tab> :echo "abc"<CR>

"数字指定してインデントする
        xnoremap <Tab> >
        xnoremap <S-Tab> <
        
    inoremap <S-Tab> <Esc><<i

" @マークに元からマッピングされていたものを無視しているため、用調整
"    nnoremap <C-@> :<C-u>NeoComplCacheToggle<CR>

    " For cursor moving in insert mode(Not recommended)
    " neocomplcacheの設定についてはこのブログが参考になる
    " http://yuu-glassdog.hatenablog.com/entry/2014/08/08/124748
    "inoremap <expr><Left> neocomplcache#close_popup() . "\<Left>"
    "inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
    "inoremap <expr><Up> neocomplcache#close_popup() . "\<Up>"
    "inoremap <expr><Down> neocomplcache#close_popup() . "\<Down>"

    "入力モードで素早くjjしてエスケープ
    inoremap jj <Esc>

    "open vimrc
"        nmap <F1> :<C-u>!eog ~/vim-setting/doc/cheatsheet_1366x768.png<CR>
        nnoremap <F2> :<C-u>!eog ~/vim-setting/doc/cheatsheet_1366x768.png<CR>
        nnoremap <F3> :<C-u>vim <C-r><C-w> **\|cw<CR>

        nnoremap <F6> :<C-u>split ~/vim-setting/basic.vim<CR>
        nnoremap <F7> :<C-u>split ~/vim-setting/dein.toml<CR>
        nnoremap <F8> :<C-u>split ~/vim-setting/dein_lazy.toml<CR>

        "nnoremap <F6> :<C-u>split ~/.vim/plug.vim<CR>
        "nnoremap <S-F6> :<C-u>split ~/vim-setting/plug.vim<CR>

        nnoremap <F8> :<C-u>source $MYVIMRC<CR>
"                    \ :source $MYGVIMRC<CR>

    " Natural.
    nnoremap Y y$

    " Do not set to register.
    nnoremap x "_x
    vnoremap x "_x
    nnoremap X "_X
    vnoremap X "_X

    nnoremap s "_s
    vnoremap s "_s
    nnoremap S "_S
    vnoremap S "_S

    " For tartminal mode.
    cnoremap <C-p> <Up>
    cnoremap <C-n> <Down>
    cnoremap <C-b> <Left>
    cnoremap <C-f> <Right>
    cnoremap <C-a> <Home>
    cnoremap <C-e> <End>
    cnoremap <C-d> <Del>

    " #で検索後に置換入力状態にする.
    nmap # :%s/<C-r>///g<Left><Left>
    "nmap ## :%s/<C-r>///gc<Left><Left><Left>

    " bufferの進み戻り
    nnoremap <C-H> :bp<enter>
    nnoremap <C-L> :bn<enter> 
    " マークダウンでの折りたたみをしない
    let g:vim_markdown_folding_disabled=1
"-----------------------------------------------------------
"カーソル位置の保存
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
" 全角スペースの表示 for ZenkakuSpace
" 名無しのvim使いさん著、Vimテクニックバイブルp43参照
scriptencoding utf-8
augroup highlightIdegraphicSpace
    autocmd!
    autocmd ColorScheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
    autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

"これ以降でカラースキーム設定しなければ、エラーが出るらしい"
"---------------------------------------------------------
"if !has('nvim')
"予測変換 auto correct indicater
"URL : http://io-fia.blogspot.jp/2012/11/vimvimrc.html
"補完候補が一つでもポップアップ表示
 "   set completeopt=menuone
    "文字列を一文字ずつ分割して文字のリストにする
 "   for k in split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ_",'\zs')
 "       exec "imap " . k . " " . k . "<C-N><C-P>"
 "   endfor
 "   imap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"
"endif
"----------------------------------------------------------
"コマンドで、対応する'h'もしくは'cpp'を開く
    command! OpenFile call OpenFileFunc()
    command! OF call OpenFileFunc()
    function! OpenFileFunc()

"cppならhを、hならcppを開くようにする
        let l:file_name = expand("%:r")
        if expand("%:e")=="h"
            let l:extension = expand("cpp")
        elseif expand("%:e")=="cpp"
            let l:extension = expand("h")
        else
            echo "Not available"
            return '0'
        endif

"splitで開く        
        if filereadable(l:file_name . '.' . l:extension)
            let l:ex_code = l:file_name . '.' . l:extension
            execute 'vs ' . l:ex_code
            return '1'
        endif

    endfunction

"==============================================
"実行環境の情報を記入するゾ
    command! EnvInfo call EnvInfo()
    function! EnvInfo()
        " carnel version.
        execute ':r! uname -r'
        " python version.
        execute ':r! python -V'
        " Os version.
        execute ':r! cat /etc/lsb-release'
        " ros version.
        execute ':r! rosversion -d'
    endfunction
"==============================================
"自動で、対応する'h'もしくは'cpp'を開く
"    autocmd BufNewFile *.cpp 0r $HOME/.vim/comment.txt
    
    let g:open_file_auto_enable = 0

    augroup Robocup-vimrc
        autocmd!
    
        if g:open_file_auto_enable
            autocmd BufNewFile,BufRead *.cpp,*.h call OpenFileAutoFunc()
        endif
""        autocmd func_name * w
    augroup END
    
    function! OpenFileAutoFunc()
        if OpenFileFunc()
"            normal <C-w>w
        endif
    endfunction
"----------------------------------------------------------
"タブをスペース4つに変換
" インデントの色付けを綺麗に行うために必要
    augroup ConvertTabsToSpaces
        autocmd!
            autocmd BufRead * execute 'retab'
"           autocmd BufRead * execute '%!expand -t 4'
    augroup END
"----------------------------------------------------------
augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.tex setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.md setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.launch setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.{html,htm,js,ts,vue*} setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

augroup fileTypeColorscheme
    autocmd!
    autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html
    autocmd BufNewFile,BufRead *.launch set filetype=html
augroup END

"colorscheme
    syntax enable
"    source color.vimrc
        set hlsearch
      
        set t_Co=256

        colorscheme default
        set background=dark
        "set background=light

"        colorscheme molokai
"        colorscheme monokai
"        colorscheme badwolf
"        colorscheme goodwolf
"        colorscheme kitchen
"        colorscheme shine
"        colorscheme pencil
"        colorscheme kalisi
"        colorscheme moonshine_minimal
"        colorscheme moonshine_lowcontrast
"        colorscheme hybrid
"        colorscheme deus
"        colorscheme iceberg
"        colorscheme spacegray
"        colorscheme gruvbox
        colorscheme tender

" 背景を透けさせる
"    highlight Normal ctermbg=none
