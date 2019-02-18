" This must be first, because it changes other options as a side effect.
set nocompatible

call plug#begin('~/.vim/plugged')

" Plugins
" Plug 'mileszs/ack.vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
" Plug 'tpope/vim-haml'
Plug 'tpope/vim-obsession'
" Plug 'tpope/vim-projectionist'
Plug 'duncanparkinson/vim-ragtag'
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rake', { 'for': 'ruby' }
Plug 'tpope/vim-repeat'
" Plug 'tpope/vim-rsi'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'godlygeek/tabular', { 'on': 'Tabularize' }
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'kchmck/vim-coffee-script'
Plug 'rstacruz/sparkup', { 'rtp': 'vim/' }
" Plug 'majutsushi/tagbar'
" Plug 'sjl/gundo.vim'
Plug 'mbbill/undotree/'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'kana/vim-textobj-user'
" Plug 'altercation/vim-colors-solarized'
" Plug 'skwp/greplace.vim'
" Plug 'vim-scripts/taglist.vim'
" Plug 'edsono/vim-matchit'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-ruby/vim-ruby'
" Plug 'craigemery/vim-autotag'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'rking/ag.vim'
Plug 'vim-scripts/lastpos.vim'
Plug 'christoomey/vim-conflicted'
Plug 'hwartig/vim-seeing-is-believing'
" Plug 'reedes/vim-colors-pencil'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'airblade/vim-gitgutter'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'duncanparkinson/vim-spec-runner'
Plug 'SirVer/ultisnips', { 'on': [] }
Plug 'honza/vim-snippets'
" Plug 'chriskempson/base16-vim'
" Plug 'vim-scripts/YankRing.vim'
" Plug 'rizzatti/dash.vim', { 'on': '<Plug>DashSearch' }
" Plug 'edkolev/tmuxline.vim'
" Plug 'Valloric/YouCompleteMe', { 'on': [], 'do': './install.py --clang-completer --tern-completer' }
Plug 'pangloss/vim-javascript'
Plug 'mustache/vim-mustache-handlebars'
" Plug 'davidoc/taskpaper.vim'
" Plug 'NLKNguyen/papercolor-theme'
Plug 'groenewege/vim-less'
Plug 'chrisbra/csv.vim'
" Plug 'maxbrunsfeld/vim-yankstack'
" Plug 'zenorocha/dracula-theme', {'rtp': 'vim/'}
" Plug 'gosukiwi/vim-atom-dark'
Plug 'Chiel92/vim-autoformat'
" Plug 'joshdick/onedark.vim'
" Plug 'joshdick/airline-onedark.vim'
" Plug 'AndrewRadev/switch.vim'
" Plug 'lloeki/vim-one-colorschemes'
" Plug 'justinmk/vim-sneak'
Plug 'kana/vim-textobj-indent'
Plug 'christoomey/vim-sort-motion'
" Plug 'dansomething/vim-eclim'
Plug 'elzr/vim-json'
" Plug 'vim-scripts/Align'
Plug 'vim-scripts/SQLUtilities'
Plug 'vim-scripts/dbext.vim'
Plug 'vim-scripts/sqlcomplete.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'christoomey/vim-tmux-runner'
Plug 'tommcdo/vim-exchange'
Plug 'vim-scripts/ReplaceWithRegister'
" Plug 'kana/vim-textobj-entire' "disabled because it was causing weird errors with vim-autotag
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-line'
Plug 'Olical/vim-enmasse'
" Plug 'nacitar/terminalkeys.vim'
Plug 'git-time-metric/gtm-vim-plugin'
Plug 'lifepillar/vim-solarized8'
" Plug 'reedes/vim-thematic'
" Plug 'tomasr/molokai'
Plug 'elmcast/elm-vim'
" Plug 'reedes/vim-pencil'
Plug 'duncanparkinson/nova-vim'
Plug 'twerth/ir_black'
Plug 'jacoborus/tender.vim'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'rakr/vim-one'
" Plug 'rakr/vim-two-firewatch'
" Plug 'sonph/onehalf', { 'rtp': 'vim/' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'

call plug#end()

runtime! macros/matchit.vim

augroup load_us_ycm
  autocmd!
  " autocmd InsertEnter * call plug#load('ultisnips', 'YouCompleteMe')
  autocmd InsertEnter * call plug#load('ultisnips')
        \| autocmd! load_us_ycm
augroup END

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
syntax on
set wrap
set linebreak

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

"clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()

imap <c-h> <space>=><space>

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

nnoremap <Leader>b :Buffers<cr>
nnoremap <Leader>F :Files %:p:h<cr>
nnoremap <Leader>f :Files<cr>
nnoremap <Leader>gVS :Files NotForDeployment/coffeescript/vessel_schedule<cr>
nnoremap <Leader>gN :Files NotForDeployment/src<cr>
nnoremap <Leader>gA :Files Admin/<cr>
nnoremap <Leader>gB :Files Bids/<cr>
nnoremap <Leader>gC :Files NotForDeployment/sass<cr>
nnoremap <Leader>gE :Files EHSQ/<cr>
nnoremap <Leader>gI :Files includes/<cr>
nnoremap <Leader>gJ :Files script/<cr>
nnoremap <Leader>gO :Files Operations/<cr>
nnoremap <Leader>gS :Files Secondary/<cr>
nnoremap <Leader>gT :Files WEB-INF/jsp/task_manager/<cr>
nnoremap <Leader>gW :Files WEB-INF/jsp/<cr>

nmap yp :set paste<CR>"*]p:set nopaste<cr>

map <Leader>, <c-^>
map <Leader>- <C-w>J
map <Leader>. :call OpenTestAlternate()<cr>
map <Leader>T <Plug>RunFocusedSpec
map <Leader>\| <C-w>H
map <Leader>a :!rspec<cr>
map <Leader>aa :!CODECLIMATE_REPO_TOKEN=c2bf84dc65524a32da572571976a10b4df0349a2a7a06d240e5299fdd7ec6685 spring rspec spec/ features/<cr>
map <Leader>au :!spring rspec spec/ --exclude-pattern "spec/features/*.rb"<cr>
map <Leader>af :!spring rspec spec/features/<cr>
map <Leader>dt :topleft 30 :split<cr>:e ~/Dropbox/Public/Notes/Daily\ Todos\.taskpaper<cr>
vnoremap <leader>gev :call ExtractVariable()<cr>
map <Leader>giv :call InlineVariable()<cr>
map <Leader>gR :call ShowRoutes()<cr>
map <Leader>gb :Gblame<CR>
map <Leader>gc :Gcommit -v<CR>
map <Leader>gg :tabe Gemfile<cr>
map <Leader>gs :Gstatus<CR><C-w>20+
map <Leader>gw :Gwrite<CR>
map <Leader>jg :JavaGet<cr>
map <Leader>jl :!tail -n 100 /Library/Tomcat/logs/catalina.out<cr>
map <Leader>jr :ProjectRefresh<cr>
map <Leader>jb :ProjectBuild<cr>
map <Leader>jo :JavaImportOrganize<cr>
map <Leader>js :JavaSet<cr>
map <Leader>n :Rename 
map <Leader>ocf :OpenChangedFiles<CR>
map <Leader>l :PromoteToLet<cr>
" nmap <leader>p <Plug>yankstack_substitute_older_paste
" nmap <leader>P <Plug>yankstack_substitute_newer_paste
map <Leader>qc :cclose<CR>
map <Leader>qo :copen<CR>
map <Leader>qf :JavaCorrect<CR>
map <Leader>rc :Econtroller<Space>
nnoremap <Leader>rf :CtrlP features/<cr>
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
map <Leader>t <Plug>RunCurrentSpecFile
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

colorscheme solarized8
set background=dark
" highlight Comment cterm=italic

set termguicolors

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

" ===================== Gundo ===========================
let g:gundo_right = 1
let g:gundo_width = 60

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

  autocmd BufNewFile,BufReadPost *.md set filetype=markdown
  autocmd BufRead *.md  set ai formatoptions=tcroqn2 comments=n:&gt;
  autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;

  " " Indent p tags
  " autocmd FileType html,eruby if g:html_indent_tags !~ '\\|p\>' | let g:html_indent_tags .= '\|p\|li\|dt\|dd' | endif

  " add pwd to path (particularly to allow rails.vim to work with namespaces)
  autocmd! BufNewFile,BufRead * let &path .= "," . expand("<afile>:p:h")

  " " Treat JSPs as Java
  " autocmd FileType jsp set ft=jsp.html.java

  autocmd BufRead *.tag  set ft=jsp.html

  autocmd Filetype gitcommit setlocal textwidth=72 nocursorline

  " Leave the return key alone when in command line windows, since it's used
  " to run commands there.
  autocmd! CmdwinEnter * :unmap <cr>
  autocmd! CmdwinLeave * :call MapCR()
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

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
" SWITCH BETWEEN TEST AND PRODUCTION CODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction
function! AlternateForCurrentFile()
  let current_file = expand("%")
  let current_file = substitute(current_file, '^/Users/duncan/projects/[^/]*/', '', '')
  let new_file = current_file
  let in_spec = match(current_file, '^spec/') != -1
  let going_to_spec = !in_spec
  let in_app = match(current_file, '\<controllers\>') != -1 || match(current_file, '\<models\>') != -1 || match(current_file, '\<views\>') != -1 || match(current_file, '\<helpers\>') != -1 || match(current_file, '\<javascripts\>') != -1 || match(current_file, '\<enums\>') != -1
  let in_assets = match(current_file, '\<javascripts\>') != -1
  if going_to_spec
    if in_app
      let new_file = substitute(new_file, '^app/', '', '')
    end
    if in_assets
      let new_file = substitute(new_file, '^assets/', '', '')
    end
    let new_file = substitute(new_file, '\.rb$', '_spec.rb', '')
    let new_file = substitute(new_file, '\.js.coffee$', '_spec.js.coffee', '')
    let new_file = 'spec/' . new_file
  else
    let new_file = substitute(new_file, '_spec\.js.coffee$', '.js.coffee', '')
    let new_file = substitute(new_file, '_spec\.rb$', '.rb', '')
    let new_file = substitute(new_file, '^spec/', '', '')
    if in_assets
      let new_file = 'assets/' . new_file
    end
    if in_app
      let new_file = 'app/' . new_file
    end
  endif
  return new_file
endfunction

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
nnoremap K :Ag \b<C-R><C-W>\b<CR>

let g:ctrlp_match_window = 'max:50'

let g:ctrlp_arg_map = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPARKUP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sparkupExecuteMapping = '<C-e><C-e>'
let g:sparkupNextMapping = '<C-e><C-n>'

function! OpenCompiledJsp()
  let current_file = expand("%")
  let current_file = substitute(current_file, '^/Users/duncan/projects/[^/]*/', '', '')
  let new_file = current_file
  let new_file = substitute(current_file, '\.jsp', '_jsp.java', '')
  let new_file = '/Library/Tomcat/work/Catalina/localhost/ROOT/org/apache/jsp/' . new_file
  exec ':e ' . new_file
endfunction
:command! C :call OpenCompiledJsp()

" Seeing Is Believing
nmap <F5> <Plug>(seeing-is-believing-mark)
xmap <F5> <Plug>(seeing-is-believing-mark)
imap <F5> <Plug>(seeing-is-believing-mark)

nmap <F6> <Plug>(seeing-is-believing-run)
xmap <F6> <Plug>(seeing-is-believing-run)
imap <F6> <Plug>(seeing-is-believing-run)

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
" let g:airline_theme = 'raven'
" let g:airline_theme = 'nova'
" let g:airline_theme = 'papercolor'
" let g:airline_theme = 'onedark'
" let g:airline_section_z = airline#section#create(['%{ObsessionStatus(''$'', '''')}', 'windowswap', '%3p%% ', 'linenr', ':%3v '])

let g:airline#extensions#eclim#enabled = 1

let g:gtm_plugin_status_enabled = 1
function! AirlineInit()
  if exists('*GTMStatusline')
    call airline#parts#define_function('gtmstatus', 'GTMStatusline')
    let g:airline_section_b = airline#section#create([g:airline_section_b, ' ', '[', 'gtmstatus', ']'])
  endif
endfunction
autocmd User AirlineAfterInit call AirlineInit()

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
nmap <silent> <leader>d <Plug>DashSearch

" Eclim
" let g:EclimCompletionMethod = 'omnifunc' " for use with YouCompleteMe

" " YouCompleteMe
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" Remove <Tab> from maps lest YCM hijack our mapping for UltiSnips
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
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

let g:dbext_default_profile_insite_polarcus_development='type=SQLSRV:user=insite_user:passwd=fc9aa6c83e471ea68467ab6c8d582cb3:host=10.211.55.7:SQLSRV_bin=sqsh:SQLSRV_cmd_options=:extra=-Sparallels -D insite_polarcus_development'
let g:dbext_default_profile_insite_polarcus_production='type=SQLSRV:user=insite_user:passwd=fc9aa6c83e471ea68467ab6c8d582cb3:host=10.211.55.7:SQLSRV_bin=sqsh:SQLSRV_cmd_options=:extra=-Sparallels -D insite_polarcus_production'
let g:dbext_default_profile_insite_magseis_development='type=SQLSRV:user=insite_user:passwd=fc9aa6c83e471ea68467ab6c8d582cb3:host=10.211.55.7:SQLSRV_bin=sqsh:SQLSRV_cmd_options=:extra=-Sparallels -D insite_magseis_development'
let g:dbext_default_profile_insite_magseis_production='type=SQLSRV:user=insite_user:passwd=fc9aa6c83e471ea68467ab6c8d582cb3:host=10.211.55.7:SQLSRV_bin=sqsh:SQLSRV_cmd_options=:extra=-Sparallels -D insite_magseis_production'
let g:dbext_default_profile_insite_svs_demo='type=SQLSRV:user=insite_user:passwd=fc9aa6c83e471ea68467ab6c8d582cb3:host=10.211.55.7:SQLSRV_bin=sqsh:SQLSRV_cmd_options=:extra=-Sparallels -D insite_demo'

function! Polarcus()
  :DBSetOption profile='insite_polarcus_development'
  :!bin/configure-for-polarcus
endfunction
:command! Polarcus :call Polarcus()

function! PolarcusProduction()
  :DBSetOption profile='insite_polarcus_production'
  :!bin/configure-for-polarcus-production
endfunction
:command! PolarcusProduction :call PolarcusProduction()

function! Magseis()
  :DBSetOption profile='insite_magseis_development'
  :!bin/configure-for-magseis
endfunction
:command! Magseis :call Magseis()

function! MagseisProduction()
  :DBSetOption profile='insite_magseis_production'
  :!bin/configure-for-magseis-production
endfunction
:command! MagseisProduction :call MagseisProduction()

function! ReloadChrome()
  wall
  execute ":silent !chrome-cli reload"
endfunction

" nmap <C-c> :call ReloadChrome()<CR>

" let g:thematic#defaults = {
" \ 'airline-theme': 'solarized',
" \ 'laststatus': 2,
" \ }

" let g:thematic#themes = {
" \  'solarized_light': {
" \    'colorscheme': 'solarized8_light',
" \    'background': 'light',
" \  },
" \  'solarized_dark': {
" \    'colorscheme': 'solarized8_dark',
" \    'background': 'dark',
" \  },
" \  'molokai': {
" \    'airline-theme': 'molokai',
" \    'colorscheme': 'molokai',
" \    'background': 'dark',
" \  },
" \  'base16-flat': {
" \    'airline-theme': 'papercolor',
" \    'colorscheme': 'base16-flat',
" \    'background': 'dark',
" \  },
" \  'pencil_light': {
" \    'airline-theme': 'papercolor',
" \    'colorscheme': 'pencil',
" \    'background': 'light',
" \  },
" \  'pencil_dark': {
" \    'airline-theme': 'papercolor',
" \    'colorscheme': 'pencil',
" \    'background': 'dark',
" \  },
" \  'papercolor_light': {
" \    'airline-theme': 'papercolor',
" \    'colorscheme': 'PaperColor',
" \    'background': 'light',
" \  },
" \  'grb256': {
" \    'airline-theme': 'papercolor',
" \    'colorscheme': 'grb256',
" \    'background': 'dark',
" \  },
" \  'nova': {
" \    'airline-theme': 'nova',
" \    'colorscheme': 'nova',
" \    'background': 'dark',
" \  },
" \  'tender': {
" \    'airline-theme': 'tender',
" \    'colorscheme': 'tender',
" \    'background': 'dark',
" \  },
" \  'one_dark': {
" \    'airline-theme': 'one',
" \    'colorscheme': 'one',
" \    'background': 'dark',
" \  },
" \  'one_light': {
" \    'airline-theme': 'one',
" \    'colorscheme': 'one',
" \    'background': 'light',
" \  },
" \  'one_half_light': {
" \    'airline-theme': 'onehalflight',
" \    'colorscheme': 'onehalflight',
" \    'background': 'light',
" \  },
" \  'one_half_dark': {
" \    'airline-theme': 'onehalfdark',
" \    'colorscheme': 'onehalfdark',
" \    'background': 'dark',
" \  },
" \}

" let g:thematic#theme_name = 'solarized_dark'

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
