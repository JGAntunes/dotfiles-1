"
" COMMANDS
"

" Ignore the filenames when doing find all
" https://github.com/junegunn/fzf.vim/issues/346
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" Edit vim configs
:command! DotAutoCmds vsplit $HOME/playground/dotfiles/nvim/config/autocmds.vim
:command! DotCommands vsplit $HOME/playground/dotfiles/nvim/config/commands.vim
:command! DotKeymaps vsplit $HOME/playground/dotfiles/nvim/config/keymaps.vim
:command! DotPlugins vsplit $HOME/playground/dotfiles/nvim/config/plugins.vim
:command! DotSettings vsplit $HOME/playground/dotfiles/nvim/config/settings.vim
:command! DotVisuals vsplit $HOME/playground/dotfiles/nvim/config/visuals.vim

:command! AleBufferToggleFixers let b:ale_fix_on_save = !get(b:, 'ale_fix_on_save', 1)
:command! ToggleBackgroundColor let &background = ( &background == 'dark'? 'light' : 'dark' )
:command! ToggleJsConfigs call system('toggle-js-configs')
