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
let s:selection="#08335e"
let s:labels="#f0f0f0"
let s:annotations="#909090"
let s:error_hint="#4a2421"
let s:parenths="#bdbdbd"

" call s:hi("", "", "")

call s:hi("Normal", s:fg, s:bg)
call s:hi("Cursor", "", "#f0f0f0")
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

call s:hi("Visual", "", s:selection)
call s:hi("VisualNOS", "", s:selection)

call s:hi("Pmenu", s:bg, s:fg)
call s:hi("PmenuSel", s:fg, s:keywords)
call s:hi("PmenuSbar", "", s:selection)
call s:hi("PmenuThumb", "", s:fg)

" Whitespace is defined in Neovim, not Vim.
" See :help hl-Whitespace and :help hl-SpecialKey
call s:hi("Whitespace", s:fg, "")
call s:hi("NonText", s:fg, s:bg)
call s:hi("Comment", s:comment_fg, "")
call s:hi("Constant", s:constant, "")
call s:hi("String", s:string, "")
call s:hi("Character", s:string, "")
call s:hi("Number", s:numbers, "")
call s:hi("Boolean", s:keywords, "")
call s:hi("Float", s:numbers, "")

call s:hi("Identifier", s:fg, "")
call s:hi("Function", s:instance_method, "")
call s:hi("Statement", s:keywords, "")

call s:hi("Conditional", s:keywords, "")
call s:hi("Repeat", s:keywords, "")
call s:hi("Label", s:labels, "")
call s:hi("Operator", s:operators, "")
call s:hi("Keyword", s:keywords, "")
call s:hi("Exception", s:type_interfaces, "")

call s:hi("PreProc", s:annotations, "")
call s:hi("Include", s:annotations, "")
call s:hi("Define", s:annotations, "")
call s:hi("Macro", s:annotations, "")
call s:hi("PreCondit", s:annotations, "")

call s:hi("Type", s:type_classes, "")
call s:hi("StorageClass", s:keywords, "")
call s:hi("Structure", s:type_classes, "")
call s:hi("Typedef", s:keywords, "")

call s:hi("Special", s:valid_string_escape, "")
call s:hi("SpecialChar", s:fg, "")
call s:hi("Tag", s:fg, "")
call s:hi("Delimiter", s:fg, "")
call s:hi("SpecialComment", s:fg, "")
call s:hi("Debug", s:fg, "")
call s:hi("Underlined", s:fg, "")
call s:hi("Ignore", s:fg, "")
call s:hi("Error", s:error_hint, s:bg)
call s:hi("Todo", s:todo, "")

call s:hi("MatchParen", s:parenths, "")
call s:hi("SpecialKey", s:fg, "")
call s:hi("Title", s:comment_fg, "")
call s:hi("WildMenu", s:fg, "")


" GoLang Highlight Groups
call s:hi("goBlock", s:fg, s:bg)
call s:hi("goBuiltins", s:keywords, s:bg)
call s:hi("goCharacter", s:string, s:bg)
call s:hi("goComment", s:comment_fg, s:bg)
call s:hi("goComplexes", s:keywords, s:bg)
call s:hi("goConditional", s:keywords, s:bg)
call s:hi("goConstants", s:constant, s:bg)
call s:hi("goDecimalInt", s:numbers, s:bg)
call s:hi("goDeclType", s:keywords, s:bg)
call s:hi("goDeclaration", s:keywords, s:bg)
call s:hi("goDirective", s:annotations, s:bg)
call s:hi("goEscapeC", s:valid_string_escape, s:bg)
call s:hi("goEscapeBigU", s:valid_string_escape, s:bg)
call s:hi("goEscapeError", s:valid_string_escape, s:bg)
call s:hi("goEscapeOctal", s:valid_string_escape, s:bg)
call s:hi("goEscapeU", s:valid_string_escape, s:bg)
call s:hi("goEscapeX", s:valid_string_escape, s:bg)
call s:hi("goExtraType", s:fg, s:bg)
call s:hi("goFloat", s:numbers, s:bg)
call s:hi("goFloats", s:numbers, s:bg)
call s:hi("goFunctionCall", s:instance_method, s:bg)
call s:hi("goHexadecimalInt", s:numbers, s:bg)
call s:hi("goImaginary", s:numbers, s:bg)
call s:hi("goLabel", s:labels, s:bg)
call s:hi("goOctalError", s:fg, s:error_hint)
call s:hi("goOctalInt", s:numbers, s:bg)
call s:hi("goParen", s:fg, s:bg)
call s:hi("goRawString", s:string, s:bg)
call s:hi("goRepeat", s:keywords, s:bg)
call s:hi("goSignedInts", s:numbers, s:bg)
call s:hi("goSpaceError", s:fg, s:error_hint)
call s:hi("goSpecialString", s:valid_string_escape, s:bg)
call s:hi("goStatement", s:keywords, s:bg)
call s:hi("goString", s:string, s:bg)
call s:hi("goTSComment", s:comment_fg, s:bg)
call s:hi("goTSFunction", s:instance_method, s:bg)
call s:hi("goTSInclude", s:annotations, s:bg)
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

