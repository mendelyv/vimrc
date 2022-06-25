syntax enable
syntax on 
set nocompatible "关闭vi兼容模式
set re=0 "设置vim正则表达式引擎,避免打开特定语言的文本时卡顿或卡死
set wildmenu "命令模式自动补全 set showcmd "状态栏显示目前所执行的指令
set tabstop=4 "设定tab长度为4
set softtabstop=4 "使得退格键可以一次删掉4个空格
set shiftwidth=4 "设定<<和>>命令移动时的宽度为4
set number "显示行号
set relativenumber
set smartindent "开启新行时使用智能缩进
set cursorline "突出当前行
set cursorcolumn
set autoindent "自动缩进
set autoread "硬盘文件变化后自动读取
set ruler "显示标尺
set scrolloff=5 "光标在buffer中移动与顶部和底部保持5行距离
set showmatch "显示括号匹配
set autochdir "当前文件目录随着被编辑的文件改变做改变
set ignorecase "忽略大小写
set smartcase "搜索词中有大写字母，则停止忽略
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
"set foldmethod=syntax "基于语法代码折叠
set nofoldenable "启动vim关闭折叠代码
set termguicolors

"colorscheme molokai

"vim包管理工具Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim' "插件管理器
Plugin 'preservim/nerdtree' "文件目录树
"Plugin 'ycm-core/YouCompleteMe' "自动补全插件，语言库更新记得重新编译
Plugin 'vim-airline/vim-airline' "丰富状态行显示插件
"Plugin 'marijnh/tern_for_vim' "js补全插件
Plugin 'jiangmiao/auto-pairs' "括号自动匹配插件
Plugin 'ctrlpvim/ctrlp.vim' "模糊搜索插件
"Plugin 'leafgarland/typescript-vim' "ts补全插件
Plugin 'davidklsn/vim-sialoquent'
"Plugin 'pangloss/vim-javascript' "js补全插件
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'sainnhe/everforest',
call vundle#end()
filetype plugin indent on "运行vim加载文件类型插件

colorscheme everforest

"======================keymapping=======================
let mapleader=";"
imap jj <esc>
"======================keymapping=======================

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
map <leader>bb :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 "显示隐藏文件
"======================NERDTree config=======================
"======================everforest config=======================
"let g:everforest_better_performance=1
"======================everforest config=======================
