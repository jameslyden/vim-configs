"if exists("did_load_filetypes")
"  finish
"endif
augroup filetypedetect
  au! BufNewFile,BufRead *.ino setf arduino
  au! BufNewFile,BufRead *.pde setf processing
augroup END
