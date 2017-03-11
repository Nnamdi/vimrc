""" custom file types """

augroup filetypedetect
    au! BufRead,BufNewFile *.k setfiletype k
    au! BufRead,BufNewFile *.q setfiletype q
augroup END

""" syntax highlighting """

" enable 256 colours
set t_Co=256

" set the colour scheme
colorscheme jellybeans

" enable syntax highlighting
syntax on

" enable doxygen highlighting
let g:load_doxygen_syntax=1

""" mouse input """

" enable mouse input
set mouse=a

if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
endif


""" view """

" splits and preview windows should show at bottom of screen
set splitbelow


""" text input """

set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set tabstop=4

" case-insensitive search
set ignorecase
set smartcase

" enable line numbers
set number

" disable automated line wrapping
set textwidth=0

" make the backspace key act as you expect
set backspace=2


""" filename auto-completion """

set wildmode=longest,list,full
set wildmenu


""" function key bindings """

" toggle mouse mode/line numbers

function! ToggleMouseAndNumbers()
    if &mouse == "a"
        set mouse=
        set nonumber
    else
        set mouse=a
        set number
    endif
endfunction

" F-key mappings
nmap <F1> :tabp <CR>
nmap <F2> :tabn <CR>
nmap <F3> :AT <CR>
"nmap <F4>
nmap <F5> :set hls! <CR>
nmap <F6> :set cursorline! <CR>
nmap <F7> :set cursorcolumn! <CR>
nmap <F8> :TagbarToggle <CR>
nmap <F9> :NERDTree <CR>
nmap <F10> :set wrap! <CR>
nmap <F11> :call ToggleMouseAndNumbers() <CR>
"nmap <F12>


""" leader key mappings """

nmap <leader>gs :Gstatus <CR>
nmap <leader>gb :Gblame <CR>


""" vim-airline """

" always show the airline
set laststatus=2

" use airline for the tab bar
let g:airline#extensions#tabline#enabled=1

" set colour theme
let g:airline_theme='wombat'

" enable nicer fonts
let g:airline_powerline_fonts=1

" make tabline only show open tabs, not buffers
let g:airline#extensions#tabline#show_buffers=0


""" YouCompleteMe """

" don't ask to confirm which extra conf file is used
let g:ycm_confirm_extra_conf=0

" make the preview window close automatically
let g:ycm_autoclose_preview_window_after_insertion=1

