filetype plugin indent on
syntax on


call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'
Plug 'lambdalisue/suda.vim'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sirver/ultisnips'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf', {'do': { -> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'Fymyte/rasi.vim'
call plug#end()

colo yak
set nu rnu
set hlsearch
set splitbelow
hi Search ctermbg=20 ctermfg=27
set noshowmode
set fdm=indent
set tabstop=4
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-A-k> :tabn<CR>
nnoremap <C-A-j> :tabp<CR>
nnoremap <C-Q> :q<CR>
nnoremap <C-W> :w<CR>
nnoremap <C-M-W> :SudaWrite<CR>
nnoremap <M-f> :Files<CR>
autocmd FileType rust nnoremap <M-r> :FloatermNew! cargo run <CR>
autocmd FileType python nnoremap <M-r> :call RunPyfile()<CR>






set enc=utf-8
set fileencoding=utf-8
set scrolloff=8


" Lightline settings
set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'yak',
	\ }


" Vimtex settings
let g:tex_flavour='latex'
let g:vimtex_view_general_viewer="zathura"
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


" Ulisnips
set clipboard+=unnamedplus
let g:UltiSnipsExpandTrigger = '<M-\>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
let g:UltiSnipsEditSplit = 'vertical'

" netrw settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
let g:netrw_winsize = 25
nnoremap <C-n> :Lexplore<CR>
nnoremap <c-t> :Vexplore<CR>
nmap <unique> <A-r> <Plug>NetrwRefresh


" Floaterm settings
let g:floaterm_keymap_toggle = '<M-;>'
let g:floaterm_autoclose = 1
let g:floaterm_shell = 'bash'
let g:floaterm_title = ''
let g:floaterm_width = 0.8
let g:floaterm_height = 0.8


function RunPyfile()
		let path = expand("%")
		execute ':FloatermNew! time ' . path
endfunction



" Coc settings
" Use <CR>
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
" Use <Tab>

function! s:check_back_space() abort
        let col = col('.') - 1
	return !col || getline('.')[col - 1] =~ '\s'
endfunction


inoremap <silent><expr> <Tab>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<Tab>" :
			\ coc#refresh()

inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


