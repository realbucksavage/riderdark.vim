" =============================================================================
" Filename: autoload/lightline/colorscheme/riderdark.vim
" Author: realbucksavage
" License: MIT License
" =============================================================================

let s:mode_text_fg = "#262626"
let s:mute_background="#343434"
let s:tabline_background="#66c3cc"

let s:base03 = '#fafafa'
let s:mute_background3 = '#dfdfdf'

let s:base00 = s:mode_text_fg
let s:base0 = '#666666'
let s:base1 = '#555555'
let s:base2 = '#4f4f4f'
let s:base3 = '#4d4d4c'

let s:red="#ff5647"
let s:yellow="#ffd49e"
let s:orange="#f5d86a"
let s:magenta="#c191ff"
let s:blue="#6c95eb"
let s:cyan = "{DEFAULT_CONSTANT  {[{FOREGROUND 66c3cc {[]}} {FONT_TYPE 1 {[]}}]}}"
let s:green="#39cc8f"

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
