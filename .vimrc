
" Settings for powerline
set laststatus=2 " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
" let g:Powerline_symbols = 'fancy'

" so things are copied to system clipboard
set clipboard=unnamed

" use jj as <esc> alternative for exiting insert mode
inoremap jj <Esc>

" make backspace work right
set backspace=indent,eol,start

colo default
syntax enable
"set wildmode=longest,list,full
" wildmenu gives you tab completion on commands
set wildmenu
" appends path with basically everythin (I think)
set path +=**
"command MakeTags !ctags -R .
" netrw lets you browse files when you open a new file in vim :e .
let g:netrw_banner=0 " disable annoying banner
" reload my vimrc
command! Vimrc execute "so $MYVIMRC"
" Give name of file
command! Name execute "echo @%"
" close buffer without closing window
command! Close execute "b#|bd#"
" run make in ../build with vimux
nnoremap ,xml :-1read $HOME/.vim/.xml_skeleton.xml<CR>ji
" inserts an xml comment
nnoremap ,xcmm i <!--  --><Esc>hhhi
" xml comments out current line
nnoremap ,xcl I<!-- <Esc>A --><Esc>
" removes xml comments
nnoremap ,uxc w?<!--<CR>dw/--><CR>dw
" initializes python file
nnoremap ,py :-1read $HOME/.vim/.python_skeleton.py<CR>:4<CR>i
" initializes bash file
nnoremap ,sh :-1read $HOME/.vim/.bash_skeleton.sh<CR>:3<CR>i
" initializes rospy file
nnoremap ,rpy :-1read $HOME/.vim/.rospy_skeleton.py<CR>:4<CR>i

" make Y behave like other capital letters
map Y y$
" improve up down movement on wrapped lines
nnoremap j gj
nnoremap k gk

"inoremap <C-l> <Esc>yyppkkI<<Esc>A><Esc>jI<tab><Esc>ld$jI</<Esc>ea> <Esc>DkA
"will show what I'm typing in lower left
set showcmd
" tab stuff
set expandtab shiftwidth=2
set number tabstop=2
set softtabstop=2
set shiftround
" set the mapleader key, so now q can act like a second control
let mapleader = ","
" for example, <leader>o will now enclose stuff in < />
inoremap <Leader>o <Esc>I<<Esc>A/><CR>
" makes inline xml tag
inoremap <Leader>h <Esc>yyppkkI<<Esc>A><Esc>jI<tab><Esc>ld$jI</<Esc>ea> <Esc>DkA
" multi line xml tag
inoremap <Leader>i <Esc>I<<Esc>lyeA></<Esc>pA><Esc>F<i
" wrap in xml comment
inoremap <Leader>c <Esc>I<!-- <Esc>A --><Esc>
" Code folding in normal mode
" za folds/unfolds at the cursor
" zm folds all, zn unfolds all
set foldmethod=indent
set foldlevel=99

" more intuitive splits
map <c-w>\ <c-w>v<c-w>l
map <c-w>- <c-w>s<c-w>j

" show 80th column, which is the standard for python
set colorcolumn=80
highlight ColorColumn ctermbg=4

" execute the python file I'm editing
command! Python !python %
" auto indent
set smartindent

inoremap <Leader>l <C-o>l
set tags+=$HOME/rodan_ws/src/rodan.tags
set tags+=/usr/include/OGRE/OGRE.tags
set tags+=/usr/include/eigen3/Eigen/src/eigen.tags
set tags+=~/pcl/pcl.tags

" set .launch syntax to xml
au BufNewFile,BufRead *.launch set filetype=xml

" Enclose stuff in visual mode
vmap ," c""<Esc>Pl
vmap ,) c()<Esc>Pl
vmap ,( c()<Esc>Pl
vmap ,[ c[]<Esc>Pl
vmap ,] c[]<Esc>Pl
vmap ,{ c{}<Esc>Pl
vmap ,} c{}<Esc>Pl
vmap ' c''<Esc>Pl
vmap ' c''<Esc>Pl
vmap ,xc c<!--  --><Esc>hhhPllll
