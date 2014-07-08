" This must be first, because it changes other options as a side effect.
set nocompatible

"for vundle
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Plugins
Bundle 'chrisbra/colorizer'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-bundler'
" Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
" Bundle 'tpope/vim-haml'
" Bundle 'tpope/vim-pathogen'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-eunuch'
Bundle 'wincent/Command-T'
" Bundle 'godlygeek/tabular'
" Bundle 'gregsexton/gitv'
Bundle 'kchmck/vim-coffee-script'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tcomment_vim'
Bundle 'sjl/gundo.vim'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'kana/vim-textobj-user'
Bundle 'altercation/vim-colors-solarized'
Bundle 'skwp/greplace.vim'
" Bundle 'vim-scripts/taglist.vim'
" Bundle 'xolox/vim-misc'
" Bundle 'duncanparkinson/vim-notes'
Bundle 'edsono/vim-matchit'
" Bundle 'duncanparkinson/vim-cucumber'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'nono/vim-handlebars'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/AutoTag'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'rking/ag.vim'
Bundle 'vim-scripts/lastpos.vim'
" Bundle 'tomasr/molokai'
Bundle 'roman/golden-ratio'
Bundle 'msanders/snipmate.vim'
Bundle 'christoomey/vim-conflicted'
" Bundle 'morhetz/gruvbox'
Bundle 'hwartig/vim-seeing-is-believing'
Bundle 'reedes/vim-colors-pencil'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'

filetype plugin indent on

" ================ General Config ====================
let mapleader=","
set number                      "Line numbers are good
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

" Insert only one space when joining lines that contain sentence-terminating
" punctuation like `.`
set nojoinspaces

" set winwidth=180
set winheight=5
set winminheight=5
set winheight=999

set colorcolumn=80

set shell=zsh

" change cursor for insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

set spelllang=en_gb

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

"clear the search buffer when hitting return
function! MapCR()
  nnoremap <cr> :nohlsearch<cr>
endfunction
call MapCR()

imap <c-h> <space>=><space>

map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
map <C-q> <esc>:q<CR>
imap <C-q> <esc>:q<CR>

" expand current dir
cnoremap %% <C-R>=expand('%:p:h').'/'<cr>

vmap > >gv
vmap < <gv

" Ruby refactoring
nnoremap <Leader>: :%s/:\([^ ]*\)\(\s*\)=>/\1:/gc<CR>
nnoremap <Leader>B :%s/{\([^ ]\)/{ \1/gc\|%s/\([^ ]\)}/\1 }/gc<CR>

nnoremap <Leader>F :CommandT %:p:h<cr>
nnoremap <Leader>f :CommandT<cr>
nnoremap <Leader>gVS :CommandT NotForDeployment/coffeescript/vessel_schedule<cr>
nnoremap <Leader>gn :CommandT NotForDeployment/src<cr>

map <Leader>, <c-^>
map <Leader>- <C-w>J
map <Leader>. :call OpenTestAlternate()<cr>
map <Leader>= mqgg=G`q
map <Leader>T :w<cr>:call RunCurrentLineInTest()<CR>
map <Leader>\| <C-w>H
map <Leader>a :call RunTestCommand("spring rspec spec/ features/")<cr>
map <Leader>aa :call RunTestCommand("CODECLIMATE_REPO_TOKEN=c2bf84dc65524a32da572571976a10b4df0349a2a7a06d240e5299fdd7ec6685 spring rspec spec/ features/")<cr>
map <Leader>au :call RunTestCommand("spring rspec spec/")<cr>
map <Leader>af :call RunTestCommand("spring rspec feautures/")<cr>
map <Leader>c oconsole.log<Space>
vnoremap <leader>gev :call ExtractVariable()<cr>
map <Leader>giv :call InlineVariable()<cr>
map <Leader>gR :call ShowRoutes()<cr>
map <Leader>gg :tabe Gemfile<cr>
map <Leader>gs :Gstatus<CR><C-w>20+
map <Leader>j :!tail -n 100 /Library/Tomcat/logs/catalina.out<cr>
map <Leader>n :call RenameFile()<cr>
map <Leader>ocf :OpenChangedFiles<CR>
map <Leader>p :set paste<CR>"*]p:set nopaste<cr>
map <Leader>l :PromoteToLet<cr>
map <Leader>qc :cclose<CR>
map <Leader>qo :copen<CR>
map <Leader>rc :Rcontroller<Space>
map <Leader>rf :CommandTFlush<cr>\|:CommandT features/<cr>
map <Leader>rg :Rgenerate<Space>
map <Leader>rh :Rhelper<Space>
map <Leader>ri :Rintegrationtest<Space>
map <Leader>rj :Rjavascript<Space>
map <Leader>rl :Rlib<Space>
map <Leader>rm :Rmodel<Space>
map <Leader>rs :Rstylesheet<Space>
map <Leader>rt :Rspec<Space>
map <Leader>rv :Rview<Space>
map <Leader>sj :SplitjoinSplit<cr>
map <Leader>sk :SplitjoinJoin<cr>
map <Leader>so oSystem.out.println();<Esc>hi
map <Leader>sws :StripTrailingWhitespaces<CR>
map <Leader>t :w<cr>:call RunCurrentTest()<CR>
map <Leader>u :GundoToggle<CR>
map <Leader>vb :source ~/.vimrc<cr>:BundleInstall<cr>
map <Leader>vc yy:<C-f>p<C-c><CR>
map <Leader>ve :tabe ~/.vimrc<CR>
map <Leader>vr :so %<CR>
map <Leader>w :set wrap!<cr>
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

" Quick Fix last search
map <silent> <leader>q/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>
" Ack for the last search.
map <silent> <leader>qa/ :execute "Ack! '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>
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

" ================ Appearance =======================
"tell the term has 256 colors
set t_Co=256

colorscheme pencil
" LuciusWhite
set background=dark

set cursorline
" set cursorcolumn " seems to cause slowness...

" For GVim colour schemes
let g:CSApprox_loaded = 1

" ================ Status Line ======================
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
set laststatus=2 "always show the status line
set cmdheight=2

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
set wildignore+=*.class,WEB-INF/*,*jxl/*,*.log
set wildignore+=node_modules/*,FusionCharts*

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
augroup vimrcEx
  " Clear all autocmds in the group
  autocmd!
  autocmd FileType text setlocal textwidth=78

  "for ruby, autoindent with two spaces, always expand tabs
  autocmd FileType ruby,haml,eruby,yaml,html,javascript,sass,cucumber,note set ai sw=2 sts=2 et
  autocmd FileType python set sw=4 sts=4 et

  autocmd FileType ruby,eruby,javascript,coffeescript,haml,yaml compiler rspec

  autocmd! BufRead,BufNewFile *.sass setfiletype sass

  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
  autocmd BufRead *.markdown  set ai formatoptions=tcroqn2 comments=n:&gt;

  " Indent p tags
  autocmd FileType html,eruby if g:html_indent_tags !~ '\\|p\>' | let g:html_indent_tags .= '\|p\|li\|dt\|dd' | endif

  " add pwd to path (particularly to allow rails.vim to work with namespaces)
  autocmd! BufNewFile,BufRead * let &path .= "," . expand("<afile>:p:h")

  " Treat JSPs as Java
  autocmd FileType jsp set ft=jsp.html.java

  autocmd FileType * set list
  autocmd FileType gitcommit,jsp set nolist

  autocmd Filetype gitcommit setlocal spell textwidth=72 nocursorline

  " Don't syntax highlight markdown because it's often wrong
  autocmd! FileType mkd setlocal syn=off

  " Leave the return key alone when in command line windows, since it's used
  " to run commands there.
  autocmd! CmdwinEnter * :unmap <cr>
  autocmd! CmdwinLeave * :call MapCR()
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction

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

"====================== tmux ==============================

if &term =~ '256color'
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

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " RUNNING TESTS
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RunTestCommand(test_command)
  if filewritable(".test-commands")
    exec ":silent !echo " . a:test_command . " > .test-commands"
  else
    exec ":!" . a:test_command
  endif
endfunction

function! RunCurrentTest()
  if InTestFile()
    call SetTestFile()
    call SetCorrectTestRunner()
  endif
  let cmd = "" . g:bjo_test_runner . " " . g:bjo_test_file
  call RunTestCommand("" . cmd)
endfunction

function! RunCurrentLineInTest()
  if InTestFile()
    call SetTestFileWithLine()
    call SetCorrectTestRunner()
  endif
  let cmd = "" . g:bjo_test_runner . " " . g:bjo_test_file . ":" . g:bjo_test_file_line
  call RunTestCommand(cmd)
endfunction

function! SetCorrectTestRunner()
  if match(expand('%'), '\.feature$') != -1
    call SetTestRunner("zeus cucumber")
  elseif match(expand('%'), '/lib/.*_spec\.rb$') != -1
    call SetTestRunner("rspec")
  elseif match(expand('%'), '_spec\.rb$') != -1
    call SetTestRunner("spring rspec")
  else
    call SetTestRunner("ruby -Itest")
  endif
endfunction

function! InTestFile()
  return match(expand("%"), '\(.feature\|_spec.rb\|_test.rb\)$') != -1
endfunction

function! SetTestRunner(runner)
  let g:bjo_test_runner=a:runner
endfunction

function! SetTestFile()
  let g:bjo_test_file=@%
endfunction

function! SetTestFileWithLine()
  call SetTestFile()
  let g:bjo_test_file_line=line(".")
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

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor\ --ignore=vendor\ --ignore=tmp

  " " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

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
  let new_file = '/Library/Tomcat/work/Catalina/localhost/_/org/apache/jsp/' . new_file
  exec ':e ' . new_file
endfunction
:command! OpenCompiledJsp :call OpenCompiledJsp()

" Seeing Is Believing
nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
xmap <buffer> <F5> <Plug>(seeing-is-believing-run)
imap <buffer> <F5> <Plug>(seeing-is-believing-run)

nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

let g:airline_powerline_fonts = 1
let g:airline_theme = 'pencil'
let g:airline_right_sep=''
let g:airline_left_sep=''

highlight clear SignColumn
highlight link GitGutterAdd DiffAdd
highlight link GitGutterDelete DiffDelete
highlight link GitGutterChange DiffChange
highlight link GitGutterChangeDelete DiffChange
