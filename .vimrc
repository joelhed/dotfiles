set nocompatible

set showcmd
set ruler
colorscheme slate

set exrc            " Read the .vimrc file from the current directory
set secure          " Make sure that such .vimrc files can't run arbitrary stuff

let mapleader = ","

syntax on
set textwidth=88    " lines longer than 88 columns will be broken
set shiftwidth=4    " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4       " a hard TAB displays as 4 columns
set expandtab       " insert spaces when hitting TABs
set softtabstop=4   " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround      " round indent to multiple of 'shiftwidth'
set autoindent      " align the new line indent with the previous line
set number relativenumber  " add relative line numberings

" remap jump to a subject in vim help
map <C-å> <C-]>

filetype off

" Lilypond configurations
"set runtimepath+=/usr/local/share/lilypond/2.18.2/vim/ "

" Configure Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'b4winckler/vim-angry', {'rtp': 'plugin/'}
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'ledger/vim-ledger'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'alvan/vim-closetag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'OmniSharp/omnisharp-vim'
Plugin 'ElmCast/elm-vim'
"Plugin 'metakirby5/codi.vim'
"Plugin 'posva/vim-vue'

call vundle#end()
filetype plugin indent on

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Show column 80
" if (exists('+colorcolumn'))
"     set colorcolumn=80
"     highlight ColorColumn ctermbg=9
" endif

nnoremap <Leader>v "*p
nnoremap <Leader>k :NERDTreeToggle<CR>
nnoremap <Leader>s :update<CR>
nnoremap <Leader>r :s/<C-r>"/
nnoremap <Leader>m :make<CR>
nnoremap <Leader>n :cn<CR>
nnoremap <Leader>p :cp<CR>

" leader p... - python shortcuts -- except just leader p
nnoremap <Leader>pm 0iif __name__ == "__main__":<CR>pass<Esc>^
nnoremap <Leader>pd odef f():<CR>pass<Esc>k0w
nnoremap <Leader>pl olog = logging.getLogger(__name__)<Esc>^

" leader t - todo
nnoremap <Leader>tn o- [ ] 
nnoremap <Leader>tx mm0f[lrx`m
nnoremap <Leader>t<Space> mm0f[lr `m

" Search highlighting
set incsearch
set hlsearch
" remove highlighting until the next search
nnoremap <Leader>h :noh<CR>

"Ledger
let g:ledger_align_at = 60
let g:ledger_default_commodity = 'kr'
let g:ledger_commodity_before = 0
let g:ledger_commodity_sep = ' '
nnoremap <Leader>la $:LedgerAlign<CR>
nnoremap <Leader>ll $:call ledger#autocomplete_and_align()<CR>:LedgerAlign<CR>
nnoremap <Leader>lk o; :kvitto:<Esc>^
nnoremap <Leader>le :call ledger#entry()<cr>

" Markdown
let g:vim_markdown_folding_disabled = 1

" Fugitive
nnoremap <Leader>gs :Git<CR>

" Ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules\|DS_Store|\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_working_path_mode = 0

" C# / OmniSharp
" Use the stdio version of OmniSharp-roslyn
let g:OmniSharp_server_stdio = 1
