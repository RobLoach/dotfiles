"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc Extras
"
" Author:
"     Rob Loach
"
" Source:
"     https://github.com/robloach/dotfiles
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Background Transparency
" https://github.com/tinted-theming/base16-vim/tree/main?tab=readme-ov-file#background-transparency
let base16_background_transparent=1

" ISO-8613-3 compatible terminal
" https://github.com/tinted-theming/base16-vim/tree/main?tab=readme-ov-file#troubleshooting
set termguicolors

" Colorspace
let base16_colorspace=256

" Nerdtree
" https://github.com/preservim/nerdtree
let NERDTreeMinimalUI=1
map <F2> :NERDTreeToggle<CR>

" Show line numbers on the sidebar
set number

" Disable beep on errors
set noerrorbells

" Enable mouse for scrolling and resizing
set mouse=a
