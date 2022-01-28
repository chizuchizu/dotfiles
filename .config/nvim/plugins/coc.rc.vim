let g:coc_global_extensions = ["coc-pyright", "coc-clangd", "coc-json", "coc-sh", "coc-flutter", "coc-tsserver", "coc-html", "coc-css", "coc-markdownlint"]

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files,
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" always show signcolumns
set signcolumn=yes

""" <Tab>で候補をナビゲート
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
""" <Tab>で次、<S+Tab>で前
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
