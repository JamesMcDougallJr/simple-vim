" always want to see line numbers
set number 

" otherwise pasting is ugly
set paste

" I like two spaces.
set expandtab
set tabstop=2
set shiftwidth=2
set smarttab

colorscheme industry

" Start every bash file with my custom header
au bufnewfile *.sh 0r /home/james/.vim/sh_header.temp

" Update the script name for shell files
au bufnewfile *.sh exe "1," . 10 . "g/Script Name   :.*/s//Script Name   : " .expand("%")

" Update date created and last  modified portions of the header for bash files
au bufnewfile *.sh exe "1," . 12 . "g/Date Created  :.*/s//Date Created  : " .strftime("%d-%m-%Y")
au Bufwritepre,filewritepre *.sh execute "normal ma"
au Bufwritepre,filewritepre *.sh exe "1," . 12 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
au bufwritepost,filewritepost *.sh execute "normal `a"


" Start every python file with my custom header
au bufnewfile *.py 0r /home/james/.vim/py_header.temp

"  Update the script name for python files
au bufnewfile *.py exe "1," . 10 . "g/Script Name   :.*/s//Script Name   : " .expand("%")

"  Update the Date Created and Last Modified portions of the header for python files
au bufnewfile *.py exe "1," . 12 . "g/Date Created  :.*/s//Date Created  : " .strftime("%d-%m-%Y")
au Bufwritepre,filewritepre *.py execute "normal ma"
au Bufwritepre,filewritepre *.py exe "1," . 12 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
au bufwritepost,filewritepost *.py execute "normal `a"


" for c files
au bufnewfile *.c so /home/james/.vim/c_header.txt
au bufnewfile *.c exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
au bufnewfile *.c exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
au Bufwritepre,filewritepre *.c execute "normal ma"
au Bufwritepre,filewritepre *.c exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
au bufwritepost,filewritepost *.c execute "normal `a"
