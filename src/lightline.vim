" =============================================================================
" Filename: autoload/lightline/colorscheme/riderdark.vim
" Author: realbucksavage
" License: MIT License
" =============================================================================

let s:mode_text_fg = "{{.BG}}"
let s:mute_background="{{ (.Attr "INLINE_PARAMETER_HINT").InnerValue.BG }}"
let s:tabline_background="{{ (.Attr "DEFAULT_INSTANCE_FIELD").InnerValue.FG }}"

let s:base03 = '#fafafa'
let s:mute_background3 = '#dfdfdf'

let s:base00 = s:mode_text_fg
let s:base0 = '#666666'
let s:base1 = '#555555'
let s:base2 = '#4f4f4f'
let s:base3 = '#4d4d4c'

let s:red="{{ (.Attr "WRONG_REFERENCES_ATTRIBUTES").InnerValue.FG }}"
let s:yellow="{{ (.Attr "HTML_ENTITY_REFERENCE").InnerValue.FG }}"
let s:orange="{{ (.Attr "CONSOLE_YELLOW_BRIGHT_OUTPUT").InnerValue.FG }}"
let s:magenta="{{ (.Attr "CUSTOM_KEYWORD2_ATTRIBUTES").InnerValue.FG }}"
let s:blue="{{ (.Attr "DEFAULT_KEYWORD").InnerValue.FG }}"
let s:cyan = "{{ (.Attr "DEFAULT_CONSTANT") }}"
let s:green="{{ (.Attr "CUSTOM_KEYWORD3_ATTRIBUTES").InnerValue.FG }}"

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:mode_text_fg, s:blue ], [ s:base3, s:tabline_background ] ]
let s:p.normal.right = [ [ s:mode_text_fg, s:base0 ], [ s:base1, s:tabline_background ] ]
let s:p.inactive.right = [ [ s:mode_text_fg, s:base00 ], [ s:base00, s:mute_background ] ]
let s:p.inactive.left =  [ [ s:base0, s:mute_background ], [ s:base00, s:base03 ] ]
let s:p.insert.left = [ [ s:mode_text_fg, s:green ], [ s:base3, s:tabline_background ] ]
let s:p.replace.left = [ [ s:mode_text_fg, s:orange ], [ s:base3, s:tabline_background ] ]
let s:p.visual.left = [ [ s:mode_text_fg, s:magenta ], [ s:base3, s:tabline_background ] ]
let s:p.normal.middle = [ [ s:base1, s:mute_background ] ]
let s:p.inactive.middle = [ [ s:base0, s:mute_background ] ]
let s:p.tabline.left = [ [ s:base2, s:tabline_background ] ]
let s:p.tabline.tabsel = [ [ s:base2, s:mute_background3 ] ]
let s:p.tabline.middle = [ [ s:tabline_background, s:base00 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:red, s:tabline_background ] ]
let s:p.normal.warning = [ [ s:yellow, s:base0 ] ]

let g:lightline#colorscheme#riderdark#palette = lightline#colorscheme#fill(s:p)
