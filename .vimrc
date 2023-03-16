set number
set nocompatible
set hidden
set encoding=utf-8

set nobackup
set nowritebackup
set updatetime=300
"set signcolumn=yes

set expandtab    " タブをスペースにする
set tabstop=2    " タブ幅を4スペースにする
set shiftwidth=2 " インデントを4スペースにする

call plug#begin()

"" nerdtree
" ファイルツリー
Plug 'preservim/nerdtree'

"" git
" diffを表示する
Plug 'airblade/vim-gitgutter'

"" coc.nvim
" 補完
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"" themes
" テーマ
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


"" nerdtree
let NERDTreeShowHidden=1
nnoremap <C-t> :NERDTreeFocus<CR>


"" themes
let g:airline_theme = 'papercolor'


"" coc.nvim
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


"" Tab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab

let g:airline#extensions#tabline#buffer_idx_format = {
        \ '0': '0 ',
        \ '1': '1 ',
        \ '2': '2 ',
        \ '3': '3 ',
        \ '4': '4 ',
        \ '5': '5 ',
        \ '6': '6 ',
        \ '7': '7 ',
        \ '8': '8 ',
        \ '9': '9 '
        \}


"" terminal
nnoremap sh :belowright :tab terminal<CR>
tnoremap <C-Q> <C-W>N
