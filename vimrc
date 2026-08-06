" This must be first, because it changes other options as a side effect.
set nocompatible

call plug#begin('~/.vim/plugged')

" Plugins
Plug 'sheerun/vim-polyglot'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-git'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-projectionist'
Plug 'duncanparkinson/vim-ragtag'
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular', { 'on': 'Tabularize' }
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'mbbill/undotree/'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'kana/vim-textobj-user'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'farmergreg/vim-lastplace'
Plug 'christoomey/vim-conflicted'
Plug 'hwartig/vim-seeing-is-believing'
Plug 'reedes/vim-colors-pencil'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ycm-core/YouCompleteMe', { 'on': [] }
Plug 'pangloss/vim-javascript'
Plug 'davidoc/taskpaper.vim'
Plug 'chrisbra/csv.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'kana/vim-textobj-indent'
Plug 'christoomey/vim-sort-motion'
Plug 'elzr/vim-json'
Plug 'christoomey/vim-tmux-runner'
Plug 'tommcdo/vim-exchange'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'Olical/vim-enmasse'
Plug 'lifepillar/vim-solarized8'
Plug 'reedes/vim-thematic'
Plug 'duncanparkinson/nova-vim'
Plug 'twerth/ir_black'
Plug 'jacoborus/tender.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'leafgarland/typescript-vim'
Plug 'rhysd/git-messenger.vim'
Plug 'rhysd/vim-healthcheck'
Plug 'unblevable/quick-scope'
Plug 'mattn/emmet-vim'
Plug 'vim-test/vim-test'
Plug 'rizzatti/dash.vim', { 'on': '<Plug>DashSearch' }
Plug 'AndrewRadev/deleft.vim'
Plug 'dense-analysis/ale'
Plug 'kana/vim-textobj-entire' "disabled because it was causing weird errors with vim-autotag
Plug 'rishi-opensource/vim-claude-code'

" Plug 'tpope/vim-haml'
" Plug 'tpope/vim-rsi'
" Plug 'majutsushi/tagbar'
" Plug 'sjl/gundo.vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'skwp/greplace.vim'
" Plug 'vim-scripts/taglist.vim'
" Plug 'edsono/vim-matchit'
" Plug 'vim-ruby/vim-ruby'
" Plug 'rking/ag.vim'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'duncanparkinson/vim-spec-runner'
" Plug 'chriskempson/base16-vim'
" Plug 'vim-scripts/YankRing.vim'
" Plug 'edkolev/tmuxline.vim'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'maxbrunsfeld/vim-yankstack'
" Plug '~/.vim/dracula_pro'
" Plug 'gosukiwi/vim-atom-dark'
" Plug 'joshdick/onedark.vim'
" Plug 'joshdick/airline-onedark.vim'
" Plug 'AndrewRadev/switch.vim'
" Plug 'lloeki/vim-one-colorschemes'
" Plug 'justinmk/vim-sneak'
" Plug 'vim-scripts/Align'
" Plug 'nacitar/terminalkeys.vim'
" Plug 'git-time-metric/gtm-vim-plugin'
" Plug 'tomasr/molokai'
" Plug 'reedes/vim-pencil'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'rakr/vim-one'
" Plug 'rakr/vim-two-firewatch'
" Plug 'sonph/onehalf', { 'rtp': 'vim/' }
" Plug 'natebosch/vim-lsc'
" Plug 'github/copilot.vim'
" Plug 'dansomething/vim-eclim'
" Plug 'craigemery/vim-autotag'
" Plug 'jremmen/vim-ripgrep'
" Plug 'preservim/nerdtree'

call plug#end()

" Enable focus events in terminal (required for FocusGained/FocusLost)
let &t_fe = "\<Esc>[?1004h"
let &t_fd = "\<Esc>[?1004l"
execute "set <FocusGained>=\<Esc>[I"
execute "set <FocusLost>=\<Esc>[O"

runtime! macros/matchit.vim

filetype plugin indent on

" ================ General Config ====================
set exrc                        "Enable project-specific vimrcs
let mapleader=","
set number                      "Line numbers are good
" set relativenumber
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell t_vb=            "No sounds
set autoread                    "Reload files changed outside vim
set splitbelow
set splitright
set hidden
syntax enable
set wrap
set linebreak

let g:thematic#defaults = {
\ 'airline-theme': 'solarized',
\ 'laststatus': 2,
\ }
let g:thematic#themes = {
\  'solarized_light': {
\    'colorscheme': 'solarized8',
\    'airline-theme': 'solarized',
\    'background': 'light',
\  },
\  'solarized_dark': {
\    'colorscheme': 'solarized8',
\    'airline-theme': 'solarized',
\    'background': 'dark',
\  },
\  'dracula': {
\    'colorscheme': 'dracula_pro',
\    'airline-theme': 'dracula_pro',
\    'background': 'dark',
\  },
\  'alucard': {
\    'colorscheme': 'dracula_pro_alucard',
\    'airline-theme': 'dracula_pro',
\    'background': 'light',
\  },
\  'dracula_van_helsing': {
\    'colorscheme': 'dracula_pro_van_helsing',
\    'airline-theme': 'dracula_pro',
\    'background': 'dark',
\  },
\  'pencil_light': {
\    'airline-theme': 'papercolor',
\    'colorscheme': 'pencil',
\    'background': 'light',
\  },
\  'pencil_dark': {
\    'airline-theme': 'papercolor',
\    'colorscheme': 'pencil',
\    'background': 'dark',
\  },
\  'grb': {
\    'airline-theme': 'papercolor',
\    'colorscheme': 'grb256',
\    'background': 'dark',
\  },
\  'dark': {
\    'colorscheme': 'dracula_pro',
\    'airline-theme': 'dracula_pro',
\    'background': 'dark',
\  },
\  'light': {
\    'colorscheme': 'dracula_pro_alucard',
\    'airline-theme': 'dracula_pro',
\    'background': 'light',
\  },
\  'cyf': {
\    'colorscheme': 'cyf_demo',
\    'airline-theme': 'papercolor',
\    'background': 'light',
\  },
\  'default': {
\    'colorscheme': 'dracula_pro',
\    'airline-theme': 'dracula_pro',
\    'background': 'dark',
\  },
\}
let s:cache = expand('~/.cache/current-theme')
let g:thematic#theme_name = filereadable(s:cache) ? trim(readfile(s:cache)[0]) : 'dracula'
command! Dark Thematic dracula
command! Light Thematic alucard
command! CYF Thematic cyf
function! s:SyncThemeFromCache()
  let cache = expand('~/.cache/current-theme')
  if !filereadable(cache) | return | endif
  let theme = trim(readfile(cache)[0])
  if theme !=# g:thematic#theme_name
    execute 'Thematic ' . theme
  endif
endfunction
autocmd FocusGained * call s:SyncThemeFromCache()

set gdefault " substitute all matches by default. Use /g to disable

" Insert only one space when joining lines that contain sentence-terminating
" punctuation like `.`
set nojoinspaces

" set winwidth=180
" set winheight=5
" set winminheight=5
" set winheight=999

" set colorcolumn=80

" This makes RVM work inside Vim. I have no idea why.
set shell=bash

" change cursor for insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

" ================ Spell Check =====================
set spelllang=en_gb
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Spell-check Markdown files
autocmd FileType markdown setlocal spell

" Spell-check Git messages
autocmd FileType gitcommit setlocal spell

" Set spellfile to location that is guaranteed to exist,
" can be symlinked to Dropbox or kept in Git
" and managed outside of thoughtbot/dotfiles using rcm.
set spellfile=$HOME/.vim-spell-en.utf-8.add

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" ================ Search Settings  =================
set incsearch        "Find the next match as we type the search
set ignorecase smartcase  " make searches case-sensitive only if they contain upper-case characters
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Display tabs and trailing spaces visually
" set list listchars=tab:\ \ ,trail:ÃÂ·
" set list listchars=tab:>.,extends:#,nbsp:.,trail:â¢
set list listchars=tab:>.,extends:#,nbsp:.,trail:•

" " Highlight EOL whitespace,
" " http://vim.wikia.com/wiki/Highlight_unwanted_spaces
" highlight ExtraWhitespace ctermbg=darkred guibg=#382424
" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkred guibg=darkred
" autocmd BufWinEnter * match ExtraWhitespace /\s\+$/


" ================ Key Maps =========================
" sensible wrap handling
nmap k gk
nmap j gj

"make Y consistent with C and D
nnoremap Y y$
vnoremap y myy`y
vnoremap Y myY`y
vnoremap <expr>y "my\"" . v:register . "y`y"

imap <c-h> <space>=><space>

" nnoremap <C-n> :NERDTreeToggle<cr>

" insert timestamp in command line mode
cnoremap <C-t> <C-r>=strftime("%Y%m%d%H%M%S")<cr>
nnoremap <F3> i<C-R>=strftime("%Y%m%d%H%M%S")<CR><Esc>
inoremap <F3> <C-R>=strftime("%Y%m%d%H%M%S")<CR>
function! InsertTimeStamp()
  :normal i<C-r>=echo strftime("%Y%m%d%H%M%S")<cr>
endfunction

vmap > >gv
vmap < <gv

imap ;; <esc>A;<esc>

imap <C-s> <Esc>:w<cr>
nmap <C-s> <Esc>:w<cr>
nmap <C-q> <Esc>:q<cr>

" Ruby refactoring
nnoremap <Leader>: :%s/:\([^ ]*\)\(\s*\)=>/\1:/gc<CR>
nnoremap <Leader>B :%s/{\([^ ]\)/{ \1/gc\|%s/\([^ ]\)}/\1 }/gc<CR>

" Use ripgrep for :Files so .gitignore is respected and heavy dirs excluded.
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow -g "!.git" -g "!vendor" -g "!node_modules" -g "!tmp" -g "!log" -g "!coverage" -g "!public/assets" -g "!public/packs" -g "!public/vite*" -g "!.bundle"'

nnoremap <Leader>b :Buffers<cr>
nnoremap <Leader>F :Files %:p:h<cr>
nnoremap <Leader>f :Files<cr>

" monoco directory-scoped fuzzy-find
nnoremap <Leader>gF :Files supabase/functions<cr>
nnoremap <Leader>gM :Files supabase/migrations<cr>
nnoremap <Leader>gU :Files app/src<cr>
nnoremap <Leader>gE :Files app/tests/e2e<cr>

nmap yp :set paste<CR>"*]p:set nopaste<cr>

" test runner bindings
autocmd FileType ruby map <Leader>aa :!spring rspec spec/ features/<cr>
autocmd FileType ruby map <Leader>au :!spring rspec spec/ --exclude-pattern "spec/system/**/*_spec.rb"<cr>
autocmd FileType ruby map <Leader>as :!spring rspec spec/system<cr>
nmap <silent> <leader>T :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>lt :TestLast<CR>
" Single test / single file run inline and blocking (:!); the whole suite runs
" async in a tmux pane via dispatch, results to quickfix.
let test#strategy = {
  \ 'nearest': 'basic',
  \ 'file': 'basic',
  \ 'last': 'basic',
  \ 'suite': 'dispatch',
  \}

" vim-test's nearest-test patterns are line-based, so a test name prettier has
" wrapped onto its own line (it(\n "name",) never matches. Append a pattern for
" bare quoted-string lines. Must run after the autoload file loads, because it
" assigns the patterns dict unconditionally.
function! s:PatchVimTestPatterns() abort
  if exists('s:vim_test_patterns_patched') | return | endif
  silent! call test#javascript#has_package('')
  if !exists('g:test#javascript#patterns') | return | endif
  " \zs\ze trims match[0] for whole_match runners (vitest); the capture group
  " serves group-capture runners (denotest)
  let l:split_name = '\v^\s*["''`]\zs(.{-})\ze["''`],?\s*$'
  if index(g:test#javascript#patterns['test'], l:split_name) < 0
    call add(g:test#javascript#patterns['test'], l:split_name)
  endif
  let s:vim_test_patterns_patched = 1
endfunction

augroup VimTestMultilinePatterns
  autocmd!
  autocmd FileType typescript,typescriptreact,javascript,javascriptreact
        \ call <SID>PatchVimTestPatterns()
augroup END

map <Leader>, <c-^>
map <Leader>- <C-w>J
map <Leader>. :A<cr>
map <Leader>\| <C-w>H
nnoremap <Leader>/ :nohlsearch<cr>
map <Leader>dt :topleft 30 :split<cr>:e ~/Dropbox/Public/Notes/Daily\ Todos\.taskpaper<cr>
vnoremap <leader>gev :call ExtractVariable()<cr>
map <Leader>giv :call InlineVariable()<cr>
map <Leader>gR :call ShowRoutes()<cr>
map <Leader>gb :Git blame -w -C -C -C<CR>
map <Leader>gc :Git commit -v<CR>
map <Leader>gg :tabe Gemfile<cr>
map <Leader>gs :G<CR><C-w>20+
map <Leader>gw :Gwrite<CR>
map <Leader>lc :lclose<CR>
map <Leader>lo :lopen<CR>
map <Leader>n :Rename <C-R>=expand("%:t")<CR>
map <Leader>ocf :OpenChangedFiles<CR>
" map <Leader>l :PromoteToLet<cr>
" nmap <leader>p <Plug>yankstack_substitute_older_paste
" nmap <leader>P <Plug>yankstack_substitute_newer_paste
map <Leader>qc :cclose<CR>
map <Leader>qo :copen<CR>
map <Leader>rc :Econtroller<Space>
map <Leader>rg :Egenerate<Space>
map <Leader>rh :Ehelper<Space>
map <Leader>ri :Eintegrationtest<Space>
map <Leader>rj :Ejavascript<Space>
map <Leader>rl :Elib<Space>
map <Leader>rm :Emodel<Space>
map <Leader>rs :Estylesheet<Space>
map <Leader>rt :Espec<Space>
map <Leader>rv :Eview<Space>
map <Leader>sj :SplitjoinSplit<cr>
map <Leader>sk :SplitjoinJoin<cr>
map <Leader>sws :StripTrailingWhitespaces<CR>
map <Leader>u :UndotreeToggle<CR>
map <Leader>vb :w<cr>:source ~/.vimrc<cr>:PlugInstall<cr>
map <Leader>vc yy:<C-f>p<CR>
map <Leader>ve :tabe ~/.vimrc<CR>
map <Leader>vg :tabe ~/.gvimrc<CR>
map <Leader>vr :w<cr>:so %<CR>
map <Leader>x :bn<CR>
map <leader>y "*y
map <Leader>z :bp<CR>

map <Leader># ysiw#
vmap <Leader># c#{<C-R>"}<ESC>
map <Leader>" ysiw"
vmap <Leader>" c"<C-R>""<ESC>
map <Leader>' ysiw'
vmap <Leader>' c'<C-R>"'<ESC>
map <Leader>( ysiw(
map <Leader>) ysiw)
vmap <Leader>( c( <C-R>" )<ESC>
vmap <Leader>) c(<C-R>")<ESC>
map <Leader>] ysiw]
map <Leader>[ ysiw[
vmap <Leader>[ c[ <C-R>" ]<ESC>
vmap <Leader>] c[<C-R>"]<ESC>
map <Leader>} ysiw}
map <Leader>{ ysiw{
vmap <Leader>} c{ <C-R>" }<ESC>
vmap <Leader>{ c{<C-R>"}<ESC>
map <Leader><Space> ysiw<Space>
vmap <Leader><Space> c<Space><C-R>"<Space><ESC>
map <Leader>- ysiw-
vmap <Leader>- c<% <C-R>" %><ESC>
map <Leader>= ysiw=
vmap <Leader>= c<%= <C-R>" %><ESC>

" Quick Fix last search
map <silent> <leader>q/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
" Ag for the last search.
map <silent> <leader>qa/ :execute "Ag '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>
" GitGrep the last search
map <silent> <leader>qg/ :execute "GitGrep '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

" ==============================
" Window/Tab/Split Manipulation
" ==============================
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j
nmap <C-t> <esc>:tabnew<CR>
nmap <C-w>t <esc>:tabnew<CR>
nnoremap <silent> vv :wincmd v<cr>
nnoremap <silent> ss :wincmd s<cr>
nnoremap <Up> :resize +2<cr>
nnoremap <Down> :resize -2<cr>
nnoremap <Left> :vertical resize -2<cr>
nnoremap <Right> :vertical resize +2<cr>
nnoremap <S-Up> :resize +10<cr>
nnoremap <S-Down> :resize -10<cr>
nnoremap <S-Left> :vertical resize -10<cr>
nnoremap <S-Right> :vertical resize +10<cr>

" ================ Appearance =======================
"tell the term has 256 colors
" set t_Co=256

" let &t_8f="\e[38;2;%ld;%ld;%ldm"
" let &t_8b="\e[48;2;%ld;%ld;%ldm"
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum

set termguicolors

" let g:dracula_italic = 0
" let g:dracula_colorterm = 0
" colorscheme dracula_pro
" set background=dark

" set the italic escape characters so they work!
set t_ZH=[3m
set t_ZR=[23m

" highlight Comment cterm=italic

" set cursorline
" set cursorcolumn " seems to cause slowness...

" ================ Status Line ======================
" set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
" set cmdheight=2

set laststatus=2 "always show the status line

" ================ Completion =======================
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=vendor/bundle/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*.class,*WEB-INF/classes/*,*WEB-INF/lib/*,*jxl/*,*.log
set wildignore+=*node_modules/*,FusionCharts*
set wildignore+=*bower_components/*
set wildignore+=*dist/*

" ================ Scrolling ========================
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Whitespace ======================
" via: http://rails-bestpractices.com/posts/60-remove-trailing-whitespace
" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()

" ===================== Comments =========================
" Don't add the comment prefix when I hit enter or o/O on a comment line.
set formatoptions-=or

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM AUTOCMDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>_ :wincmd _<cr>:wincmd \|<cr>

augroup vimrcEx
  " Clear all autocmds in the group
  autocmd!
  autocmd FileType text setlocal textwidth=78

  " automatically rebalance windows on vim resize
  autocmd VimResized * :wincmd =

  autocmd FileType gitcommit,help,taskpaper setlocal nolist

  "for ruby, autoindent with two spaces, always expand tabs
  autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber,note set ai sw=2 sts=2 et
  autocmd FileType python set sw=4 sts=4 et

  autocmd FileType ruby,eruby,javascript,coffeescript,haml,yaml compiler rspec

  autocmd! BufRead,BufNewFile *.sass setfiletype sass
  autocmd BufEnter *.cy.js  setlocal filetype=javascript.cypress
  autocmd BufEnter *.cy.jsx setlocal filetype=javascriptreact.cypress

  autocmd BufNewFile,BufReadPost *.md set filetype=markdown
  autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:&gt;
  autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;

  " " Indent p tags
  " autocmd FileType html,eruby if g:html_indent_tags !~ '\\|p\>' | let g:html_indent_tags .= '\|p\|li\|dt\|dd' | endif

  " add pwd to path (particularly to allow rails.vim to work with namespaces)
  " Disabled 2026-07-02: grows 'path' unboundedly over a session. Restore if
  " rails.vim namespace navigation regresses.
  " autocmd! BufNewFile,BufRead * let &path .= "," . expand("<afile>:p:h")

  autocmd Filetype gitcommit setlocal textwidth=72 nocursorline
augroup END

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " MULTIPURPOSE TAB KEY
" " Indent if we're at the beginning of a line. Else, do completion.
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" function! InsertTabWrapper()
"   let col = col('.') - 1
"   if !col || getline('.')[col - 1] !~ '\k'
"     return "\<tab>"
"   else
"     return "\<c-n>"
"   endif
" endfunction
" inoremap <expr> <tab> InsertTabWrapper()
" inoremap <s-tab> <c-p>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EXTRACT VARIABLE (SKETCHY)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ExtractVariable()
    let name = input("Variable name: ")
    if name == ''
        return
    endif
    " Enter visual mode (not sure why this is needed since we're already in
    " visual mode anyway)
    normal! gv

    " Replace selected text with the variable name
    exec "normal c" . name
    " Define the variable on the line above
    exec "normal! O" . name . " = "
    " Paste the original selected text to be the variable value
    normal! $p
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" INLINE VARIABLE (SKETCHY)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InlineVariable()
    " Copy the variable under the cursor into the 'a' register
    :let l:tmp_a = @a
    :normal "ayiw
    " Delete variable and equals sign
    :normal 2daW
    " Delete the expression into the 'b' register
    :let l:tmp_b = @b
    :normal "bd$
    " Remove trailing semicolon if the language uses them
    :let @b = substitute(@b, ';', '', '')
    " Delete the remnants of the line
    :normal dd
    " Go to the end of the previous line so we can start our search for the
    " usage of the variable to replace. Doing '0' instead of 'k$' doesn't
    " work; I'm not sure why.
    normal k$
    " Find the next occurence of the variable
    exec '/\<' . @a . '\>'
    " Replace that occurence with the text we yanked
    exec ':.s/\<' . @a . '\>/' . @b
    :let @a = l:tmp_a
    :let @b = l:tmp_b
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FIX INDENTATION IN FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! <SID>Reindent()
    " Preparation: save cursor position.
    let l = line(".")
    let c = col(".")
    " Do the business:
    normal gg=G
    call cursor(l, c)
endfunction
command! Reindent call <SID>Reindent()

"====================== tmux ==============================

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" Emacs-like beginning and end of line.
imap <c-e> <c-o>$
imap <c-a> <c-o>^

" nmap <C-n> :cnext<cr>
" nmap <C-p> :cprev<cr>

nmap <silent> gcp <c-_>p " comment paragraph

function! OpenChangedFiles()
  only " Close all windows, unless they're modified
  let status = system('git status -s | grep "^ \?\(M\|A\)" | cut -d " " -f 3')
  let filenames = split(status, "\n")
  if len(filenames) > 0
    exec "edit " . filenames[0]
    for filename in filenames[1:]
      exec "sp " . filename
    endfor
  end
endfunction
command! OpenChangedFiles :call OpenChangedFiles()

" AutoTag
" Seems to have problems with some vim files
let g:autotagExcludeSuffixes="tml.xml.text.txt.vim"
let g:autotagStartMethod='fork'

vnoremap p "_dP

" via: http://whynotwiki.com/Vim
" Ruby
" Use v or # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" v...s#  Wrap the selection in #{}
let g:surround_113 = "#{\r}"   " v
let g:surround_35  = "#{\r}"   " #

" Select text in an ERb file with visual mode and then press s- or s=
" Or yss- to do entire line.
let g:surround_45 = "<% \r %>"    " -
let g:surround_61 = "<%= \r %>"   " =

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROMOTE VARIABLE TO RSPEC LET
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PromoteToLet()
  :normal! dd
  :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()

let @s = 'I"A " +'

" The Silver Searcher
" Use ag over grep
set grepprg=ag\ --vimgrep\ $*
set grepformat=%f:%l:%c:%m

" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
" let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'

" ag is fast enough that CtrlP doesn't need to cache
" let g:ctrlp_use_caching = 0

" bind K to grep word under cursor
nnoremap K :execute 'Rg \b'.expand("<cword>").'\b'<CR>

" let g:ctrlp_match_window = 'max:50'

" let g:ctrlp_arg_map = 1

let g:user_emmet_leader_key='<C-E>'

" Seeing Is Believing
nmap <F5> <Plug>(seeing-is-believing-mark)
xmap <F5> <Plug>(seeing-is-believing-mark)
imap <F5> <Plug>(seeing-is-believing-mark)

nmap <F6> <Plug>(seeing-is-believing-run)
xmap <F6> <Plug>(seeing-is-believing-run)
imap <F6> <Plug>(seeing-is-believing-run)

" airline
let g:airline_powerline_fonts = 1
" let g:airline_theme = 'raven'
" let g:airline_theme = 'nova'
" let g:airline_theme = 'papercolor'
" let g:airline_theme = 'onedark'
" let g:airline_section_z = airline#section#create(['%{ObsessionStatus(''$'', '''')}', 'windowswap', '%3p%% ', 'linenr', ':%3v '])

" let g:gtm_plugin_status_enabled = 1
" function! AirlineInit()
"   if exists('*GTMStatusline')
"     call airline#parts#define_function('gtmstatus', 'GTMStatusline')
"     let g:airline_section_b = airline#section#create([g:airline_section_b, ' ', '[', 'gtmstatus', ']'])
"   endif
" endfunction
" autocmd User AirlineAfterInit call AirlineInit()

" tmuxline
let g:tmuxline_separators = {
   \ 'left' : '',
   \ 'left_alt': '|',
   \ 'right' : '',
   \ 'right_alt' : '|',
   \ 'space' : ' '}

let g:tmuxline_preset = {
     \'a'       : '#S',
     \'win'     : '#I:#W#F',
     \'cwin'    : '#I:#W#F',
     \'x'       : '#(battery-life)#(battery-time)',
     \'y'       : '#(~/.bin/weather.sh)',
     \'z'       : ['%R', '%d-%b-%Y'],
     \'options' : {'status-justify' : 'left'}}

" Faster sign updates for gitgutter (default 4s is too laggy for review work)
set updatetime=100

highlight! default link GitGutterAdd DiffAdd
highlight! default link GitGutterDelete DiffDelete
highlight! default link GitGutterChange DiffChange
highlight! default link GitGutterChangeDelete DiffChange

let g:spec_runner_dispatcher = '!{command}'

let g:dispatch_compilers = {
      \ 'bundle exec': '',
      \ 'spring': '',
      \ 'zeus': ''}

" Dash
nmap <silent> <leader>D <Plug>DashSearch

" Eclim
" let g:EclimCompletionMethod = 'omnifunc' " for use with YouCompleteMe

" " YouCompleteMe
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_auto_hover = ''
nmap <leader>H <plug>(YCMHover)
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_always_populate_location_list = 1
" Remove <Tab> from maps lest YCM hijack our mapping for UltiSnips
" let g:ycm_key_list_select_completion = ['<Down>']
" let g:ycm_key_list_previous_completion = ['<Up>']
imap <silent> <C-l> <Plug>(YCMToggleSignatureHelp)
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1,
      \ 'gitcommit': 1,
      \ 'typescript': 1,
      \ 'typescriptreact': 1,
      \ }

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" " Sneak
" " 2-character Sneak (default)
" nmap s <Plug>Sneak_s
" nmap S <Plug>Sneak_S
" " visual-mode
" xmap s <Plug>Sneak_s
" xmap S <Plug>Sneak_S
" " operator-pending-mode
" omap s <Plug>Sneak_s
" omap S <Plug>Sneak_S

function! ReloadChrome()
  wall
  execute ":silent !chrome-cli reload"
endfunction

" nmap <C-c> :call ReloadChrome()<CR>


command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

command! Gwnext Gwrite|next
command! Gwdelete Gwrite|bdelete

" replace word under cursor
nnoremap <Leader>gvr :%s/\<<C-r><C-w>\>//c<Left><Left>

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

let test#javascript#reactscripts#options = '--watchAll=false'
let g:test#javascript#cypress#file_pattern = '\v(__tests__/.*|(spec|test|cy))\.(js|jsx|coffee|ts|tsx)$|\.cy\.(js|jsx|ts|tsx)$'
autocmd BufEnter */cypress/**/* let g:test#javascript#runner = 'cypress'
autocmd BufEnter */cypress/tests/*
  \ let g:test#javascript#cypress#executable = fnamemodify(finddir('node_modules', expand('%:p:h').';'), ':h') . '/bin/cypress-component'
autocmd BufEnter */cypress/e2e/*
  \ let g:test#javascript#cypress#executable = finddir('node_modules', expand('%:p:h').';') . '/.bin/cypress'
autocmd BufLeave */cypress/**/* unlet! g:test#javascript#runner | unlet! g:test#javascript#cypress#executable

" monoco: delegate in-repo test running to `monoco test`, which routes to
" vitest / playwright / deno by path and cds itself; nearest arrives as --name and
" monoco maps it to the runner's own filter. vim-test stays native elsewhere
" (cross-project). Runner: vim/autoload/test/javascript/monoco.vim.
let g:test#custom_runners = {'JavaScript': ['monoco']}
autocmd BufEnter */monoco/* let g:test#javascript#runner = 'monoco'
autocmd BufLeave */monoco/* unlet! g:test#javascript#runner

" let g:EclimJavaValidate = 0
" let g:EclimFileTypeValidate = 0
" let g:lsc_server_commands = {'java': '/Users/duncan/code/java-language-server/dist/lang_server_mac.sh'}
" let g:ale_java_javac_classpath = '/Library/Tomcat/lib:WEB-INF/lib'
" let g:ale_java_javac_sourcepath = 'NotForDeployment/src:/Library/Tomcat/lib:WEB-INF/lib'
" let g:ale_java_eclipselsp_path = '/Users/duncan/Downloads/eclipse.jdt.ls'
" let g:ale_java_eclipselsp_workspace_path = '/Users/duncan/eclipse-workspace'
" let g:ale_linters = {
" \  'java': ['javac', 'eclipselsp']
" \ }
" let g:ale_java_javalsp_executable = '/Users/duncan/code/java-language-server/dist/lang_server_mac.sh'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 0

let g:ale_fixers = {
\ 'javascript': ['prettier', 'eslint'],
\ 'typescript': ['prettier', 'eslint'],
\ 'typescriptreact': ['prettier', 'eslint']
\ }
let g:ale_linters = {
\ 'java': ['javalsp'],
\ 'javascript': ['eslint'],
\ 'typescript': ['tsserver', 'eslint'],
\ 'typescriptreact': ['tsserver', 'eslint'],
\ 'ruby': []
\ }
let g:ale_completion_enabled = 1
let g:ale_typescript_tsserver_use_global = 0
let g:ale_linters_explicit = 1

" Code navigation via ALE's LSP clients (tsserver for app/, deno for edge fns).
" Buffer-local to TypeScript so gd/gr keep their built-in behaviour elsewhere.
augroup AleNavMaps
  autocmd!
  autocmd FileType typescript,typescriptreact,javascript,javascriptreact
        \ nmap <buffer> <silent> gd :ALEGoToDefinition<CR>|
        \ nmap <buffer> <silent> gy :ALEGoToTypeDefinition<CR>|
        \ nmap <buffer> <silent> gR :ALEFindReferences<CR>|
        \ nmap <buffer> <silent> <Leader>rn :ALERename<CR>|
        \ nmap <buffer> <silent> <Leader>k :ALEHover<CR>|
        \ nmap <buffer> <silent> <Leader>ca :ALECodeAction<CR>|
        \ nmap <buffer> <silent> <Leader>ad :ALEDetail<CR>|
        \ nmap <buffer> <silent> <Leader>oi :ALEOrganizeImports<CR>|
        \ nmap <buffer> <silent> [w :ALEPreviousWrap<CR>|
        \ nmap <buffer> <silent> ]w :ALENextWrap<CR>
augroup END

nnoremap <silent> <Leader>af :ALEFix<CR>

" monoco: mirror tools/format_and_lint.sh — prettier formats everything from
" the repo root (including supabase/functions and shared/), but eslint only
" runs inside app/, which has the only eslint config. The global TS fixers
" (prettier+eslint) are already right for app/; strip eslint elsewhere so
" ALEFix doesn't invoke it with no config. Prettier also owns json/md/yaml/css
" there, matching the root `npm run format`.
augroup MonocoAleFixers
  autocmd!
  autocmd BufNewFile,BufRead */projects/monoco/supabase/*.ts,*/projects/monoco/shared/*.ts
        \ let b:ale_fixers = ['prettier']
  autocmd BufNewFile,BufRead */projects/monoco/*.{json,md,yml,yaml,css,html}
        \ let b:ale_fixers = ['prettier']
  " Edge functions are Deno, not Node: tsserver can't resolve the @/ import
  " map in supabase/functions/deno.json, so hand those buffers to the deno LSP.
  autocmd BufNewFile,BufRead */projects/monoco/supabase/functions/*.ts
        \ let b:ale_linters = ['deno']
augroup END

augroup tsx_filetype
  autocmd!
  autocmd BufNewFile,BufRead *.tsx set filetype=typescriptreact
augroup END

let g:gutentags_enabled = 0
let g:gutentags_generate_on_write = 0
let g:gutentags_generate_on_new = 0
let g:gutentags_define_advanced_commands = 1
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_project_root = ['.git', '.hg', '.svn', 'Makefile', 'package.json']
let g:gutentags_ctags_extra_args = [
      \ '--fields=+l',
      \ '--extras=+q',
      \ '--exclude=.git',
      \ '--exclude=node_modules',
      \ '--exclude=log',
      \ '--exclude=tmp',
      \ '--exclude=vendor',
      \ '--exclude=public',
      \ '--exclude=build',
      \ '--exclude=dist',
      \ '--languages=Ruby,JavaScript,Java,HTML,SQL'
      \ ]

command! -complete=file -bang -nargs=* RgRaw
      \ call fzf#vim#grep("rg --with-filename --column --line-number --no-heading --color=always --smart-case ".<q-args>, fzf#vim#with_preview(), <bang>0)

augroup load_us_ycm
  autocmd!
  autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
  " autocmd InsertEnter * call plug#load('ultisnips')
        \| autocmd! load_us_ycm
augroup END

" monoco: per-directory lint/format dispatch.
" Repo convention is prettier everywhere; deno lint adds Deno-specific checks
" for supabase/functions/ on top.
function! MonocoIncludeExpr(fname) abort
  let l:root = substitute(expand('%:p'), '\v/monoco/.*$', '/monoco', '')
  let l:f = a:fname
  let l:f = substitute(l:f, '^@shared/', l:root . '/shared/', '')
  let l:f = substitute(l:f, '^@/', l:root . '/supabase/functions/_shared/', '')
  return l:f
endfunction

function! s:MonocoSetup() abort
  let l:path = expand('%:p')
  if l:path !~# '/monoco/'
    return
  endif
  let b:ale_fix_on_save = 1
  if l:path =~# '\.tsx\?$'
    setlocal includeexpr=MonocoIncludeExpr(v:fname)
    setlocal isfname+=@-@
  endif
  if l:path =~# '/monoco/supabase/functions/.*\.ts$'
    let b:ale_linters = ['deno']
    let b:ale_fixers = ['prettier']
    " Pin the deno LSP to the workspace root. Each function has its own
    " deno.json, so ALE's nearest-deno.json detection would otherwise start a
    " separate server per function dir, each blind to cross-function and
    " _shared imports. supabase/functions/deno.json declares the workspace.
    let b:ale_deno_lsp_project_root =
          \ substitute(l:path, '\v/monoco/supabase/functions/.*', '/monoco/supabase/functions', '')
  elseif l:path =~# '/monoco/shared/.*\.ts$'
    let b:ale_linters = []
    let b:ale_fixers = ['prettier']
  elseif l:path =~# '/monoco/.*\.\(md\|json\|ya\?ml\)$'
    let b:ale_fixers = ['prettier']
  endif
  " For app/ files, the global g:ale_fixers (prettier, eslint) applies.
endfunction

augroup MonocoFmtLint
  autocmd!
  autocmd BufRead,BufNewFile * call <SID>MonocoSetup()
augroup END

" monoco: run the repo's own CI scripts asynchronously.
" CI=1 on the unit step because run_unit_tests.sh ends in bare vitest, which
" only exits (instead of watching) when it detects a CI environment.
command! FormatLint Dispatch ./tools/format_and_lint.sh
command! MigrationOrder Dispatch ./tools/check_migration_order.sh
command! MigrationsUnmodified Dispatch ./tools/check_migrations_unmodified.sh
command! UnitTests Dispatch bash -c 'CI=1 ./tools/run_unit_tests.sh'
command! AppBuild Dispatch bash -c 'cd app && npm run build'
command! DenoTests Dispatch deno test --allow-all --config supabase/functions/deno.json supabase/functions/tests tools/coursework_import
command! CI Dispatch bash -c 'set -ex;
      \ ./tools/check_migrations_unmodified.sh;
      \ ./tools/check_migration_order.sh;
      \ ./tools/format_and_lint.sh;
      \ CI=1 ./tools/run_unit_tests.sh;
      \ (cd app && npm run build);
      \ deno test --allow-all --config supabase/functions/deno.json supabase/functions/tests tools/coursework_import;
      \ ./tools/run_e2e_tests.sh'

" monoco: alternate-file (:A / <Leader>.) + :Efunction/:Emigration navigation.
" Heuristic keys on the repo having both app/src/ and supabase/functions/.
" Component tests are jsdom-rendered and named <Component>.dom.test.tsx, with a
" handful of older plain <Component>.test.tsx and one <Component>.interaction.
" dom.test.tsx; projectionist picks the longest matching key, so the more
" specific suffixes must each get their own entry or *.test.tsx swallows them.
" Edge-fn tests live flat under supabase/functions/tests/ with three naming
" conventions (<fn>.test.ts, <fn>-fn.test.ts, <fn>-decide.test.ts); alternate
" lists try each, first match wins.
let g:projectionist_heuristics = {
      \ 'app/src/&supabase/functions/': {
      \   'app/src/*.test.ts': {'alternate': 'app/src/{}.ts', 'type': 'test'},
      \   'app/src/*.interaction.dom.test.tsx': {
      \     'alternate': 'app/src/{}.tsx',
      \     'type': 'test',
      \   },
      \   'app/src/*.dom.test.tsx': {'alternate': 'app/src/{}.tsx', 'type': 'test'},
      \   'app/src/*.test.tsx': {'alternate': 'app/src/{}.tsx', 'type': 'test'},
      \   'app/src/*.ts': {'alternate': 'app/src/{}.test.ts', 'type': 'source'},
      \   'app/src/*.tsx': {
      \     'alternate': [
      \       'app/src/{}.dom.test.tsx',
      \       'app/src/{}.test.tsx',
      \       'app/src/{}.interaction.dom.test.tsx',
      \     ],
      \     'type': 'source',
      \   },
      \   'supabase/functions/*/index.ts': {
      \     'alternate': [
      \       'supabase/functions/tests/{}.test.ts',
      \       'supabase/functions/tests/{}-fn.test.ts',
      \     ],
      \     'type': 'function',
      \   },
      \   'supabase/functions/*/decide.ts': {
      \     'alternate': 'supabase/functions/tests/{}-decide.test.ts',
      \   },
      \   'supabase/functions/tests/*-decide.test.ts': {
      \     'alternate': 'supabase/functions/{}/decide.ts',
      \     'type': 'test',
      \   },
      \   'supabase/functions/tests/*-fn.test.ts': {
      \     'alternate': 'supabase/functions/{}/index.ts',
      \     'type': 'test',
      \   },
      \   'supabase/functions/tests/*.test.ts': {
      \     'alternate': 'supabase/functions/{}/index.ts',
      \     'type': 'test',
      \   },
      \   'supabase/migrations/*.sql': {'type': 'migration'},
      \   'app/tests/e2e/*.spec.ts': {'type': 'e2e'},
      \ }}

let s:opener = has('mac') ? 'open' : 'xdg-open'
if has('nvim')
  execute 'command! -bar -nargs=1 Browse call jobstart([' . string(s:opener) . ', <q-args>])'
else
  execute 'command! -bar -nargs=1 Browse call job_start([' . string(s:opener) . ', <q-args>])'
endif
