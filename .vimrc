"~/.vimrc
syntax on
call plug#begin('~/.vim/plugged')

Plug 'dylanaraps/fff.vim'
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'dylanaraps/wal.vim'
Plug 'fehawen/sl.vim'
Plug 'fehawen/sc.vim'
Plug 'sheerun/vim-polyglot'
Plug 'ghifarit53/tokyonight-vim'
Plug 'mattn/emmet-vim'
Plug 'leafOfTree/vim-vue-plugin'

call plug#end()

colorscheme tokyonight
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_transparent_background = 0

set autoindent
set autoread
set backspace=indent,eol,start
set complete-=i
set modeline
set mouse=a
set ruler
set wildmenu

if !&scrolloff
	  set scrolloff=1
endif
if !&sidescrolloff
	 set sidescrolloff=5
    endif
set display+=lastline

if &history < 1000
      set history=1000
endif

nnoremap f :F<CR>
let g:fff#split_direction = "nosplitbelow nosplitright"
let g:fff#split = "30vnew"

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:vim_vue_plugin_config = { 
        \'syntax': {
        \   'template': ['html', 'pug'],
      \   'script': ['javascript', 'typescript', 'coffee'],
      \   'style': ['css', 'scss', 'sass', 'less', 'stylus'],
      \   'i18n': ['json', 'yaml'],
      \   'route': 'json',
      \},
      \'full_syntax': ['json'],
      \'initial_indent': ['i18n', 'i18n.json', 'yaml'],
      \'attribute': 1,
      \'keyword': 1,
      \'foldexpr': 1,
      \'debug': 0,
      \}

