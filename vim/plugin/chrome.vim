function! ReloadChrome()
  wall
  execute ":silent !chrome-cli reload"
endfunction

nmap <C-c> :call ReloadChrome()<CR>
