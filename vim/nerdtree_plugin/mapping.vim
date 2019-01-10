call NERDTreeAddKeyMap({
   \ 'key': '<cr>',
   \ 'callback': 'NERDTreeActivate',
   \ 'quickhelpText': 'echo full path of current node',
   \ 'scope': 'DirNode' })

call NERDTreeAddKeyMap({
   \ 'key': '<cr>',
   \ 'callback': 'NERDTreeActivateFile',
   \ 'quickhelpText': 'echo full path of current node',
   \ 'scope': 'FileNode' })

call NERDTreeAddKeyMap({
   \ 'key': '<down>',
   \ 'callback': 'NERDTreeCloseTreeWindow',
   \ 'quickhelpText': 'echo full path of current node',
   \ 'scope': 'Node' })

" call NERDTreeAddKeyMap({
"    \ 'key': '<up>',
"    \ 'callback': 'NERDTreeMenuUp',
"    \ 'quickhelpText': 'echo full path of current node',
"    \ 'scope': 'Node' })
"
" call NERDTreeAddKeyMap({
"    \ 'key': '<down>',
"    \ 'callback': 'NERDTreeMenuDown',
"    \ 'quickhelpText': 'echo full path of current node',
"    \ 'scope': 'Node' })

function! NERDTreeActivate(dirnode)
    echo a:dirnode.activate()
endfunction

function! NERDTreeActivateFile(filenode)
    echo a:filenode.open({'stay': 1, 'where': 'p', 'keepopen': 1})
endfunction

function NERDTreeCloseTreeWindow(node)
    if b:NERDTree.isWinTree() && b:NERDTree.previousBuf() != -1
        exec "buffer " . b:NERDTree.previousBuf()
    else
        if winnr("$") > 1
            call g:NERDTree.Close()
        else
            call nerdtree#echo("Cannot close last window")
        endif
    endif
endfunction

function NERDTreeMenuUp(node)
    call g:NERDTreeMenuController.cursorUp()
endfunction

function NERDTreeMenuDown(node)
    call g:NERDTreeMenuController.cursorDown()
endfunction
