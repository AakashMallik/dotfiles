"  /* -------------------------------------------------------------------------- */
"  /*         " Plugins will be downloaded under the specified directory.        */
"  /* -------------------------------------------------------------------------- */
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'sheerun/vim-polyglot'

"  modules
runtime modules/status-bar/init.vim
runtime modules/explorer/init.vim
runtime modules/theme/init.vim

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"  /* -------------------------------------------------------------------------- */
"  /*                      "  Run configs (Global + Custom)                      */
"  /* -------------------------------------------------------------------------- */

"  enable line number and highlight
set number
hi CursorLineNr guifg=#af00af
set cursorline
set cursorlineopt=number

"  modules
runtime modules/status-bar/config.vim
runtime modules/explorer/config.vim
runtime modules/theme/config.vim
