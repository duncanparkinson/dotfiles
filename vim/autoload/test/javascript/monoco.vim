" Custom vim-test runner that delegates to `monoco test`.
" monoco routes the file to the right runner (vitest / playwright / deno) and cds
" itself, so this runner only has to hand it the path and, for nearest, the test
" name via --name (monoco maps that to the runner's own filter flag).
" Forced for the monoco repo from vimrc; vim-test stays native everywhere else.

if !exists('g:test#javascript#monoco#file_pattern')
  let g:test#javascript#monoco#file_pattern = '\v\.%(test|spec)\.%(js|mjs|ts|jsx|tsx)$'
endif

function! test#javascript#monoco#test_file(file) abort
  if a:file =~# g:test#javascript#monoco#file_pattern
    return exists('g:test#javascript#runner') && g:test#javascript#runner ==# 'monoco'
  endif
endfunction

function! test#javascript#monoco#build_position(type, position) abort
  if a:type ==# 'nearest'
    " Pass both: monoco uses --line for playwright (robust, exact declaration
    " line) and --name for vitest / deno (which have no line filter).
    let args = [shellescape(a:position['file'])]
    let name = s:nearest_test(a:position)
    if !empty(name)
      let args += ['--name', shellescape(name, 1)]
    endif
    let line = s:nearest_line(a:position)
    if line > 0
      let args += ['--line', line]
    endif
    return args
  elseif a:type ==# 'file'
    return [shellescape(a:position['file'])]
  else
    return []
  endif
endfunction

function! test#javascript#monoco#build_args(args) abort
  return a:args
endfunction

function! test#javascript#monoco#executable() abort
  return 'monoco test'
endfunction

function! s:nearest_test(position) abort
  let name = test#base#nearest_test(a:position, g:test#javascript#patterns)
  return join(name['test'])
endfunction

" The nearest test's declaration line (the `test(` / `flowTest(` / `it(` call),
" scanning up from the cursor. Playwright's file:line filter wants exactly this.
function! s:nearest_line(position) abort
  let lnum = a:position['line']
  while lnum > 0
    if getline(lnum) =~# '\v^\s*%(\w*[Tt]est|it)%(\.\w+)?\s*\('
      return lnum
    endif
    let lnum -= 1
  endwhile
  return 0
endfunction
