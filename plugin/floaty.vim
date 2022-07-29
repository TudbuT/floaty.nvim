if exists("g:tudbut_floaty_nvim_loaded")
    finish
endif
let g:tudbut_floaty_nvim_loaded = 1

function! OpenFloatingBuffer(x, y, width, height)
    let width = a:width
    let height = a:height
    let x = a:x
    let y = a:y
    let buf = nvim_create_buf(v:false, v:true)
    let ui = nvim_list_uis()[0]
    if x < 0 
        let x = (ui.width - width + x)
    endif
    if y < 0
        let y = (ui.height - height + y)
    endif
    let options = {
        \ 'relative': 'editor',
        \ 'width': width,
        \ 'height': height,
        \ 'col': x,
        \ 'row': y,
        \ 'style': 'minimal',
        \ }
    let win = nvim_open_win(buf, 1, options)
    return win
endfunction

command FS :call OpenFloatingBuffer(-2, -3, 50,30)

