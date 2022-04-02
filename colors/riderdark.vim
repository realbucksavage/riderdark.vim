" Rider Dark Theme
" Repository:   https://github.com/realbucksavage/riderdark.vim
" Maintainer:   https://github.com/realbucksavage
" Attributions: The Rider Dark Theme created by JetBrains

hi clear
syntax reset
let g:colors="riderdark"

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

let s:bg="#262626"
let s:fg="#d0d0d0"
let s:string="#c9a26d"
let s:numbers="#ed94c0"
let s:comment_fg="#85c46c"
let s:keywords="#6c95eb"
let s:operators="#bdbdbd"
let s:type_classes="#c191ff"
let s:type_interfaces="#c191ff"
let s:instance_method="#39cc8f"
let s:constant="#66c3cc"
let s:todo="#66c3cc"
let s:valid_string_escape="#d688d4"
let s:invalid_string_escape="#85c46c"

" call s:hi("", "", "")

call s:hi("Normal", s:fg, s:bg)
call s:hi("Cursor", "#f0f0f0", s:bg)
call s:hi("CursorColumn", "#f0f0f0", s:bg)
call s:hi("CursorLine", "#f0f0f0", s:bg)

call s:hi("LineNr", "#808080", "#282828")
call s:hi("CursorLineNr", "#808080", "#282828")

call s:hi("DiffAdd", s:fg, "#29421f")
call s:hi("DiffChange", s:fg, "#3a3070")
call s:hi("DiffDelete", s:fg, "#424242")
call s:hi("DiffText", s:fg, s:bg)

call s:hi("IncSearch", s:fg, "#133f2f")
call s:hi("Search", s:fg, "#484012")


" GoLang Highlight Groups
call s:hi("goBlock", s:fg, s:bg)
call s:hi("goBuiltins", s:keywords, s:bg)
call s:hi("goCharacter", s:string, s:bg)
call s:hi("goComment", s:comment_fg, s:bg)
call s:hi("goComplexes", s:keywords, s:bg)
call s:hi("goConditional", s:keywords, s:bg)
call s:hi("goConstants", s:fg, s:bg)
call s:hi("goDecimalInt", s:numbers, s:bg)
call s:hi("goDeclType", s:type_classes, s:bg)
call s:hi("goDeclaration", s:keywords, s:bg)
call s:hi("goDirective", s:fg, s:bg)
call s:hi("goEscapeC", s:valid_string_escape, s:bg)
call s:hi("goEscapeBigU", s:valid_string_escape, s:bg)
call s:hi("goEscapeError", s:valid_string_escape, s:bg)
call s:hi("goEscapeOctal", s:valid_string_escape, s:bg)
call s:hi("goEscapeU", s:valid_string_escape, s:bg)
call s:hi("goEscapeX", s:valid_string_escape, s:bg)
call s:hi("goExtraType", s:fg, s:bg)
call s:hi("goFloat", s:numbers, s:bg)
call s:hi("goFloats", s:numbers, s:bg)
call s:hi("goHexadecimalInt", s:fg, s:bg)
call s:hi("goImaginary", s:fg, s:bg)
call s:hi("goLabel", s:fg, s:bg)
call s:hi("goOctalError", s:numbers, s:bg)
call s:hi("goOctalInt", s:numbers, s:bg)
call s:hi("goParen", s:fg, s:bg)
call s:hi("goRawString", s:string, s:bg)
call s:hi("goRepeat", s:keywords, s:bg)
call s:hi("goSignedInts", s:numbers, s:bg)
call s:hi("goSpaceError", s:fg, s:bg)
call s:hi("goSpecialString", s:valid_string_escape, s:bg)
call s:hi("goStatement", s:fg, s:bg)
call s:hi("goString", s:string, s:bg)
call s:hi("goTSComment", s:comment_fg, s:bg)
call s:hi("goTSFunction", s:instance_method, s:bg)
call s:hi("goTSInclude", s:fg, s:bg)
call s:hi("goTSkeyword", s:keywords, s:bg)
call s:hi("goTSKeywordFunction", s:fg, s:bg)
call s:hi("goTSMethod", s:instance_method, s:bg)
call s:hi("goTSNumber", s:numbers, s:bg)
call s:hi("goTSOperator", s:operators, s:bg)
call s:hi("goTSProperty", s:fg, s:bg)
call s:hi("goTSPunctBracket", s:fg, s:bg)
call s:hi("goTSPunctDelimiter", s:fg, s:bg)
call s:hi("goTSRepeat", s:keywords, s:bg)
call s:hi("goTSString", s:string, s:bg)
call s:hi("goTSType", s:type_classes, s:bg)
call s:hi("goTSTypeBuiltin", s:keywords, s:bg)
call s:hi("goTSVariable", s:fg, s:bg)
call s:hi("goTodo", s:todo, s:bg)
call s:hi("goType", s:type_classes, s:bg)
