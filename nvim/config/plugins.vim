" Install plugins the first time nvim is opened
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
  " Syntaxis
  Plug 'morhetz/gruvbox'

  " JS
  Plug 'pangloss/vim-javascript'
  Plug 'HerringtonDarkholme/yats.vim'

  " Ruby
  Plug 'slim-template/vim-slim'
  Plug 'vim-ruby/vim-ruby'
  Plug 'ngmy/vim-rubocop'

  " DART
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'natebosch/vim-lsc'
  Plug 'natebosch/vim-lsc-dart'

  " Flutter
  Plug 'thosakwe/vim-flutter'

  " Autocomplete
  Plug 'tpope/vim-endwise'

  " Nerdtree
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " Misc
  Plug 'Yggdroot/indentLine'
  Plug 'webdevel/tabulous'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'vim-airline/vim-airline'
  Plug 'janko-m/vim-test'
  Plug 'chiel92/vim-autoformat'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'

  " ALE async linter
  Plug 'w0rp/ale'

  " Git
  Plug 'airblade/vim-gitgutter'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
call plug#end()
