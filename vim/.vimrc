 let configs = [
 \  "vim_settings",
 \  "edit",
 \  "gui",
 \  "keyboard",
 \  "buffer",
 \  "plugin",
 \  "plugin_settings",
 \]
" 
 for file in configs
   let x = expand("~/.vim/config/".file.".vim")
   if filereadable(x)
     execute 'source' x
   endif
 endfor
