{{define "Core"}}
call s:hi("Normal", s:fg, s:bg)
call s:hi("Cursor", "", "{{.Color "CARET_COLOR"}}")
call s:hi("CursorColumn", "{{.Color "CARET_COLOR"}}", s:bg)
call s:hi("CursorLine", "{{.Color "CARET_COLOR"}}", s:bg)

call s:hi("LineNr", "{{.Color "LINE_NUMBERS_COLOR"}}", "{{.Color "GUTTER_BACKGROUND"}}")
call s:hi("CursorLineNr", "{{.Color "LINE_NUMBERS_COLOR"}}", "{{.Color "GUTTER_BACKGROUND"}}")

call s:hi("DiffAdd", s:fg, "{{ (.Attr ("DIFF_INSERTED")).InnerValue.BG}}")
call s:hi("DiffChange", s:fg, "{{ (.Attr ("DIFF_MODIFIED")).InnerValue.BG}}")
call s:hi("DiffDelete", s:fg, "{{ (.Attr ("DIFF_DELETED")).InnerValue.BG}}")
call s:hi("DiffText", s:fg, s:bg)

call s:hi("IncSearch", s:fg, "{{ (.Attr ("SEARCH_RESULT_ATTRIBUTES")).InnerValue.BG}}")
call s:hi("Search", s:fg, "{{ (.Attr ("TEXT_SEARCH_RESULT_ATTRIBUTES")).InnerValue.BG}}")

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
{{end}}
