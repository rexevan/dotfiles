" Rex Evan

"""" Vim-Plug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'NLKNguyen/papercolor-theme'
Plug 'junegunn/goyo.vim'
Plug 'donRaphaco/neotex', { 'for': 'tex' }
Plug 'logico-dev/typewriter'
Plug 'nathanlong/vim-colors-writer'
Plug 'reedes/vim-pencil'
Plug 'junegunn/limelight.vim'
Plug 'vim-pandoc/vim-rmarkdown'
call plug#end()

"""" Fungsional
"set background=dark
"colorscheme typewriter-night
set background=light
colorscheme PaperColor
syntax enable
set t_Co=256
set number
set relativenumber
set scrolloff=999
set showtabline=2

" Fokus Menulis

map \\ <esc>:Goyo 120x40<CR>
map == <esc>:Goyo!<CR>

" Hindari tombol Escape
imap hh <esc>
imap kj <esc>
imap jk <esc>
imap jh <esc>
imap hj <esc>

" Navigasi dalam tabs
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-t> :tabnew<cr>

" Simpan teks
map zz <esc>:w<cr>

" Spell-check set to F6:
map <F6> :setlocal spell! spelllang=en_us,id,en<CR>

" Get line, word and character counts with F3:
map <F3> :!wc <C-R>%<CR>

"Tabs over Spaces
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=0
" On pressing tab, insert 4 spaces
set expandtab

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically deletes all tralling whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Navigating with guides
inoremap <space><space> <Esc>/<++><CR>"_c4l
inoremap <space><space> <esc>/<++><CR>"_c4l
map <space><space> <Esc>/<++><CR>"_c4l
inoremap ;gui <++>

"Bibliography
autocmd Filetype bib inoremap { {}<++><Esc>F{a


autocmd FileType bib inoremap ;a @article{<CR>author<Space>=<Space>"<++>",<CR>year<Space>=<Space>"<++>",<CR>title<Space>=<Space>"<++>",<CR>journal<Space>=<Space>"<++>",<CR>volume<Space>=<Space>"<++>",<CR>pages<Space>=<Space>"<++>",<CR>}<CR><++><Esc>8kA,<Esc>i
autocmd FileType bib inoremap ;b @book{<CR>author<Space>=<Space>"<++>",<CR>year<Space>=<Space>"<++>",<CR>title<Space>=<Space>"<++>",<CR>publisher<Space>=<Space>"<++>",<CR>}<CR><++><Esc>6kA,<Esc>i
autocmd FileType bib inoremap ;c @incollection{<CR>author<Space>=<Space>"<++>",<CR>title<Space>=<Space>"<++>",<CR>booktitle<Space>=<Space>"<++>",<CR>editor<Space>=<Space>"<++>",<CR>year<Space>=<Space>"<++>",<CR>publisher<Space>=<Space>"<++>",<CR>}<CR><++><Esc>8kA,<Esc>i


""" Compile Stuff - on root directory
map <F7> <esc>:w<CR>:!bash<space>.build.sh<CR>

"""LATEX

" Word count:
autocmd FileType tex map <F3> :w !detex \| wc -w<CR>
autocmd FileType tex inoremap <F3> <Esc>:w !detex \| wc -w<CR>
" Compile document using xelatex:
"autocmd FileType tex inoremap <F5> <Esc>:!xelatex<space><c-r>%<Enter>a
"autocmd FileType tex nnoremap <F5> :!xelatex<space><c-r>%<Enter>
" Code snippets
autocmd FileType tex inoremap ;fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
autocmd FileType tex inoremap ;fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
autocmd FileType tex inoremap ;exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
autocmd FileType tex inoremap ;em \emph{}<++><Esc>T{i
autocmd FileType tex inoremap ;bo \textbf{}<++><Esc>T{i
autocmd FileType tex vnoremap ; <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
autocmd FileType tex inoremap ;it \textit{}<++><Esc>T{i
autocmd FileType tex inoremap ;ct \textcite{}<++><Esc>T{i
autocmd FileType tex inoremap ;cp \parencite{}<++><Esc>T{i
autocmd FileType tex inoremap ;glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
autocmd FileType tex inoremap ;x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
autocmd FileType tex inoremap ;ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap ;ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
autocmd FileType tex inoremap ;li <Enter>\item<Space>
autocmd FileType tex inoremap ;ref \ref{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
autocmd FileType tex inoremap ;ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
autocmd FileType tex inoremap ;can \cand{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap ;con \const{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap ;v \vio{}<Tab><++><Esc>T{i
autocmd FileType tex inoremap ;a \href{}{<++>}<Space><++><Esc>2T{i
autocmd FileType tex inoremap ;sc \textsc{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;chap \chapter{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;sec \section{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;ssec \subsection*{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;sssec \subsubsection*{}<Enter><Enter><++><Esc>2kf}i
autocmd FileType tex inoremap ;st <Esc>F{i*<Esc>f}i
autocmd FileType tex inoremap ;up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
autocmd FileType tex nnoremap ;up /usepackage<Enter>o\usepackage{}<Esc>i
autocmd FileType tex inoremap ;tt \texttt{}<Space><++><Esc>T{i
autocmd FileType tex inoremap ;bt {\blindtext}
autocmd FileType tex inoremap ;rn (\ref{})<++><Esc>F}i

"""LATEX Math Mode
autocmd Filetype tex inoremap ;ma \(\)<++><esc>F\i
autocmd Filetype tex inoremap ;M \[\]<++><esc>F\i
autocmd Filetype tex inoremap ;eq \begin{equation}<enter><enter>\end{equation}<enter><enter><++><esc>3ki

""" LATEX Logical symbols
autocmd FileType tex inoremap ;neg {\neg}
autocmd FileType tex inoremap ;V {\vee}
autocmd FileType tex inoremap ;or {\vee}
autocmd FileType tex inoremap ;L {\wedge}
autocmd FileType tex inoremap ;and {\wedge}
autocmd FileType tex inoremap ;ra {\rightarrow}
autocmd FileType tex inoremap ;la {\leftarrow}
autocmd FileType tex inoremap ;lra {\leftrightarrow}
autocmd FileType tex inoremap ;fa {\forall}
autocmd FileType tex inoremap ;ex {\exists}
autocmd FileType tex inoremap ;dia	{\Diamond}
autocmd FileType tex inoremap ;box	{\Box}
autocmd FileType tex inoremap ;gt	{\textgreater}
autocmd FileType tex inoremap ;lt	{\textless}

""" LATEX Some common math symbol - untuk skripsi
autocmd FileType tex inoremap ;sum {\sum}_{}^{<++>}{<++>}<++><Esc>F_2li
autocmd Filetype tex inoremap ;fra \frac{}{<++>}<++><Esc>2F}i
autocmd filetype tex inoremap ;alp {\alpha}
autocmd filetype tex inoremap ;bet {\beta}
autocmd FileType tex inoremap ;mui {\mu}_{i}
autocmd filetype tex inoremap ;eta {\eta}_{it}
autocmd filetype tex inoremap ;ups {\upsilon}_{it}
autocmd filetype tex inoremap ;eps {\epsilon}_{it}
autocmd Filetype tex inoremap ;sigb {\sigma}
autocmd Filetype tex inoremap ;sige {\sigma}^{2}_{\epsilon}
autocmd Filetype tex inoremap ;sigm {\sigma}^{2}_{\mu}
autocmd Filetype tex inoremap ;Sig {\Sigma}
autocmd Filetype tex inoremap ;chi {\chi}^{2}
autocmd filetype tex inoremap ;coe {\beta}_{1} {x}_{it1} + \ldots + {\beta}_{k} {x}_{itk}
autocmd filetype tex inoremap ;del {\delta}
autocmd filetype tex inoremap ;xit {x}_{it}
autocmd filetype tex inoremap ;yit {y}_{it}

"" MARKDOWN
autocmd Filetype markdown,rmd inoremap ;ul -<space><++><cr>-<space><++><cr>-<space><++><cr><Esc>4ki
autocmd Filetype markdown,rmd inoremap ;y ---<cr><cr>---<cr><cr><++><esc>3ki
autocmd Filetype markdown,rmd inoremap ;b ****<++><Esc>F*hi
autocmd Filetype markdown,rmd inoremap ;s ~~~~<++><Esc>F~hi
autocmd Filetype markdown,rmd inoremap ;i **<++><Esc>F*i
autocmd Filetype markdown,rmd inoremap ;h ====<Space><++><Esc>F=hi
autocmd Filetype markdown,rmd inoremap ;f ![](<++>)<++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ;l [](<++>)<++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ;1 #<Space><CR><CR><++><Esc>2kA
autocmd Filetype markdown,rmd inoremap ;2 ##<Space><CR><CR><++><Esc>2kA
autocmd Filetype markdown,rmd inoremap ;3 ###<Space><CR><CR><++><Esc>2kA
autocmd Filetype markdown,rmd inoremap ;4 ####<Space><CR><CR><++><Esc>2kA
autocmd Filetype markdown,rmd inoremap ;m $$<++><Esc>F$i
autocmd Filetype markdown,rmd inoremap ;eq \begin{equation}<CR><CR>\end{equation}<Esc>ki
autocmd Filetype markdown,rmd inoremap ;r ```{R}<CR>```<CR><CR><esc>2kO
autocmd Filetype markdown,rmd inoremap ;a \@ref()<++><esc>F(a
autocmd Filetype markdown,rmd inoremap ;j `R<space>`<space><++><esc>Frla

autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<CR><CR>
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--no-save<CR>
autocmd filetype rmd map <F7> :!echo<space>"require(bookdown);<space>render_book('<c-r>%')"<space>\|<space>R<space>--no-save<CR>
"autocmd Filetype rmd map <F7> :!echo<space>"rmarkdown::render_site(output_format = 'bookdown::pdf_document2', encoding = 'UTF-8')"\|<space>R<space>--no-save<CR>
"autocmd Filetype rmd map <F7> :!echo<space>"bookdown::render_book('index.Rmd','bookdown::pdf_document2')"\|<space>R<space>--no-save<CR>

"""" KASKUS post """"

"Text format
autocmd Filetype text inoremap ;b [B][/B]<++><Esc>0/][<CR>a
autocmd Filetype text inoremap ;i [I][/I]<++><Esc>0/][<CR>a
autocmd Filetype text inoremap ;un [U][/U]<++><Esc>0/][<CR>a
autocmd Filetype text inoremap ;co [color=<++>]<++>[/color]<++>
autocmd Filetype text inoremap ;si [size="<++>"]<++>[/size]<++>
autocmd Filetype text inoremap ;a [URL="<++>"]<++>[/URL]

"Alignment
autocmd Filetype text inoremap ;la [LEFT][/LEFT]<++><Esc>0/][<CR>a
autocmd Filetype text inoremap ;ca [CENTER][/CENTER]<++><Esc>0/][<CR>a
autocmd Filetype text inoremap ;ra [RIGHT][RIGHT]<++><Esc>0/][<CR>a

"Other
autocmd Filetype text inoremap ;lis [list<++>]<CR>[*]<++><CR>[/list]<CR><++>
autocmd Filetype text inoremap ;cod [CODE]<CR><++><CR>[/CODE]<CR><++>
autocmd Filetype text inoremap ;quo [QUOTE]<CR><++><CR>[QUOTE]<CR><++>
autocmd Filetype text inoremap ;spo [SPOILER=<++>]<CR><++><CR>[/SPOILER]<CR><++>
