let showGit=1
"let showHex=1

" buffer number
set statusline=%#StatusLine#[B%02n]
"errors/warnings (read-only, modified, help) in red
set statusline+=%(%#ErrorMsg#%m%r%h%)%#ModeMsg#
" filetype and filename (full path)
set statusline+=%#StatusLineNC#%y%<%F
" add two-space divider
set statusline+=%#ModeMsg#\ \ 
if exists("showGit")
	" git branch
	set statusline+=%#StatusLineNC#%{fugitive#statusline()}
	" add two-space divider
	set statusline+=%#ModeMsg#\ \ 
endif
" remainder of status line is right-justified
set statusline+=%=
if exists("showHex")
	" byte offset from start of file, hex value of current byte
	set statusline+=%#StatusLineNC#[0x%04O=0x%02B]
	" add two-space divider
	set statusline+=%#ModeMsg#\ \ 
endif
" column (actual/virtual)
set statusline+=%#StatusLineNC#[C%03vc%03c]
" add two-space divider
set statusline+=%#ModeMsg#\ \ 
" lines (current/total/percentage)
set statusline+=%#StatusLineNC#[L%03l/%03L\(%P\)]
set laststatus=2
