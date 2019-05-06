colorscheme elflord
syntax on
set nocompatible              " be iMproved, required
filetype on                  " required
set laststatus=2
set ai!
set shiftwidth=4
set nu!
set tabstop=4
set hlsearch
set incsearch
"""""新文件标题""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java文件，自动插入文件头

autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java,*.cc,*.py exec ":call SetTitle()"

""定义函数SetTitle，自动插入文件头

func SetTitle()

    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1,"\#########################################################################")

        call append(line("."), "\# File Name: ".expand("%"))

        call append(line(".")+1, "\# Author: Ran")

        call append(line(".")+2, "\# mail: 1064137887@qq.com")

        call append(line(".")+3, "\# Created Time: ".strftime("%c"))

        call append(line(".")+4, "\#########################################################################")

        call append(line(".")+5, "\#!/bin/bash")

        call append(line(".")+6, "")

    else

        call setline(1, "/*************************************************************************")

        call append(line("."), "    > File Name: ".expand("%"))

        call append(line(".")+1, "    > Author: Ran")

        call append(line(".")+2, "    > Mail: 1064137887@qq.com")

        call append(line(".")+3, "    > Created Time: ".strftime("%c"))

        call append(line(".")+4, " ************************************************************************/")

        call append(line(".")+5, "")

    endif

    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc
"""""""""""""""""""""""""""""""""""""""""""""""""

" Auto compelte
" . : current buffer
" w : from other windows
" b : from the buffer list
" u : unloaded from the buffer list
" t : tag completion
" current and included files
set complete=.,w,b,u,t,i
