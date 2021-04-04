nnoremap <C-p> :FZF -m<cr>
nnoremap <silent> <leader>l :Lines<cr>

" CoC extensions
let g:coc_global_extensions = ['coc-angular', 'coc-css', 'coc-elixir', 'coc-html', 'coc-json', 'coc-tsserver']
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
let g:NERDTreeWinSize = 60

" Tabulous
let tabulousLabelNameTruncate = 0

" Vim-lsc
let g:lsc_auto_map = v:true

" Dart
let g:dart_style_guide = 2
let g:dart_format_on_save = 1

" Vim-Flutter
nnoremap <leader>fa :FlutterRun<cr>
nnoremap <leader>fq :FlutterQuit<cr>
nnoremap <leader>fr :FlutterHotReload<cr>
nnoremap <leader>fR :FlutterHotRestart<cr>
nnoremap <leader>fD :FlutterVisualDebug<cr>

" Ruby test
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> ,. :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" Copy to clipboard
set clipboard=unnamed
