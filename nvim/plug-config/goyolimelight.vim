" Configuration files for Goyo and Limelight

" Goyo
let g:goyo_width=85
let g:goyo_height=40

" Limelight Wahala. Says it can't calculate my bg Color
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
