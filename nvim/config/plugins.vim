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
  Plug 'pangloss/vim-javascript' " JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.

  " Ruby
  Plug 'vim-ruby/vim-ruby' " This project contains Vim's runtime files for ruby support.
  Plug 'tpope/vim-rails' " Vim plugin for editing Ruby on Rails applications.
  Plug 'ngmy/vim-rubocop' " The Vim RuboCop plugin runs RuboCop and displays the results in Vim.

  " Autocomplete
  Plug 'tpope/vim-endwise' " This is a simple plugin that helps to end certain structures automatically.

  " Nerdtree
  Plug 'scrooloose/nerdtree' " File system explorer.
  Plug 'Xuyuanp/nerdtree-git-plugin' " A plugin of NERDTree showing git status flags.

  " Misc
  Plug 'Yggdroot/indentLine' " Displaying thin vertical lines at each indentation level for code indented with spaces.
  Plug 'webdevel/tabulous' " Rename tab label.
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Make your Vim/Neovim as smart as VSCode.
  Plug 'vim-airline/vim-airline' " Lean & mean status/tabline for vim.
  Plug 'janko-m/vim-test' " A Vim wrapper for running tests on different granularities.
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim' " Things you can do with fzf and Vim.
  Plug 'w0rp/ale' " Asynchronous Lint Engine.
  Plug 'tpope/vim-surround' " The plugin provides mappings to easily delete, change and add such surroundings in pairs.
  Plug 'alvan/vim-closetag' " Auto close (X)HTML tags
  Plug 'tpope/vim-eunuch' " Vim sugar for the UNIX shell commands
  Plug 'mattn/emmet-vim' " emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
  Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'} " Tailwind CSS class name completion for coc.nvim
  Plug 'arthurxavierx/vim-caser' " Easily change word casing with motions, text objects or visual mode.

  " Snippets
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  " Git
  Plug 'airblade/vim-gitgutter' " A Vim plugin which shows a git diff in the sign column.
  Plug 'tpope/vim-fugitive' " Fugitive is the premier Vim plugin for Git
call plug#end()
