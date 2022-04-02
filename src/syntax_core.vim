{{define "Core"}}
call s:hi("Normal", s:fg, s:bg)
call s:hi("Cursor", "{{.Color "CARET_COLOR"}}", s:bg)
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
{{end}}