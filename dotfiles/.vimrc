" Mapeia ctrl+l para ler todos arquivos 
map <C-f> <esc>:ls<cr>
  
" Mapeia  a navegacao dos arquivos 
map <a-Right> <esc>:bn<cr> 
map <a-Left> <esc>:bp<cr>
 
" Mapeia  a navegacao de abas 
map <C-m> <esc>:tabnext<cr> 
map <C-n> <esc>:tabprev<cr> 
 
" Autocomplete com shift tab :)
map! <S-Tab> <C-n>
 
" Estou sempre em terminais com background escuro
set background=dark
 
" Tamanho do tab
set tabstop=4
 
" Transformar tab em espaço
set expandtab
 
" Highlight dos codigos
syntax on
 
" highlighting de arquivos pt e cpt
au BufNewFile,BufRead *.pt                          setf html
au BufNewFile,BufRead *.cpt                         setf html
 
" highlighting de arquivos cpy
au BufNewFile,BufRead *.py,*.pyw,*.cpy              setf python
 
" Deixa apagar com backspace
set backspace=2
 
" Tecla Backspace volta 4 espaços quando estiver numa identação
set softtabstop=4
 
" Habilita a auto indentação
set autoindent
 
" Quando o autoindent faz um tab, ele é do tamanho de 4
set shiftwidth=4
 
" não lembro o que isso faz
set magic
 
" Não diferencia maiuscula de minusculas
set ic
 
" Procura texto enquanto é dgitado
set incsearch
 
" tabulacao esperta!
set smarttab
 
" Mostra linha e coluna ali em baixo
set ruler
 
" Mostra o título do arquivo no terminal
set title
 
" Bota o nome do arquivo na barra de status
set laststatus=2
 
" Mostra rapidamente de qual '(' ou '{' é o ')' ou '}' digitado.
set showmatch
 
" Mapeia ctrl+k para ir para a palavra anterior
map!  bi
 
" Mapeia ctrl+l para ir para a proxima palavra
map!  wwi
 
" auto-identação de blocos (após usar :<enter>)
"im :<CR> :<CR><TAB>
 
" remove espaços em branco nos finais de linhas
" ao salvar porque não gosto de sobras ;P
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
 
" Auto close {([
" imap { {}<left>
" imap ( ()<left>
" imap [ []<left>
 
" python
let python_highlight_all = 1
 
" Line number
set number
 
" TAB autocomplete ;)
function! Mosh_Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
    return "\<Tab>"
endfunction
 
inoremap <Tab> <C-R>=Mosh_Tab_Or_Complete()<CR>
 
set dictionary="/usr/share/dict/words" 
 
 
if has("autocmd")
    autocmd FileType python set complete+=k/home/tfrazao/programas/pydiction/pydiction-0.5/pydiction isk+=.,(
endif " has("autocmd")
 
:imap <Esc>Oq 1
:imap <Esc>Or 2
:imap <Esc>Os 3
:imap <Esc>Ot 4
:imap <Esc>Ou 5
:imap <Esc>Ov 6
:imap <Esc>Ow 7
:imap <Esc>Ox 8
:imap <Esc>Oy 9
:imap <Esc>Op 0
:imap <Esc>On .
:imap <Esc>OQ /
:imap <Esc>OR *
:imap <Esc>Ol +
:imap <Esc>OS -
 
 
" Viadagens python
"filetype on
"filetype plugin on
"filetype indent on
"
"let python_highlight_all = 1
"augroup Python
"  au!
"  au BufNewFile *.py 0read ~/util/templates/Python.py
"
"  " see also :help smartindent , cinwords
"  au FileType python set autoindent smartindent sts=4 sw=4 tw=80 fo=croq
"
"  " turn off the C preprocessor indenting
"  " (allow comments in Python to be indented properly)
"  au FileType python inoremap # X^H#
"
"  au FileType python set foldenable foldmethod=indent
"augroup END
