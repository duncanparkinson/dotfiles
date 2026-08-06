" cyf_demo.vim — CYF / monoco brand light scheme for demos
" Install: copy to ~/.vim/colors/ (or ~/.config/nvim/colors/), then
"   set termguicolors
"   colorscheme cyf_demo
set background=light
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "cyf_demo"

" --- core ---
hi Normal        guifg=#231f20 guibg=#ffffff
hi Comment       guifg=#6e6b6c gui=italic
hi Constant      guifg=#c62d29
hi String        guifg=#17795a
hi Character     guifg=#17795a
hi Number        guifg=#a81d12
hi Boolean       guifg=#a81d12
hi Float         guifg=#a81d12
hi Identifier    guifg=#245a97
hi Function      guifg=#9b2d84
hi Statement     guifg=#c62d29 gui=bold
hi Conditional   guifg=#c62d29 gui=bold
hi Repeat        guifg=#c62d29 gui=bold
hi Keyword       guifg=#c62d29 gui=bold
hi Operator      guifg=#231f20
hi PreProc       guifg=#0e7490
hi Include       guifg=#0e7490
hi Type          guifg=#17795a gui=bold
hi StorageClass  guifg=#17795a gui=bold
hi Structure     guifg=#17795a gui=bold
hi Special       guifg=#8a5600
hi Delimiter     guifg=#6e6b6c
hi Underlined    guifg=#245a97 gui=underline
hi Ignore        guifg=#b4b0b1
hi Todo          guifg=#231f20 guibg=#f2b34a gui=bold
hi Error         guifg=#ffffff guibg=#a81d12
hi ErrorMsg      guifg=#a81d12 guibg=NONE gui=bold
hi WarningMsg    guifg=#8a5600 gui=bold

" --- ui chrome ---
hi LineNr        guifg=#b4b0b1 guibg=#ffffff
hi CursorLineNr  guifg=#ee4344 guibg=#f2eff0 gui=bold
hi CursorLine    guibg=#f2eff0 cterm=NONE
hi CursorColumn  guibg=#f2eff0
hi ColorColumn   guibg=#f2eff0
hi Cursor        guifg=#ffffff guibg=#ee4344
hi Visual        guibg=#f7dcdc
hi VisualNOS     guibg=#f7dcdc
hi Search        guifg=#231f20 guibg=#f2b34a
hi IncSearch     guifg=#ffffff guibg=#ee4344
hi CurSearch     guifg=#ffffff guibg=#ee4344
hi MatchParen    guifg=#ee4344 guibg=NONE gui=bold
hi StatusLine    guifg=#ffffff guibg=#231f20 gui=bold
hi StatusLineNC  guifg=#6e6b6c guibg=#f2eff0 gui=NONE
hi WinSeparator  guifg=#b4b0b1 guibg=NONE
hi VertSplit     guifg=#b4b0b1 guibg=NONE
hi TabLine       guifg=#6e6b6c guibg=#f2eff0 gui=NONE
hi TabLineSel    guifg=#231f20 guibg=#ffffff gui=bold
hi TabLineFill   guibg=#f2eff0
hi Pmenu         guifg=#231f20 guibg=#f2eff0
hi PmenuSel      guifg=#ffffff guibg=#ee4344
hi PmenuSbar     guibg=#e4e0e1
hi PmenuThumb    guibg=#b4b0b1
hi Folded        guifg=#6e6b6c guibg=#f2eff0
hi FoldColumn    guifg=#b4b0b1 guibg=#ffffff
hi SignColumn    guibg=#ffffff
hi NonText       guifg=#b4b0b1
hi SpecialKey    guifg=#b4b0b1
hi Whitespace    guifg=#d8d3d4
hi Conceal       guifg=#6e6b6c
hi Title         guifg=#c62d29 gui=bold
hi Directory     guifg=#245a97
hi Question      guifg=#17795a gui=bold
hi MoreMsg       guifg=#17795a gui=bold
hi ModeMsg       guifg=#231f20 gui=bold

" --- diffs ---
hi DiffAdd       guifg=#17795a guibg=#e9f6f0
hi DiffChange    guifg=#8a5600 guibg=#fbf0dd
hi DiffDelete    guifg=#a81d12 guibg=#fbedea
hi DiffText      guifg=#ffffff guibg=#8a5600 gui=bold

" --- spell ---
hi SpellBad      guisp=#a81d12 gui=undercurl
hi SpellCap      guisp=#8a5600 gui=undercurl
hi SpellRare     guisp=#9b2d84 gui=undercurl
hi SpellLocal    guisp=#0e7490 gui=undercurl

" --- git signs / diagnostics (common plugins) ---
hi GitSignsAdd    guifg=#1f8f68 guibg=#ffffff
hi GitSignsChange guifg=#8a5600 guibg=#ffffff
hi GitSignsDelete guifg=#a81d12 guibg=#ffffff
hi DiagnosticError guifg=#a81d12
hi DiagnosticWarn  guifg=#8a5600
hi DiagnosticInfo  guifg=#245a97
hi DiagnosticHint  guifg=#0e7490
