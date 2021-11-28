noremap r :call CompileRunGcc()<CR>
function! CompileRunGcc()
    execute "w"
    if &filetype== 'rust'
        set splitbelow
        :sp
        :res -10
        :TermExec 'time cargo run'
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -10
		:TermExec cmd='./' . %<
    endif
endfunction
set cursorline
set tabstop=4 
set shiftwidth=4
set scrolloff=9
set expandtab
set nu
set termguicolors
set relativenumber
set mouse=a
set syntax=on
set encoding=UTF-8
set undofile                 "turn on the feature  
set undodir=~/.nvim  "directory where the undo files will be stored
set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾
autocmd Colorscheme * highlight NvimTree guibg=#21252B guifg=#9da5b3"

map lg :TermExec\ cmd="lazygit"<CR>
" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> <c-j>d <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <c-j>D <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <c-j>r <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <c-j>i <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-,> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-.> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
let g:VM_mouse_mappings = 1 
nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)  
nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)
augroup ScrollbarInit
  autocmd!
  autocmd WinScrolled,VimResized,QuitPre * silent! lua require('scrollbar').show()
  autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
  autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end
