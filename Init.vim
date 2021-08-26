" Gotta be first
set nocompatible

"---vim-plug---

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'scrooloose/syntastic'
Plug 'Raimondi/delimitMate'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'severin-lemaignan/vim-minimap'
Plug 'ryanoasis/vim-devicons'
Plug 'navarasu/onedark.nvim'
Plug 'codota/tabnine-vim'
Plug 'markwoodhall/vim-codelens'
Plug 'Yggdroot/indentLine'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "active"
  let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "active_filetypes": ["ruby", "php","python"],
        \ "passive_filetypes": ["puppet"] }
augroup END
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
highlight SyntasticError guibg=#2f0000

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 0


" ----- altercation/vim-colors-solarized settings -----
" Toggle this to "light" for light colorscheme
"set background=dark

" Uncomment the next line if your terminal is not configured for solarized
"let g:solarized_termcolors=256

" Set the colorscheme
"let g:onedark_style = 'darker'
colorscheme molokai


" ----- bling/vim-airline settings -----
" Always show statusbar
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" Fancy arrow symbols, requires a patched font
" To install a patched font, run over to
"     https://github.com/abertsch/Menlo-for-Powerline
" download all the .ttf files, double-click on them and click "Install"
" Finally, uncomment the next line
"let g:airline_powerline_fonts = 1

" Show PASTE if in paste mode
let g:airline_detect_paste=1

" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1

"----Guidelines-----
"let g:indentLine_setColors = 0
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char = '|'

let g:indentLine_defaultGroup = 'SpecialKey'


" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

"---Minimap---
let g:minimap_show='<leader>ms'
let g:minimap_update='<leader>mu'
let g:minimap_close='<leader>gc'
let g:minimap_toggle='<leader>gt'
let g:minimap_highlight='DiffAdd'

"---vim-devicons---
set guifont=DroidSansMono\ Nerd\ Font\ 10
let g:airline_powerline_fonts = 1

"-----codelens-------
let g:codelens_auto = 1
let g:codelens_allow_same_line = 1

" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
syntax on
set mouse=a
set encoding=utf-8
nnoremap <C-Left> :bp<CR>
nnoremap <C-Right> :bn<CR>
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set expandtab shiftwidth=4 softtabstop=4 smarttab
set clipboard=unnamed
source $VIMRUNTIME/mswin.vim
behave mswin
"Map Ctrl-Backspace to delete the previous word in insert mode.
imap <C-BS> <C-W>
set backspace=indent,eol,start
inoremap jj <Esc>
map <F2> :echo 'Current time is ' . strftime('%c')<CR>
map <F8> :Minimap<CR>
nmap <silent> <leader>m :NERDTree <CR>
