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
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm(): "<Tab>"
