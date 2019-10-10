" Plugins

call plug#begin('~/.local/share/nvim/plugged')

" edit
Plug 'gcmt/wildfire.vim'
Plug 'godlygeek/tabular'
Plug 'Raimondi/delimitMate'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'Chiel92/vim-autoformat', {'on': 'Autoformat'}
Plug 'machakann/vim-swap'
Plug 'christoomey/vim-sort-motion'

" quick motion
Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'
Plug 'gregsexton/MatchTag'

" display
Plug 'airblade/vim-gitgutter'
Plug 'gorodinskiy/vim-coloresque'
Plug 'hzchirs/vim-material'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'

" search
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'dyng/ctrlsf.vim', {'on': '<Plug>CtrlSFVwordExec'}
Plug 'ggVGc/vim-fuzzysearch'

" tools
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'embear/vim-localvimrc'
Plug 'vim-syntastic/syntastic'
Plug 'eshion/vim-sync'
Plug 'skywind3000/asyncrun.vim'

" complete
" Plug 'Valloric/YouCompleteMe', {'do': './install.py'}

" javascript
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'heavenshell/vim-jsdoc', {'for': ['javascript', 'jsx', 'typescript']}
Plug 'Quramy/tsuquyomi'
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'ryanolsonx/vim-lsp-javascript'


call plug#end()

"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" Color scheme related

"For Neovim > 0.1.5 and Vim >atch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
""Based on Vimatch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
    set t_8f=^[[38;2;%lu;%lu;%lum  " Needed in tmux
    set t_8b=^[[48;2;%lu;%lu;%lum  " Ditto
    set termguicolors
endif

" Dark
set background=dark
colorscheme vim-material

" Palenight
" let g:material_style='palenight'
" set background=dark
" colorscheme vim-material

" Oceanic
" let g:material_style='oceanic'
" set background=dark
" colorscheme vim-material

" Light
" set background=light
" colorscheme vim-material


set t_Co=256
set background=dark


syntax on

set ttyfast
set lazyredraw
set noshowcmd
set nocompatible
set shortmess=atI

" Settings
set number
set nowrap
" Copy indent from previous line
set autoindent
" Enable smart indent. it add additional indents whe necessary
set smartindent
" Replace tabs with spaces
set expandtab
" Whe you hit tab at start of line, indent added according to shiftwidth value
set smarttab
" number of spaces to use for each step of indent
set shiftwidth=4
" Number of spaces that a Tab in the file counts for
set tabstop=4
" Same but for editing operation (not shure what exactly does it means)
" but in most cases tabstop and softtabstop better be the same
set softtabstop=4
" Round indent to multiple of 'shiftwidth'.
" Indentation always be multiple of shiftwidth
" Applies to  < and > command
set shiftround
" Disable backups file
set nobackup
" Disable vim common sequense for saving.
" By defalut vim write buffer to a new file, then delete original file
" then rename the new file.
set nowritebackup
" Disable swp files
set noswapfile
" Do not add eol at the end of file.
set noeol
" Buffer will be hidden instead of closed when no one display it
set hidden
" Auto reload changed files
set autoread
" Always change current dirrectory to current-editing-file dir
set autochdir
" Indicates fast terminal connection
set ttyfast

set modifiable


"==========================================
" FileEncode Settings 文件编码,格式
"==========================================
" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" 下面这句只影响普通模式 (非图形界面) 下的 Vim
set termencoding=utf-8
" Use Unix as the standard file type
set ffs=unix,dos,mac

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m
" 合并两行中文时，不在中间加空格
set formatoptions+=B

" Show file name in window title
set title
" Mute error bell
set novisualbell
" Numbers of rows to keep to the left and to the right off the screen
set scrolloff=7
" Numbers of columns to keep to the left and to the right off the screen
set sidescrolloff=7
" Highlight search results
set hlsearch
" Ignore case in search patterns
set ignorecase
" Override the 'ignorecase' option if the search patter ncontains upper case characters
set smartcase
" Live search. While typing a search command, show where the pattern
set incsearch

autocmd InsertEnter * :set norelativenumber " no relativenumber in insert mode
autocmd InsertLeave * :set relativenumber   " show relativenumber when leave insert mode


" Key binding

" Quick move in insert mode
inoremap <C-o> <Esc>o
inoremap <C-a> <Home> " not working
inoremap <C-e> <End> " not working


" select all
noremap <Leader>sa ggVG

" Disable higlighting search result on Enter key
nnoremap <silent> <cr> :nohlsearch<cr><cr>

" Clipboard
" set clipboard=unnamed
vnoremap <C-c> "*y
" vnoremap Y "+y

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

nnoremap ; :

" leader key
let mapleader = ","
nnoremap <leader>e :q!<CR>
nnoremap <leader>E :qa!<CR>
nmap <leader>src :source ~/.config/nvim/init.vim<CR>
nmap <leader>w :w!<CR>
nmap <leader>i :split<CR>
nmap <leader>v :vsplit<CR>

" Tab navtigation
nnoremap H :tabprevious<CR>
nnoremap L :tabnext<CR>

" map jk to escape
inoremap jk <esc>

" 快速移动
nnoremap j gj
nnoremap k gk
nnoremap 0 ^
nnoremap <C-j> 5j
nnoremap <C-k> 5k
nnoremap <C-l> 5l
nnoremap <C-h> 5h
vnoremap <C-j> 5j
vnoremap <C-k> 5k
vnoremap <C-l> 5l
vnoremap <C-h> 5h

" 退出
nnoremap <leader>e :q!<CR>
nnoremap <leader>E :qa!<CR>

nmap <leader>w :w!<CR>

nmap <leader>i :split<CR>
nmap <leader>v :vsplit<CR>

" 缩进
vnoremap < <gv
vnoremap > >gv

" Plugin Configs

" [NERDtree]
" ====================================
" Display current file in the NERDTree ont the left
nmap <leader>f :NERDTreeToggle<CR>
nmap <leader>r :NERDTreeFind<CR>

let g:airline_theme = 'material'
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

" Tell NERDTree to display hidden files on startup
let NERDTreeShowHidden=1

" Disable bookmarks label, and hint about '?'
" let NERDTreeMinimalUI=1
let NERDTreeWinPos = "right"
let NERDTreeShowBookmarks = 1
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc', '\.pkl', '\.jpeg', '\.png', '\.class']
let NERDTreeChDirMode = 2

" [ctrlp]
" ====================================
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](node_modules|target|dist|coverage)|\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
    \ }
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_mruf_relative = 1
let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*'

" [vim-vue]
" ====================================
let g:vue_disable_pre_processors = 1
autocmd FileType vue syntax sync fromstart
" au BufRead,BufNewFile *.vue set filetype=html
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css


" [file type]
" ====================================
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType javascript,json,css,scss,html set tabstop=2 shiftwidth=2 expandtab ai
autocmd BufReadPre * if getfsize(expand("%")) > 10000000 | syntax off | endif

" [emmet]
" ====================================
let g:user_emmet_leader_key = 'zz'

" [localvimrc]
" ====================================
let g:localvimrc_ask = 0

" [Fugitive]
" ====================================

" Blame on current line
nmap <silent> <leader>b :Gblame<cr>
" Blame on all selected lines in visual mode
" vmap <silent> <leader>b :Gblame<cr>
" Git status
nmap <silent> <leader>gst :Gstatus<cr>
" like git add
nmap <silent> <leader>ga :Gwrite<cr>
" like git checkout
nmap <silent> <leader>gr :Gread<cr>
" git diff
nmap <silent> <leader>gd :Gvdiff<cr>
" git commit
nmap <silent> <leader>gc :Gcommit<cr>
" git commit all
nmap <silent> <leader>gca :Gcommit -a<cr>
" git fixup previous commit
nmap <silent> <leader>gcf :Gcommit -a --amend<cr>


" [Indent guides]
" ====================================
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#3a4c55   ctermbg=2
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#465c67 ctermbg=2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#314049   ctermbg=2
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#2d3b43 ctermbg=2

" [MatchTagh]
" ====================================
" hi MatchParen ctermbg=NONE ctermfg=10 guibg=#34454e guifg=#ffffff cterm=BOLD gui=BOLD
hi MatchParen ctermbg=NONE ctermfg=10 guibg=#34454e

" [CtrlF]
" ====================================
noremap <C-f> :CtrlSF 
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_default_root = 'project'

" [YouCompleteMe]
" ====================================
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0
let g:ycm_add_preview_to_completeopt = 0
" autocmd BufWritePost *.ts YcmForceCompileAndDiagnostics

" [Syntastic]
" ====================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_w = 0
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_javascript_checkers=['eslint']
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_mode_map = { 'mode': 'passive' }
" let g:syntastic_debug = 3

" [vim-typescript]
" ====================================
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
let g:tsuquyomi_use_dev_node_module = 1
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" [vim-sync]
" ====================================
" Upload file on save
autocmd BufWritePost * :call SyncUploadFile()

"Load local settings
if filereadable(expand("~/.vim/vimrc.local"))
  source ~/.vim/vimrc.local
endif

" ----------------------------------------------------------------------------
" vim-easymotion
" ----------------------------------------------------------------------------
map <space> <Plug>(easymotion-s2)
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
let g:EasyMotion_smartcase = 1

" ----------------------------------------------------------------------------
" wildfire.vim
" Mapping: <Enter>
" ----------------------------------------------------------------------------
let g:wildfire_objects = {
    \ "*" : ["i'", 'i"', "i)", "i]", "i}", "ip"],
    \ "html,xml" : ["at"],
\ }
let g:wildfire_fuel_map = "<ENTER>"
let g:wildfire_water_map = "<BS>"
