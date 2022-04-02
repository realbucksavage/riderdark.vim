" Rider Dark Theme
" Repository:   https://github.com/realbucksavage/riderdark.vim
" Maintainer:   https://github.com/realbucksavage
" Attributions: The Rider Dark Theme created by JetBrains

hi clear
syntax reset
let g:colors="{{.EscapedName}}"

set background=dark
set t_Co=256
let &t_ut=''
if exists('+termguicolors')
  set termguicolors
endif

function! s:hi(group, fg, bg)
    if a:fg is v:null
        exec "hi " . a:group . " guifg=NONE ctermfg=NONE"
    else
        exec "hi " . a:group . " guifg=" . a:fg . " ctermfg=NONE"
    endif   

    if a:bg is v:null
        exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
    else
        exec "hi " . a:group . " guibg=" . a:bg . " ctermbg=NONE"
    endif     
endfunc

let s:bg="{{.BG}}"
let s:fg="{{.FG}}"
let s:string="{{ (.Attr "DEFAULT_STRING").InnerValue.FG }}"
let s:numbers="{{ (.Attr "DEFAULT_NUMBER").InnerValue.FG }}"
let s:comment_fg="{{ (.Attr "DEFAULT_BLOCK_COMMENT").InnerValue.FG }}"
let s:keywords="{{ (.Attr "DEFAULT_KEYWORD").InnerValue.FG }}"
let s:operators="{{ (.Attr "DEFAULT_OPERATION_SIGN").InnerValue.FG }}"
let s:type_classes="{{ (.Attr "DEFAULT_CLASS_NAME").InnerValue.FG }}"
let s:type_interfaces="{{ (.Attr "DEFAULT_INTERFACE_NAME").InnerValue.FG }}"
let s:instance_method="{{ (.Attr "DEFAULT_INSTANCE_METHOD").InnerValue.FG }}"
let s:constant="{{ (.Attr "DEFAULT_CONSTANT").InnerValue.FG }}"
let s:todo="{{ (.Attr "TODO_DEFAULT_ATTRIBUTES").InnerValue.FG }}"
let s:valid_string_escape="{{ (.Attr "DEFAULT_VALID_STRING_ESCAPE").InnerValue.FG }}"
let s:invalid_string_escape="{{ (.Attr "DEFAULT_INVALID_STRING_ESCAPE").InnerValue.FG }}"

" call s:hi("", "", "")
{{template "Core" .}}
{{template "GoSyntax" .}}