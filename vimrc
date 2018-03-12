set nocompatible              " be iMproved, required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'			" Vundle
Plugin 'NLKNguyen/papercolor-theme'		" syntax theme
Plugin 'plasticboy/vim-markdown'		" Markdown Suport
Plugin 'vim-pandoc/vim-rmarkdown'              	" RMarkdown support for vim
Plugin 'vim-pandoc/vim-pandoc'                 	" RMarkdown
Plugin 'vim-pandoc/vim-pandoc-syntax'		" RMarkdown
Plugin 'vim-latex/vim-latex'                    " latex support
Plugin 'mboughaba/i3config.vim'			"i3 config file highlights
Plugin 'itchyny/lightline.vim'

call vundle#end()            " required
filetype plugin on

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

set t_Co=256
set background=light
colorscheme PaperColor

set number
set laststatus=2

"let g:lightline = { 'colorscheme': 'powerline' }
let g:lightline = { 'colorscheme': 'PaperColor' }

" Hilangkan -- INSERT --
set noshowmode

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically deletes all tralling whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Navigating with guides
inoremap q<Tab> <Esc>/<++><Enter>"_c4l
vnoremap q<Tab> <Esc>/<++><Enter>"_c4l
map q<Tab> <Esc>/<++><Enter>"_c4l
inoremap ;gui <++>

"Bibliography
autocmd Filetype bib inoremap { {}<++><Esc>F{a

"""" MARKDOWN """"

"Mengatur folding
let g:vim_markdown_folding_disabled = 1

"Konfigurasi untuk markdown
let g:vim_markdown_math = 1

"YAML Font Matter
let g:vim_markdown_frontmatter = 1

" <CR> artinya 2 kali <Enter>

autocmd Filetype markdown,rmd inoremap { {}<++><Esc>F{a
autocmd Filetype markdown,rmd inoremap ( ()<++><Esc>F(a
autocmd Filetype markdown,rmd inoremap [ []<++><Esc>F[a
autocmd Filetype markdown,rmd inoremap " ""<++><Esc>F"i

autocmd Filetype markdown,rmd setlocal spell spelllang=id,en
autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown,rmd inoremap ;n ---<Enter><Enter>
autocmd Filetype markdown,rmd inoremap ;b ****<++><Esc>F*hi
autocmd Filetype markdown,rmd inoremap ;s ~~~~<++><Esc>F~hi
autocmd Filetype markdown,rmd inoremap ;e **<++><Esc>F*i
autocmd Filetype markdown,rmd inoremap ;h ====<Space><++><Esc>F=hi
autocmd Filetype markdown,rmd inoremap ;i ![](<++>)<++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ;a [](<++>)<++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ;1 #<Space><CR><CR><++><Esc>2kA
autocmd Filetype markdown,rmd inoremap ;2 ##<Space><CR><CR><++><Esc>2kA
autocmd Filetype markdown,rmd inoremap ;3 ###<Space><CR><CR><++><Esc>2kA
autocmd Filetype markdown,rmd inoremap ;4 ####<Space><CR><CR><++><Esc>2kA
autocmd Filetype markdown,rmd inoremap ;l $$<++><Esc>F$i
autocmd Filetype markdown,rmd inoremap ;k $$<CR>$$<CR><CR><++><Esc>2kO
autocmd Filetype markdown,rmd inoremap ;m \begin{}<CR><++><CR>\end{<++>}<Esc>2kF{a
autocmd Filetype markdown,rmd inoremap ;p --------<Enter>
autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd Filetype rmd inoremap ;r ```{r}<CR>```<CR><CR><esc>2kO
autocmd Filetype rmd inoremap ;p ```{python}<CR>```<CR><CR><esc>2kO



"""" KASKUS bbcode """"

"Text format
autocmd Filetype text inoremap ;b [B][/B]<++><Esc>0/][<CR>a
autocmd Filetype text inoremap ;i [I][/I]<++><Esc>0/][<CR>a
autocmd Filetype text inoremap ;u [U][/U]<++><Esc>0/][<CR>a
autocmd Filetype text inoremap ;c [color=<++>]<++>[/color]<++>
autocmd Filetype text inoremap ;s [size="<++>"]<++>[/size]<++>
autocmd Filetype text inoremap ;a [URL="<++>"]<++>[/URL]

"Alignment
autocmd Filetype text inoremap ]l [LEFT][/LEFT]<++><Esc>0/][<CR>a
autocmd Filetype text inoremap ]c [CENTER][/CENTER]<++><Esc>0/][<CR>a
autocmd Filetype text inoremap ]r [RIGHT][RIGHT]<++><Esc>0/][<CR>a

"Other
autocmd Filetype text inoremap \l [list<++>]<CR>[*]<++><CR>[/list]<CR><++>
autocmd Filetype text inoremap \c [CODE]<CR><++><CR>[/CODE]<CR><++>
autocmd Filetype text inoremap \q [QUOTE]<CR><++><CR>[QUOTE]<CR><++>
autocmd Filetype text inoremap \s [SPOILER=<++>]<CR><++><CR>[/SPOILER]<CR><++>
