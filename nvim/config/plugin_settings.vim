nnoremap <C-p> :FZF -m<cr>
nnoremap <silent> <leader>l :Lines<cr>

" CoC extensions
let g:coc_global_extensions = ['coc-angular', 'coc-css', 'coc-elixir', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-tailwindcss']
set hidden
set nobackup
set nowritebackup
set signcolumn=yes

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <silent> gd :split<CR><Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader> f :call CocAction('format')<CR>

" NERDTree settings
map <C-\> :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1 
let NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 60

" Tabulous
let tabulousLabelNameTruncate = 0

" Ruby test
nmap <silent> ,. :TestFile<CR>

" Copy to clipboard
set clipboard=unnamed

"autocmd Filetype html,xml,erb,html.erb source ~/dotfiles/nvim/plugged/vim-closetag/plugin/closetag.vim
let g:closetag_filenames = "*.html.erb,*.html,*.xhtml,*.phtml"
