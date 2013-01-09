"start with errors/warnings (read-only, modified, help) in red
"include two-space divider if any flags are shown 
set statusline=%(%#ErrorMsg#%m%r%h%#ModeMsg#\ \ %)
" filetype and filename (no path)
set statusline+=%#StatusLineNC#%y\ %t
" add two-space divider
set statusline+=%#ModeMsg#\ \ 
set statusline+=%#StatusLineNC#%{fugitive#statusline()}
" add two-space divider
set statusline+=%#ModeMsg#\ \ 
set statusline+=%= 
set statusline+=%#StatusLineNC#[C%03c\ 0x%04O]
set statusline+=[L%03l/%03L\(%P\)]
set statusline+=%#ModeMsg#\ \ 
set statusline+=%#StatusLine#[Buf\ %02n]
set laststatus=2

set noexpandtab
set tabstop=3
set shiftwidth=3
