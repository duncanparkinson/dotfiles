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
    let name = s:nearest_test(a:position)
    if !empty(name)
      return [shellescape(a:position['file']), '--name', shellescape(name, 1)]
    endif
    return [shellescape(a:position['file'])]
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
