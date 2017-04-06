"~~~My Plugins here~~~
"	call dein#add({path to dein.vim directory})

"    call dein#add('Shougo/neocomplcache')
        let g:acp_enableAtStartup = 0
        let g:neocomplcache_enable_at_startup = 1
        let g:neocomplcache_enable_smart_case = 1
        let g:neocomplcache_min_syntax_length = 3
        let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

"    call dein#add('Shougo/neocomplete.vim')
    " comment : vim7.3$B0J>e$+$D!"(Blua$B$,F3F~$5$l$F$$$k$3$H$,I,MW(B
"   " comment : need lcd 
"               vim$BMQ$NJd40%W%i%0%$%s(B
"               (sudo apt-get install lua5.2)$B$G$b(Blua$B$,M-8z$K$J$i$J$+$C$?(B

"	call dein#add('Shougo/deoplete.nvim')
"	" comment : neovim$BMQ$NJd40%W%i%0%$%s(B
"	            $B%=!<%9%U%!%$%k$O(Bpython3$B$G=q$/(B
"	            python3$B$NFq0WEY$O$+$J$jDc$/!"%5%s%W%k$r8+$l$P=q$-49$(2DG=$H$N$3$H(B
"	call dein#add('Shougo/unite.vim') 
    " comment : need python3 install
    "           $B%U%!%$%k$NA`:n$r(Bvim$B$G$d$k(B

"    call dein#add('Shougo/vimshell.vim')
    " comment : ':VimShell'
"    call dein#add('Shougo/vimproc')
    " comment : vim$B$N9bB.2=(B

"    call dein#add('Shougo/neosnippet')
"    call dein#add('Shougo/neosnippet-snippets')
    " comment : http://kazuph.hateblo.jp/entry/2013/01/19/193745
    
        " <TAB>: completion.
        " inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
        inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
        
        " Plugin key-mappings
        imap <C-k>     <Plug>(neosnippet_expand_or_jump)
        smap <C-k>     <Plug>(neosnippet_expand_or_jump)
        
        " SuperTab like snippets behavior.
        " imap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
        imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
        smap <expr><TAB> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
            
        " For snippet_complete marker.
        if has('conceal')
            set conceallevel=2 concealcursor=i
        endif

        let g:neocomplcache_dictionary_filetype_lists = {
            \ 'default' : '',
            \ 'robocup' : $HOME.'/dotfiles/dict/robocup.dict',
            \ }
        let g:neosnippet#snippets_directory = '~/dotfiles/snipmate/'
    
"    call dein#add('haya14busa/incsearch.vim')
        nmap / <Plug>(incsearch-forward)
        map ? <plug>(incsearch-background)
        map g/ <plug>(incsearch-stay)
    " comment : give color to some search word

"    call dein#add('vim-Scripts/AnsiEsc.vim')
    " comment : color log file 

"    call dein#add('scrooloose/nerdtree')
    " comment : it is the God Plugin
    "           let ':NERDTree'!!
    
"    call dein#add('scrooloose/nerdcommenter')

"    call dein#add('osyo-manga/vim-anzu')
    " mapping
    " when you want to display it in screen,change this
        if 0    " if 1
            nmap n <Plug>(anzu-n-with-echo)
            nmap N <Plug>(anzu-N-with-echo)
        else    " if 0
            nmap n <Plug>(anzu-mode-n)
            nmap N <Plug>(anzu-mode-N)
        endif
        nmap * <Plug>(anzu-star-with-echo)
        nmap # <Plug>(anzu-sharp-with-echo) 
    " clear status
        nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
    " statusline
        set statusline=%{anzu#search_status()}
    " comment :
    "           if you search 'word', word(12/51) in command line

"    call dein#add('osyo-manga/vim-over')
    " command : when you '%s/word1/word2/g', 
    "           paint ward after ':OverCommandLine'!
"    call dein#add('nathanaelkane/vim-indent-guides')
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

"    call dein#add('Shougo/denite.nvim')
    "unite reinforce
    "
"    call dein#add('miyakogi/seiya.vim')
"    let g:seiya_auto_enable=1
    " Default value: ['ctermbg']
"   let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']

"	call dein#add('')
" --- Please add new plugin ---


