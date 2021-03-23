" ------------- Buffer key binding ---------------
nnoremap <silent> <Leader>bd :bd<CR>
" --------- Custom binding -----------
map <Leader>n :noh<CR>
map qq :q!<CR>
map fs :w<CR>

map <Leader>y "+y
map <Leader>p "+p<Paste>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <Leader>v :vsp <CR>
map <Leader>vv :sp <CR>

map <C-u> :res +5<CR>
map <C-i> :vertical resize +10<CR>
map <C-o> :vertical resize -10<CR>
map <C-p> :res -5<CR>

nnoremap J 10j
nnoremap K 10k

" force yourself to stop using the arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

imap <Up> <Nop>
imap <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>

"nmap <silent> <Esc> :e <CR>
