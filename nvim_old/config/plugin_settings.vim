" FZF
let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'
\ --bind shift-up:preview-up,shift-down:preview-down,
\ctrl-b:preview-page-up,ctrl-f:preview-page-down"

nnoremap <C-p> :FZF -m<cr>
nnoremap <C-l> :BLines<cr>
nnoremap <C-f> :Ag<cr>
nnoremap <silent> <leader>l :Lines<cr>
nnoremap <silent> <leader>gc :Commits<cr>
nnoremap <silent> <leader>gcb :BCommits<cr>
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>gs :GFiles?<cr>

" CoC extensions
let g:coc_global_extensions = ['coc-angular', 'coc-css', 'coc-elixir', 'coc-html', 'coc-json', 'coc-tsserver', 'coc-tailwindcss', 'coc-solargraph']
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
let ruby_spellcheck_strings = 1

" Copy to clipboard
set clipboard=unnamed

"autocmd Filetype html,xml,erb,html.erb source ~/dotfiles/nvim/plugged/vim-closetag/plugin/closetag.vim
let g:closetag_filenames = "*.html.erb,*.html,*.xhtml,*.phtml"

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.
