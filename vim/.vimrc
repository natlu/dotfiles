let configs = [
 \  "vim_settings",
 \  "edit",
 \  "gui",
 \  "buffer",
 \  "plugin",
 \  "plugin_settings",
 \  "keyboard",
 \]
 
for file in configs
  let x = expand("~/.vim/config/".file.".vim")
  if filereadable(x)
    execute 'source' x
  endif
endfor

" map <SPACE> <leader>

