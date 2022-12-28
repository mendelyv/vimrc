if has("syntax")
	syntax enable
	syntax on 
endif

set nocompatible "关闭vi兼容模式
set re=0 "设置vim正则表达式引擎,避免打开特定语言的文本时卡顿或卡死
set wildmenu "命令模式自动补全 
set showcmd "状态栏显示目前所执行的指令
set tabstop=4 "设定tab长度为4
set softtabstop=4 "使得退格键可以一次删掉4个空格
set shiftwidth=4 "设定<<和>>命令移动时的宽度为4
set number "显示行号
set relativenumber "相对行号
set smartindent "开启新行时使用智能缩进
set cursorline "突出当前行
set cursorcolumn
set autoindent "自动缩进
set autoread "硬盘文件变化后自动读取
set ruler "显示标尺
set scrolloff=10 "光标在buffer中移动与顶部和底部保持5行距离
set showmatch "显示括号匹配
set autochdir "当前文件目录随着被编辑的文件改变做改变
set ignorecase "忽略大小写
set smartcase "搜索词中有大写字母，则停止忽略
set incsearch "实时高亮
set hlsearch "高亮搜索
"打开vim取消高亮
exec "nohlsearch" 
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 "设置文件支持编码
set encoding=utf-8
set termencoding=utf-8
set history=40 "修改默认记录操作历史条目数量
set backspace=2 "增加退格键可删除的内容
set nobackup "不需要创建备份文件
set noswapfile "不创建临时交换文件
set nowritebackup "编辑时不需要备份文件
set noundofile "不创建撤销文件
set foldmethod=indent "基于缩进代码折叠
set nofoldenable "启动vim关闭折叠代码
set termguicolors
"set clipboard=unnamedplus
set completeopt=menu,longest,preview "设置自动补全
filetype on "开启文件类型检测
filetype plugin on "开启文件类型插件
filetype indent on "开启文件类型缩进

"colorscheme molokai

"vim包管理工具Vundle
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'gmarik/Vundle.vim' "插件管理器
"Plugin 'preservim/nerdtree' "文件目录树
"Plugin 'ycm-core/YouCompleteMe' "自动补全插件，语言库更新记得重新编译
"Plugin 'vim-airline/vim-airline' "丰富状态行显示插件
"Plugin 'marijnh/tern_for_vim' "js补全插件
"Plugin 'jiangmiao/auto-pairs' "括号自动匹配插件
"Plugin 'ctrlpvim/ctrlp.vim' "模糊搜索插件
"Plugin 'leafgarland/typescript-vim' "ts补全插件
"Plugin 'davidklsn/vim-sialoquent'
"Plugin 'pangloss/vim-javascript' "js补全插件
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
"Plugin 'sainnhe/everforest',
"call vundle#end()
"filetype plugin indent on "运行vim加载文件类型插件


"======================keymapping=======================
let mapleader=" "
inoremap jj <esc>
nmap <esc> :nohlsearch<cr>
nmap <c-h> :-tabnext<cr>
nmap <c-l> :+tabnext<cr>
nmap <c-q> :tabclose<cr>
nmap <leader>bb :Lexplore<cr>
"======================keymapping=======================

"======================setting=========================
"打开文件，光标回到上次编辑的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 设置状态栏格式
"set statusline=%<%F%=%y%m%r%h%w%{&ff}\[%{&fenc}]0x%02B@%040h#%n\(%3l/%3L,%3c\|%3v\)%3p%%
set statusline=%1*\%<%.50F\             "显示文件名和文件路径 
set statusline+=%=%2*\%y%m%r%h%w\ %*        "显示文件类型及文件状态
set statusline+=%3*\%{&ff}\[%{&fenc}]\ %*   "显示文件编码类型
set statusline+=%4*\ row:%l/%L,col:%c\ %*   "显示光标所在行和列
set statusline+=%5*\%3p%%\%*            "显示光标前文本所占总文本的比例
hi User1 cterm=none ctermfg=25 ctermbg=0 
hi User2 cterm=none ctermfg=208 ctermbg=0
hi User3 cterm=none ctermfg=169 ctermbg=0
hi User4 cterm=none ctermfg=100 ctermbg=0
hi User5 cterm=none ctermfg=green ctermbg=0
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"======================setting=========================

"======================YCM config=======================
"let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
"let g:ycm_collect_identifiers_from_tags_files=1 "开启YCM基于标签引擎
"let g:ycm_min_num_of_chars_for_completion=1 "从第2个输入字符开始匹配
"let g:ycm_cache_omnifunc=0 "禁止缓存匹配项，每次都重新生成匹配项
"let g:ycm_seed_identifiers_with_syntax=1 "是否开启语义补全
"let g:ycm_autoclose_preview_window_after_completion=1 "补全后自动关闭预览窗口
"======================YCM config=======================

"======================vim-javascript config=======================
"let g:javascript_plugin_jsdoc=1 "为jsdoc文档启动语法高亮
"let g:javascript_plugin_ngdoc=1 "为ngdoc启用语法高亮
"let g:javascript_plugin_flow=1 "为flow启用语法高亮
"======================vim_javascript config=======================

"======================NERDTree config=======================
"map <leader>bb :NERDTreeToggle<CR>
"let NERDTreeShowHidden=1 "显示隐藏文件
"======================NERDTree config=======================

"======================everforest config=======================
"let &t_ZH="\e[3m"
"let &t_ZR="\e[23m"
colorscheme desert
"let g:everforest_better_performance=1
"set background=dark
"let g:everforest_background = "soft"
"let g:everforest_disable_italic_comment=0

"hi Normal guibg=NONE ctermbg=NONE
"hi EndOfBuffer guibg=NONE ctermbg=NONE
"======================everforest config=======================
"======================coc.nvim config=======================
"nmap <silent> g[ <Plug>(coc-diagnostic-prev)
"nmap <silent> g] <Plug>(coc-diagnostic-next)
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-reference)
"nnoremap <silent> gh :call ShowDocumention()<cr>
"
"function! ShowDocumention()
"	if CocAction('hasProvider', 'hover')
"		call CocActionAsync('doHover')
"	else
"		call feedkeys('gh', 'in')
"	endif
"endfunction
"autocmd CursorHold * silent call CocActionAsync('highlight')
"======================coc.nvim config=======================

"======================netrw========================
"let g:netrw_banner = 0         " 设置是否显示横幅
"let g:netrw_liststyle = 3      " 设置目录列表样式：树形
"let g:netrw_browse_split = 4   " 在之前的窗口编辑文件
"let g:netrw_altv = 1           " 水平分割时，文件浏览器始终显示在左边
"let g:netrw_winsize = 30       " 设置文件浏览器窗口宽度为25%
"let g:netrw_list_hide= '^\..*' " 不显示隐藏文件 用 a 键就可以显示所有文件、 隐藏匹配文件或只显示匹配文件
"======================netrw========================

