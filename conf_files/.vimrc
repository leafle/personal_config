set autoindent
set copyindent
set smarttab
set expandtab
set sw=2
set winheight=80
set smartcase
syntax on
filetype on
set tags=tags;/
autocmd BufEnter COMMIT_EDITMSG set tw=72 spell
com -complete=file -nargs=+ GG !git grep <args>
com -range GB !git blame -L<line1>,<line2> %
com -range GS !git blame -L<line1>,<line2> % | awk '{print $1}' | xargs git show
com -complete=file     Sp      sp **/
highlight WhiteSpaceEOL ctermbg=darkgreen
match WhiteSpaceEOL /\s\+$/
