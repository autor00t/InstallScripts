set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set nowrap
set mouse=a
set ttyfast
set clipboard+=unnamedplus " Remember to install xclip

call plug#begin()
	Plug 'vim-airline/vim-airline'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'preservim/nerdtree'
	Plug 'majutsushi/tagbar'
	Plug 'ryanoasis/vim-devicons'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	Plug 'ap/vim-css-color'
	Plug 'jiangmiao/auto-pairs'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

"inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm(): "<Tab>"

"inoremap <silent><expr> <TAB>
"    \ coc#pum#visible() ? coc#_select_confirm() :
"    \ coc#expandableOrJumpable() ?
"    \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"    \ CheckBackSpace() ? "\<TAB>" :
"    \ coc#refresh()
"
"function! CheckBackSpace() abort
"	let col = col('.') - 1
"	return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
"
"let g:coc_snippet_next = '<tab>'

function! CheckBackSpace() abort
	let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1):
	\ CheckBackSpace() ? "\<Tab>" :
	\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
