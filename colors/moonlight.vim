" Dark Vim/Neovim color scheme.
"
" URL:     github.com/astridlyre/vim-moonlight
" License: MIT (https://opensource.org/licenses/MIT)

highlight clear
set background=dark
if exists('syntax_on')
    syntax reset
endif
let g:colors_name='moonlight'

" By default do not color the cursor.
let g:moonlightCursorColor = get(g:, 'moonlightCursorColor', 0)

" By default use the moonlight color palette in the `:terminal`
let g:moonlightTerminalColors = get(g:, 'moonlightTerminalColors', 1)

" By default do not underline matching parentheses.
let g:moonlightUnderlineMatchParen = get(g:, 'moonlightUnderlineMatchParen', 0)

" By default do use undercurls in GUI versions of Vim, including terminal Vim
" with termguicolors set.
let g:moonlightUndercurls = get(g:, 'moonlightUndercurls', 1)

" By default do use italics in GUI versions of Vim.
let g:moonlightItalics = get(g:, 'moonlightItalics', 1)

" By default do not use transparent background in Vim.
let g:moonlightTransparent = get(g:, 'moonlightTransparent', 1)

" Background and foreground
let s:black     = '#181818' " black       = 232
let s:white     = '#CAD4C8' " white       = 251
" Variations of charcoal-grey
let s:grey0     = '#373c40' " grey0       = 0
let s:grey253   = '#dadada' " grey253     = 253
let s:grey249   = '#b2b2b2' " grey249     = 249
let s:grey247   = '#9e9e9e' " grey247     = 247
let s:grey246   = '#949494' " grey246     = 246
let s:grey244   = '#808080' " grey244     = 244
let s:grey241   = '#626262' " grey241     = 241
let s:grey237   = '#3a3a3a' " grey237     = 237
let s:grey236   = '#303030' " grey236     = 236
let s:grey235   = '#262626' " grey235     = 235
let s:grey234   = '#1c1c1c' " grey234     = 234
let s:grey233   = '#121212' " grey233     = 233
" Core theme colors
let s:wheat     = '#B0A280' " wheat       = 11
let s:yellow    = '#E8F198' " yellow      = 3
let s:orange    = '#C86E5E' " orange      = 7
let s:coral     = '#C75951' " coral       = 8
let s:lime      = '#8DA54E' " lime        = 14
let s:green     = '#79813E' " green       = 2
let s:emerald   = '#36c692' " emerald     = 10
let s:blue      = '#617E9C' " blue        = 4
let s:sky       = '#367CA8' " sky         = 12
let s:turquoise = '#6CCEB8' " turquoise   = 6
let s:purple    = '#984673' " purple      = 13
let s:cranberry = '#D1616B' " cranberry   = 15
let s:violet    = '#D19FA5' " violet      = 5
let s:crimson   = '#8C2D32' " crimson     = 9
let s:red       = '#C33552' " red         = 1

" Specify the colors used by the inbuilt terminal of Neovim and Vim
if g:moonlightTerminalColors
    if has('nvim')
        let g:terminal_color_0  = '#373c40'
        let g:terminal_color_1  = '#D1616B'
        let g:terminal_color_2  = '#79813E'
        let g:terminal_color_3  = '#B0A280'
        let g:terminal_color_4  = '#617E9C'
        let g:terminal_color_5  = '#984673'
        let g:terminal_color_6  = '#6CCEB8'
        let g:terminal_color_7  = '#CAD4C8'
        let g:terminal_color_8  = '#7c8f8f'
        let g:terminal_color_9  = '#C33552'
        let g:terminal_color_10 = '#8DA54E'
        let g:terminal_color_11 = '#E8F198'
        let g:terminal_color_12 = '#367CA8'
        let g:terminal_color_13 = '#D19FA5'
        let g:terminal_color_14 = '#36c692'
        let g:terminal_color_15 = '#D0BCBB'
    else
        let g:terminal_ansi_colors = [
                    \ '#373c40', '#D1616B', '#79813E', '#B0A280',
                    \ '#617E9C', '#984673', '#6CCEB8', '#CAD4C8',
                    \ '#7c8f8f', '#C33552', '#8DA54E', '#E8F198',
                    \ '#367CA8', '#D19FA5', '#36c692', '#D0BCBB'
                    \]
    endif
endif

" Background and text
if g:moonlightTransparent
  exec 'highlight Normal ctermbg=232 ctermfg=251 guibg=NONE guifg=' . s:white
else
  exec 'highlight Normal ctermbg=232 ctermfg=251 guibg=' . s:black . ' guifg=' . s:white
endif

" Color of mode text, -- INSERT --
exec 'highlight ModeMsg ctermfg=247 guifg=' . s:grey247 . ' gui=none'

" Comments
if g:moonlightItalics
    exec 'highlight Comment ctermfg=246 guifg=' . s:grey246 . ' gui=italic'
else
    exec 'highlight Comment ctermfg=246 guifg=' . s:grey246
endif

" Functions
exec 'highlight Function ctermfg=12 guifg=' . s:sky

" Strings
exec 'highlight String ctermfg=11 guifg=' . s:wheat

" Booleans
exec 'highlight Boolean ctermfg=8 guifg=' . s:coral

" Identifiers
exec 'highlight Identifier ctermfg=6 cterm=none guifg=' . s:turquoise

" Color of titles
exec 'highlight Title ctermfg=7 guifg=' . s:orange . ' gui=bold'

" const, static
exec 'highlight StorageClass ctermfg=8 guifg=' . s:coral

" void, intptr_t
exec 'highlight Type ctermfg=10 guifg=' . s:emerald . ' gui=none'

" Numbers
exec 'highlight Constant ctermfg=13 guifg=' . s:purple

" Character constants
exec 'highlight Character ctermfg=13 guifg=' . s:purple

" Exceptions
exec 'highlight Exception ctermfg=9 guifg=' . s:crimson

" ifdef/endif
exec 'highlight PreProc ctermfg=15 guifg=' . s:cranberry

" Status, split and tab lines
exec 'highlight StatusLine ctermbg=232  ctermfg=251 cterm=none guibg=' . s:black . ' guifg=' . s:white . ' gui=none'
exec 'highlight StatusLineNC ctermbg=232 ctermfg=247 cterm=none guibg=' . s:black . ' guifg=' . s:grey247 . ' gui=none'
if g:moonlightTransparent
  exec 'highlight VertSplit ctermbg=236 ctermfg=236 cterm=none guibg=NONE guifg=' . s:grey236 . ' gui=none'
  exec 'highlight Tabline ctermbg=236 ctermfg=247 cterm=none guibg=NONE guifg=' . s:grey247 . ' gui=none'
  exec 'highlight TablineSel ctermbg=236 ctermfg=4 cterm=none guibg=NONE guifg=' . s:blue . ' gui=none'
  exec 'highlight TablineFill ctermbg=236 ctermfg=236 cterm=none guibg=NONE guifg=' . s:grey236 . ' gui=none'
  exec 'highlight StatusLineTerm ctermbg=236 ctermfg=251 cterm=none guibg=NONE guifg=' . s:white . ' gui=none'
  exec 'highlight StatusLineTermNC ctermbg=236 ctermfg=247 cterm=none guibg=NONE guifg=' . s:grey247 . ' gui=none'
else
  exec 'highlight VertSplit ctermbg=236 ctermfg=236 cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey236 . ' gui=none'
  exec 'highlight Tabline ctermbg=236 ctermfg=247 cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey247 . ' gui=none'
  exec 'highlight TablineSel ctermbg=236 ctermfg=4 cterm=none guibg=' . s:grey236 . ' guifg=' . s:blue . ' gui=none'
  exec 'highlight TablineFill ctermbg=236 ctermfg=236 cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey236 . ' gui=none'
  exec 'highlight StatusLineTerm ctermbg=236 ctermfg=251 cterm=none guibg=' . s:grey236 . ' guifg=' . s:white . ' gui=none'
  exec 'highlight StatusLineTermNC ctermbg=236 ctermfg=247 cterm=none guibg=' . s:grey236 . ' guifg=' . s:grey247 . ' gui=none'
endif

" case in switch statement
exec 'highlight Label ctermfg=6 guifg=' . s:turquoise

" end-of-line '$', end-of-file '~'
exec 'highlight NonText ctermfg=7 guifg=' . s:orange . ' gui=none'

" sizeof
exec 'highlight Operator ctermfg=15 guifg=' . s:cranberry

" for, while
exec 'highlight Repeat ctermfg=5 guifg=' . s:violet

" Search
exec 'highlight Search ctermbg=bg ctermfg=8 cterm=reverse guibg=bg guifg=' . s:coral . ' gui=reverse'
exec 'highlight IncSearch ctermbg=bg ctermfg=3 guibg=bg guifg=' . s:yellow

" '\n' sequences
exec 'highlight Special ctermfg=15 guifg=' . s:cranberry

" if, else
exec 'highlight Statement ctermfg=5 guifg=' . s:violet . ' gui=none'

" Visual selection
exec 'highlight Visual ctermbg=0 guibg=' . s:grey0
if g:moonlightTransparent
  exec 'highlight VisualNOS ctermbg=0 ctermfg=fg cterm=none guibg=NONE guifg=fg gui=none'
  exec 'highlight VisualInDiff ctermbg=0 ctermfg=251 guibg=NONE guifg=' . s:white
else
  exec 'highlight VisualNOS ctermbg=0 ctermfg=fg cterm=none guibg=' . s:grey0 . ' guifg=fg gui=none'
  exec 'highlight VisualInDiff ctermbg=0 ctermfg=251 guibg=' . s:grey0 . ' guifg=' . s:white
endif

" Errors, warnings and whitespace-eol
exec 'highlight Error ctermbg=bg ctermfg=1 guibg=bg guifg=' . s:red
exec 'highlight ErrorMsg ctermbg=bg ctermfg=1 guibg=bg guifg=' . s:red
exec 'highlight WarningMsg ctermbg=bg ctermfg=7 guibg=bg guifg=' . s:orange

" struct, union, enum, typedef
exec 'highlight Structure ctermfg=4 guifg=' . s:blue

" Auto-text-completion menu
exec 'highlight Pmenu ctermbg=235 ctermfg=fg guibg=' . s:grey235 . ' guifg=fg'
exec 'highlight PmenuSel ctermbg=2 ctermfg=236 guibg=' . s:green . ' guifg=' . s:grey236
exec 'highlight PmenuSbar ctermbg=235 guibg=' . s:grey235
exec 'highlight PmenuThumb ctermbg=244 guibg=' . s:grey244
exec 'highlight WildMenu ctermbg=2 ctermfg=236 guibg=' . s:green . ' guifg=' . s:grey236

" Spelling errors
if g:moonlightUndercurls
    exec 'highlight SpellBad ctermbg=bg ctermfg=1 cterm=underline guibg=bg gui=undercurl guisp=' . s:red
    exec 'highlight SpellCap ctermbg=bg ctermfg=4 cterm=underline guibg=bg gui=undercurl guisp=' . s:blue
    exec 'highlight SpellRare ctermbg=bg ctermfg=3 cterm=underline guibg=bg gui=undercurl guisp=' . s:yellow
    exec 'highlight SpellLocal ctermbg=bg ctermfg=12 cterm=underline guibg=bg gui=undercurl guisp=' . s:sky
else
    exec 'highlight SpellBad ctermbg=bg ctermfg=1 cterm=underline guibg=bg guifg=' . s:red . ' gui=underline guisp=' . s:red
    exec 'highlight SpellCap ctermbg=bg ctermfg=4 cterm=underline guibg=bg guifg=' . s:blue . ' gui=underline guisp=' . s:blue
    exec 'highlight SpellRare ctermbg=bg ctermfg=3 cterm=underline guibg=bg guifg=' . s:yellow . ' gui=underline guisp=' . s:yellow
    exec 'highlight SpellLocal ctermbg=bg ctermfg=12 cterm=underline guibg=bg guifg=' . s:sky . ' gui=underline guisp=' . s:sky
endif

" Misc
exec 'highlight EndOfBuffer ctermfg=1 guifg=' . s:purple . ' gui=none'
exec 'highlight Question ctermfg=14 guifg=' . s:lime . ' gui=none'
exec 'highlight MoreMsg ctermfg=1 guifg=' . s:red . ' gui=none'
exec 'highlight LineNr ctermbg=bg ctermfg=241 guibg=NONE guifg=' . s:grey241
if g:moonlightCursorColor
    exec 'highlight Cursor ctermfg=bg ctermbg=4 guifg=bg guibg=' . s:blue
else
    exec 'highlight Cursor ctermfg=bg ctermbg=247 guifg=bg guibg=' . s:grey247
endif

exec 'highlight SignColumn ctermbg=bg ctermfg=14 guibg=NONE guifg=' . s:lime
if g:moonlightTransparent
  exec 'highlight lCursor ctermfg=bg ctermbg=247 guifg=bg guibg=NONE'
  exec 'highlight CursorLineNr ctermbg=234 ctermfg=4 cterm=none guibg=NONE guifg=' . s:blue . ' gui=none'
  exec 'highlight CursorColumn ctermbg=234 cterm=none guibg=NONE'
  exec 'highlight CursorLine ctermbg=234 cterm=none guibg=NONE'
  exec 'highlight Folded ctermbg=234 ctermfg=14 guibg=NONE guifg='. s:lime
  exec 'highlight FoldColumn ctermbg=236 ctermfg=14 guibg=NONE guifg=' . s:lime
  exec 'highlight Todo ctermbg=3 ctermfg=bg guibg=NONE guifg=bg'
else
  exec 'highlight lCursor ctermfg=bg ctermbg=247 guifg=bg guibg=' . s:grey247
  exec 'highlight CursorLineNr ctermbg=234 ctermfg=4 cterm=none guibg=' . s:grey234 . ' guifg=' . s:blue . ' gui=none'
  exec 'highlight CursorColumn ctermbg=234 cterm=none guibg=' . s:grey234
  exec 'highlight CursorLine ctermbg=234 cterm=none guibg=' . s:grey234
  exec 'highlight Folded ctermbg=234 ctermfg=14 guibg=' . s:grey234 . ' guifg='. s:lime
  exec 'highlight FoldColumn ctermbg=236 ctermfg=14 guibg=' . s:grey236 . ' guifg=' . s:lime
  exec 'highlight Todo ctermbg=3 ctermfg=bg guibg=' . s:yellow . ' guifg=bg'
endif

exec 'highlight SpecialKey ctermbg=bg ctermfg=12 guibg=bg guifg=' . s:sky
if g:moonlightUnderlineMatchParen
    exec 'highlight MatchParen ctermbg=bg ctermfg=8 cterm=underline guibg=bg guifg=' . s:coral . ' gui=underline'
else
    exec 'highlight MatchParen ctermbg=bg ctermfg=8 guibg=bg guifg=' . s:coral
endif
exec 'highlight Ignore ctermfg=12 guifg=' . s:sky
exec 'highlight Underlined ctermfg=10 cterm=none guifg=' . s:emerald . ' gui=none'

if g:moonlightTransparent
  exec 'highlight QuickFixLine ctermbg=237 cterm=none guibg=NONE'
else
  exec 'highlight QuickFixLine ctermbg=237 cterm=none guibg=' . s:grey237
endif

exec 'highlight Delimiter ctermfg=251 guifg=' . s:white

" Neovim only highlight groups
exec 'highlight Whitespace ctermfg=235 guifg=' . s:grey235
exec 'highlight TermCursor ctermbg=247 ctermfg=bg cterm=none guibg=' . s:grey247 . ' guifg=bg gui=none'

" Color column (after line 80)
if g:moonlightTransparent
  exec 'highlight ColorColumn ctermbg=233 guibg=NONE'
else
  exec 'highlight ColorColumn ctermbg=233 guibg=' . s:grey233
endif

" Conceal color, as used by indentLine plugin
exec 'highlight Conceal ctermbg=bg ctermfg=235 guibg=bg guifg=' . s:grey235

" Custom moonlight highlight groups
exec 'highlight moonlightReset ctermfg=fg guifg=fg'
exec 'highlight moonlightWhite ctermfg=251 guifg=' . s:white
exec 'highlight moonlightGrey0 ctermfg=0 guifg=' . s:grey0
exec 'highlight moonlightGrey247 ctermfg=247 guifg=' . s:grey247
exec 'highlight moonlightGrey246 ctermfg=246 guifg=' . s:grey246
exec 'highlight moonlightGrey241 ctermfg=241 guifg=' . s:grey241
exec 'highlight moonlightWheat ctermfg=11 guifg=' . s:wheat
exec 'highlight moonlightYellow ctermfg=3 guifg=' . s:yellow
exec 'highlight moonlightOrange ctermfg=7 guifg=' . s:orange
exec 'highlight moonlightCoral ctermfg=8 guifg=' . s:coral
exec 'highlight moonlightLime ctermfg=14 guifg=' . s:lime
exec 'highlight moonlightGreen ctermfg=2 guifg=' . s:green
exec 'highlight moonlightEmerald ctermfg=10 guifg=' . s:emerald
exec 'highlight moonlightBlue ctermfg=4 guifg=' . s:blue
exec 'highlight moonlightSky ctermfg=12 guifg=' . s:sky
exec 'highlight moonlightTurquoise ctermfg=6 guifg=' . s:turquoise
exec 'highlight moonlightPurple ctermfg=13 guifg=' . s:purple
exec 'highlight moonlightCranberry ctermfg=15 guifg=' . s:cranberry
exec 'highlight moonlightViolet ctermfg=5 guifg=' . s:violet
exec 'highlight moonlightCrimson ctermfg=9 guifg=' . s:crimson
exec 'highlight moonlightRed ctermfg=1 guifg=' . s:red
exec 'highlight moonlightWhiteAlert ctermbg=bg ctermfg=251 guibg=bg guifg=' . s:white
exec 'highlight moonlightYellowAlert ctermbg=bg ctermfg=3 guibg=bg guifg=' . s:yellow
exec 'highlight moonlightCoralAlert ctermbg=bg ctermfg=8 guibg=bg guifg=' . s:coral
exec 'highlight moonlightEmeraldAlert ctermbg=bg ctermfg=10 guibg=bg guifg=' . s:emerald
exec 'highlight moonlightPurpleAlert ctermbg=bg ctermfg=13 guibg=bg guifg=' . s:purple
exec 'highlight moonlightSkyAlert ctermbg=bg ctermfg=12 guibg=bg guifg=' . s:sky
exec 'highlight moonlightRedAlert ctermbg=bg ctermfg=1 guibg=bg guifg=' . s:red

" Neovim Treesitter
highlight! link TSAnnotation moonlightViolet
highlight! link TSAttribute moonlightSky
highlight! link TSConstant moonlightPurple
highlight! link TSConstBuiltin moonlightGreen
highlight! link TSConstMacro moonlightViolet
highlight! link TSConstructor moonlightEmerald
highlight! link TSError moonlightRed
highlight! link TSFuncBuiltin moonlightSky
highlight! link TSFuncMacro moonlightSky
highlight! link TSInclude moonlightCranberry
highlight! link TSKeywordOperator moonlightViolet
highlight! link TSNamespace moonlightBlue
highlight! link TSParameter moonlightWhite
highlight! link TSPunctSpecial moonlightCranberry
highlight! link TSTag moonlightBlue
highlight! link TSTagDelimiter moonlightLime
highlight! link TSVariableBuiltin moonlightLime

" C/C++
highlight! link cDefine moonlightViolet
highlight! link cPreCondit moonlightViolet
highlight! link cStatement moonlightViolet
highlight! link cStructure moonlightCoral
highlight! link cppAccess moonlightLime
highlight! link cppCast moonlightTurquoise
highlight! link cppCustomClass moonlightTurquoise
highlight! link cppExceptions moonlightLime
highlight! link cppModifier moonlightViolet
highlight! link cppOperator moonlightGreen
highlight! link cppStatement moonlightTurquoise
highlight! link cppSTLconstant moonlightBlue
highlight! link cppSTLnamespace moonlightBlue
highlight! link cppStructure moonlightViolet

" C#
highlight! link csModifier moonlightLime
highlight! link csPrecondit moonlightViolet
highlight! link csStorage moonlightViolet
highlight! link csXmlTag moonlightBlue

" Clojure
highlight! link clojureDefine moonlightViolet
highlight! link clojureKeyword moonlightPurple
highlight! link clojureMacro moonlightOrange
highlight! link clojureParen moonlightBlue
highlight! link clojureSpecial moonlightSky

" CoffeeScript
highlight! link coffeeConstant moonlightEmerald
highlight! link coffeeGlobal moonlightTurquoise
highlight! link coffeeKeyword moonlightOrange
highlight! link coffeeObjAssign moonlightSky
highlight! link coffeeSpecialIdent moonlightLime
highlight! link coffeeSpecialVar moonlightBlue
highlight! link coffeeStatement moonlightCoral

" Crystal
highlight! link crystalAccess moonlightYellow
highlight! link crystalAttribute moonlightSky
highlight! link crystalBlockParameter moonlightGreen
highlight! link crystalClass moonlightOrange
highlight! link crystalDefine moonlightViolet
highlight! link crystalExceptional moonlightCoral
highlight! link crystalInstanceVariable moonlightLime
highlight! link crystalModule moonlightBlue
highlight! link crystalPseudoVariable moonlightGreen
highlight! link crystalSharpBang moonlightGrey247
highlight! link crystalStringDelimiter moonlightWheat

" CSS/SCSS
highlight! link cssIdentifier moonlightYellow
highlight! link scssSelectorName moonlightBlue

" Dart
highlight! link dartMetadata moonlightLime
highlight! link dartStorageClass moonlightViolet
highlight! link dartTypedef moonlightViolet
highlight! link dartUserType moonlightBlue

" Elixir
highlight! link eelixirDelimiter moonlightCrimson
highlight! link elixirBlockDefinition moonlightViolet
highlight! link elixirDefine moonlightViolet
highlight! link elixirDocTest moonlightGrey247
highlight! link elixirExUnitAssert moonlightLime
highlight! link elixirExUnitMacro moonlightSky
highlight! link elixirKernelFunction moonlightGreen
highlight! link elixirKeyword moonlightOrange
highlight! link elixirModuleDefine moonlightBlue
highlight! link elixirPrivateDefine moonlightViolet
highlight! link elixirStringDelimiter moonlightWheat
highlight! link elixirVariable moonlightTurquoise

" Elm
highlight! link elmLetBlockDefinition moonlightLime
highlight! link elmTopLevelDecl moonlightCoral
highlight! link elmType moonlightSky

" Go
highlight! link goBuiltins moonlightSky
highlight! link goConditional moonlightViolet
highlight! link goDeclType moonlightGreen
highlight! link goDirective moonlightCranberry
highlight! link goFloats moonlightPurple
highlight! link goFunction moonlightBlue
highlight! link goFunctionCall moonlightSky
highlight! link goImport moonlightCranberry
highlight! link goLabel moonlightYellow
highlight! link goMethod moonlightSky
highlight! link goMethodCall moonlightSky
highlight! link goPackage moonlightViolet
highlight! link goSignedInts moonlightEmerald
highlight! link goStruct moonlightCoral
highlight! link goStructDef moonlightCoral
highlight! link goUnsignedInts moonlightPurple

" Haskell
highlight! link haskellDecl moonlightOrange
highlight! link haskellDeclKeyword moonlightOrange
highlight! link haskellIdentifier moonlightTurquoise
highlight! link haskellLet moonlightSky
highlight! link haskellOperators moonlightCranberry
highlight! link haskellType moonlightSky
highlight! link haskellWhere moonlightViolet

" HTML
highlight! link htmlArg moonlightSky
highlight! link htmlLink moonlightGreen
highlight! link htmlH1 moonlightCranberry
highlight! link htmlH2 moonlightOrange
highlight! link htmlEndTag moonlightPurple
highlight! link htmlTag moonlightLime
highlight! link htmlTagN moonlightBlue
highlight! link htmlTagName moonlightBlue
highlight! link htmlUnderline moonlightWhite
if g:moonlightItalics
    exec 'highlight htmlBoldItalic ctermbg=232 ctermfg=8 guibg=' . s:black . ' guifg=' . s:coral . ' gui=italic'
    exec 'highlight htmlBoldUnderlineItalic ctermbg=232 ctermfg=8 guibg=' . s:black . ' guifg=' . s:coral . ' gui=italic'
    exec 'highlight htmlItalic ctermfg=247 guifg=' . s:grey247 . ' gui=italic'
    exec 'highlight htmlUnderlineItalic ctermbg=232 ctermfg=247 guibg=' . s:black . ' guifg=' . s:grey247 . ' gui=italic'
else
    exec 'highlight htmlBoldItalic ctermbg=232 ctermfg=8 cterm=none guibg=' . s:black . ' guifg=' . s:coral ' gui=none'
    exec 'highlight htmlBoldUnderlineItalic ctermbg=232 ctermfg=8 guibg=' . s:black . ' guifg=' . s:coral
    exec 'highlight htmlItalic ctermfg=247 cterm=none guifg=' . s:grey247 ' gui=none'
    exec 'highlight htmlUnderlineItalic ctermbg=232 ctermfg=247 guibg=' . s:black . ' guifg=' . s:grey247
endif

" Java
highlight! link javaAnnotation moonlightLime
highlight! link javaBraces moonlightWhite
highlight! link javaClassDecl moonlightYellow
highlight! link javaCommentTitle moonlightGrey247
highlight! link javaConstant moonlightSky
highlight! link javaDebug moonlightSky
highlight! link javaMethodDecl moonlightYellow
highlight! link javaOperator moonlightCrimson
highlight! link javaScopeDecl moonlightViolet
highlight! link javaStatement moonlightTurquoise

" JavaScript, 'pangloss/vim-javascript' plugin
highlight! link jsClassDefinition moonlightEmerald
highlight! link jsClassKeyword moonlightOrange
highlight! link jsFrom moonlightCoral
highlight! link jsFuncBlock moonlightTurquoise
highlight! link jsFuncCall moonlightSky
highlight! link jsFunction moonlightLime
highlight! link jsGlobalObjects moonlightEmerald
highlight! link jsModuleAs moonlightCoral
highlight! link jsObjectKey moonlightSky
highlight! link jsObjectValue moonlightEmerald
highlight! link jsOperator moonlightViolet
highlight! link jsStorageClass moonlightLime
highlight! link jsTemplateBraces moonlightCranberry
highlight! link jsTemplateExpression moonlightTurquoise
highlight! link jsThis moonlightGreen

" JSX, 'MaxMEllon/vim-jsx-pretty' plugin
highlight! link jsxAttrib moonlightLime
highlight! link jsxClosePunct moonlightPurple
highlight! link jsxComponentName moonlightBlue
highlight! link jsxOpenPunct moonlightLime
highlight! link jsxTagName moonlightSky

" Lua
highlight! link luaBraces moonlightCranberry
highlight! link luaBuiltin moonlightGreen
highlight! link luaFuncCall moonlightSky
highlight! link luaSpecialTable moonlightSky

" Markdown, 'tpope/vim-markdown' plugin
highlight! link markdownBold moonlightYellow
highlight! link markdownCode moonlightWheat
highlight! link markdownCodeDelimiter moonlightWheat
highlight! link markdownError NormalNC
highlight! link markdownH1 moonlightOrange
highlight! link markdownUrl moonlightPurple

" Markdown, 'plasticboy/vim-markdown' plugin
highlight! link mkdDelimiter moonlightWhite
highlight! link mkdLineBreak NormalNC
highlight! link mkdListItem moonlightBlue
highlight! link mkdURL moonlightPurple

" PHP
highlight! link phpClass moonlightEmerald
highlight! link phpClasses moonlightBlue
highlight! link phpFunction moonlightSky
highlight! link phpParent moonlightReset
highlight! link phpType moonlightViolet

" PureScript
highlight! link purescriptClass moonlightOrange
highlight! link purescriptModuleParams moonlightCoral

" Python
highlight! link pythonBuiltin moonlightBlue
highlight! link pythonClassVar moonlightGreen
highlight! link pythonCoding moonlightSky
highlight! link pythonImport moonlightCranberry
highlight! link pythonOperator moonlightViolet
highlight! link pythonRun moonlightSky
highlight! link pythonStatement moonlightViolet

" Ruby
exec 'highlight rspecGroupMethods ctermfg=12 guifg=' . s:sky
highlight! link erubyDelimiter moonlightCrimson
highlight! link rubyAccess moonlightYellow
highlight! link rubyAssertion moonlightSky
highlight! link rubyAttribute moonlightSky
highlight! link rubyBlockParameter moonlightGreen
highlight! link rubyCallback moonlightSky
highlight! link rubyClass moonlightOrange
highlight! link rubyDefine moonlightViolet
highlight! link rubyEntities moonlightSky
highlight! link rubyExceptional moonlightCoral
highlight! link rubyGemfileMethod moonlightSky
highlight! link rubyInstanceVariable moonlightTurquoise
highlight! link rubyInterpolationDelimiter moonlightCranberry
highlight! link rubyMacro moonlightSky
highlight! link rubyModule moonlightBlue
highlight! link rubyPseudoVariable moonlightGreen
highlight! link rubyResponse moonlightSky
highlight! link rubyRoute moonlightSky
highlight! link rubySharpBang moonlightGrey247
highlight! link rubyStringDelimiter moonlightWheat

" Rust
highlight! link rustAssert moonlightGreen
highlight! link rustAttribute moonlightReset
highlight! link rustCharacterInvalid moonlightCranberry
highlight! link rustCharacterInvalidUnicode moonlightCranberry
highlight! link rustCommentBlockDoc moonlightGrey247
highlight! link rustCommentBlockDocError moonlightGrey247
highlight! link rustCommentLineDoc moonlightGrey247
highlight! link rustCommentLineDocError moonlightGrey247
highlight! link rustConstant moonlightOrange
highlight! link rustDerive moonlightGreen
highlight! link rustEscapeError moonlightCranberry
highlight! link rustFuncName moonlightBlue
highlight! link rustIdentifier moonlightBlue
highlight! link rustInvalidBareKeyword moonlightCranberry
highlight! link rustKeyword moonlightViolet
highlight! link rustLifetime moonlightViolet
highlight! link rustMacro moonlightGreen
highlight! link rustMacroVariable moonlightViolet
highlight! link rustModPath moonlightBlue
highlight! link rustObsoleteExternMod moonlightCranberry
highlight! link rustObsoleteStorage moonlightCranberry
highlight! link rustReservedKeyword moonlightCranberry
highlight! link rustSelf moonlightTurquoise
highlight! link rustSigil moonlightTurquoise
highlight! link rustStorage moonlightViolet
highlight! link rustStructure moonlightViolet
highlight! link rustTrait moonlightEmerald
highlight! link rustType moonlightEmerald

" Scala, note link highlighting does not work (I don't know why)
exec 'highlight scalaCapitalWord ctermfg=4 guifg=' . s:blue
exec 'highlight scalaCommentCodeBlock ctermfg=247 guifg=' . s:grey247
exec 'highlight scalaInstanceDeclaration ctermfg=6 guifg=' . s:turquoise
exec 'highlight scalaKeywordModifier ctermfg=14 guifg=' . s:lime
exec 'highlight scalaSpecial ctermfg=9 guifg=' . s:crimson

" Shell scripts
highlight! link shAlias moonlightTurquoise
highlight! link shCommandSub moonlightReset
highlight! link shLoop moonlightViolet
highlight! link shSetList moonlightTurquoise
highlight! link shShellVariables moonlightLime
highlight! link shStatement moonlightReset
highlight! link shVariable moonlightTurquoise

" TypeScript (leafgarland/typescript-vim)
highlight! link typescriptDOMObjects moonlightBlue
highlight! link typescriptFuncComma moonlightWhite
highlight! link typescriptFuncKeyword moonlightLime
highlight! link typescriptGlobalObjects moonlightBlue
highlight! link typescriptIdentifier moonlightGreen
highlight! link typescriptNull moonlightGreen
highlight! link typescriptOpSymbols moonlightViolet
highlight! link typescriptOperator moonlightCrimson
highlight! link typescriptParens moonlightWhite
highlight! link typescriptReserved moonlightViolet
highlight! link typescriptStorageClass moonlightLime

" TypeScript (HerringtonDarkholme/yats.vim)
highlight! link typeScriptModule moonlightBlue
highlight! link typescriptAbstract moonlightCoral
highlight! link typescriptArrayMethod moonlightSky
highlight! link typescriptArrowFuncArg moonlightWhite
highlight! link typescriptBOM moonlightEmerald
highlight! link typescriptBOMHistoryMethod moonlightSky
highlight! link typescriptBOMLocationMethod moonlightSky
highlight! link typescriptBOMWindowProp moonlightGreen
highlight! link typescriptBraces moonlightWhite
highlight! link typescriptCall moonlightWhite
highlight! link typescriptClassHeritage moonlightEmerald
highlight! link typescriptClassKeyword moonlightOrange
highlight! link typescriptClassName moonlightEmerald
highlight! link typescriptDecorator moonlightLime
highlight! link typescriptDOMDocMethod moonlightSky
highlight! link typescriptDOMEventTargetMethod moonlightSky
highlight! link typescriptDOMNodeMethod moonlightSky
highlight! link typescriptExceptions moonlightCrimson
highlight! link typescriptFuncType moonlightWhite
highlight! link typescriptMathStaticMethod moonlightSky
highlight! link typescriptMethodAccessor moonlightViolet
highlight! link typescriptObjectLabel moonlightSky
highlight! link typescriptParamImpl moonlightWhite
highlight! link typescriptStringMethod moonlightSky
highlight! link typescriptTry moonlightCrimson
highlight! link typescriptVariable moonlightLime
highlight! link typescriptXHRMethod moonlightSky

" Vimscript
highlight! link vimBracket moonlightSky
highlight! link vimCommand moonlightOrange
highlight! link vimCommentTitle moonlightViolet
highlight! link vimEnvvar moonlightCrimson
highlight! link vimFuncName moonlightSky
highlight! link vimFuncSID moonlightSky
highlight! link vimFunction moonlightSky
highlight! link vimNotation moonlightSky
highlight! link vimOption moonlightEmerald
highlight! link vimParenSep moonlightWhite
highlight! link vimSep moonlightWhite
highlight! link vimUserFunc moonlightSky

" XML
highlight! link xmlAttrib moonlightLime
highlight! link xmlEndTag moonlightBlue
highlight! link xmlTag moonlightLime
highlight! link xmlTagName moonlightBlue

" Git commits
highlight! link gitCommitBranch moonlightSky
highlight! link gitCommitDiscardedFile moonlightCrimson
highlight! link gitCommitDiscardedType moonlightSky
highlight! link gitCommitHeader moonlightPurple
highlight! link gitCommitSelectedFile moonlightEmerald
highlight! link gitCommitSelectedType moonlightSky
highlight! link gitCommitUntrackedFile moonlightCranberry
highlight! link gitEmail moonlightBlue

" Git commit diffs
highlight! link diffAdded moonlightGreen
highlight! link diffChanged moonlightCrimson
highlight! link diffIndexLine moonlightCrimson
highlight! link diffLine moonlightSky
highlight! link diffRemoved moonlightRed
highlight! link diffSubname moonlightSky

" Tagbar plugin
highlight! link TagbarFoldIcon moonlightGrey247
highlight! link TagbarVisibilityPublic moonlightLime
highlight! link TagbarVisibilityProtected moonlightLime
highlight! link TagbarVisibilityPrivate moonlightLime
highlight! link TagbarKind moonlightEmerald

" NERDTree plugin
highlight! link NERDTreeClosable moonlightGreen
highlight! link NERDTreeCWD moonlightPurple
highlight! link NERDTreeDir moonlightSky
highlight! link NERDTreeDirSlash moonlightCranberry
highlight! link NERDTreeExecFile moonlightWheat
highlight! link NERDTreeFile moonlightWhite
highlight! link NERDTreeHelp moonlightGrey247
highlight! link NERDTreeLinkDir moonlightBlue
highlight! link NERDTreeLinkFile moonlightBlue
highlight! link NERDTreeLinkTarget moonlightTurquoise
highlight! link NERDTreeOpenable moonlightGreen
highlight! link NERDTreePart moonlightGrey0
highlight! link NERDTreePartFile moonlightGrey0
highlight! link NERDTreeUp moonlightBlue

" NERDTree Git plugin
highlight! link NERDTreeGitStatusDirDirty moonlightWheat
highlight! link NERDTreeGitStatusModified moonlightCrimson
highlight! link NERDTreeGitStatusRenamed moonlightSky
highlight! link NERDTreeGitStatusStaged moonlightSky
highlight! link NERDTreeGitStatusUntracked moonlightRed

" vimfiler plugin
highlight! link vimfilerClosedFile moonlightBlue
highlight! link vimfilerMarkedFile moonlightOrange
highlight! link vimfilerNonMark moonlightGreen
highlight! link vimfilerNormalFile moonlightWhite
highlight! link vimfilerOpenedFile moonlightBlue
highlight! link vimfilerROFile moonlightGrey246

" fern.vim plugin
highlight! link FernBranchSymbol moonlightGreen
highlight! link FernBranchText moonlightBlue
highlight! link FernMarkedLine moonlightCoral
highlight! link FernMarkedText moonlightCoral
highlight! link FernRootSymbol moonlightPurple
highlight! link FernRootText moonlightPurple

" fern-git-status.vim plugin
highlight! link FernGitStatusBracket moonlightGrey246
highlight! link FernGitStatusIndex moonlightEmerald
highlight! link FernGitStatusWorktree moonlightCrimson

" Misc stylings
highlight! link bufExplorerHelp moonlightGrey247
highlight! link bufExplorerSortBy moonlightGrey247
highlight! link CleverFDefaultLabel moonlightCrimson
highlight! link CtrlPMatch moonlightPurple
highlight! link Directory moonlightEmerald
highlight! link HighlightedyankRegion moonlightGrey0
highlight! link jsonKeyword moonlightSky
highlight! link jsonQuote moonlightWhite
highlight! link netrwClassify moonlightCranberry
highlight! link netrwDir moonlightSky
highlight! link netrwExe moonlightWheat
highlight! link tagName moonlightTurquoise
highlight! link Cheat40Header moonlightBlue
highlight! link Beacon moonlightWhite
if g:moonlightUnderlineMatchParen
    exec 'highlight MatchWord cterm=underline gui=underline guisp=' . s:coral
else
    highlight! link MatchWord moonlightCoral
endif
exec 'highlight snipLeadingSpaces ctermbg=bg ctermfg=fg guibg=bg guifg=fg'
exec 'highlight MatchWordCur ctermbg=bg guibg=bg'

" vimdiff/nvim -d
exec 'highlight DiffAdd ctermbg=10 ctermfg=bg guibg=' . s:emerald . ' guifg=bg'
exec 'highlight DiffChange ctermbg=236 guibg=' . s:grey236
exec 'highlight DiffDelete ctermbg=236 ctermfg=9 guibg=' . s:grey236 . ' guifg=' . s:crimson ' gui=none'
exec 'highlight DiffText ctermbg=4 ctermfg=bg guibg=' . s:blue . ' guifg=bg gui=none'

" Neomake plugin
if g:moonlightUndercurls
    exec 'highlight NeomakeError ctermbg=bg guibg=bg gui=undercurl guisp=' . s:red
    exec 'highlight NeomakeWarning ctermbg=bg guibg=bg gui=undercurl guisp=' . s:yellow
    exec 'highlight NeomakeInfo ctermbg=bg guibg=bg gui=undercurl guisp=' . s:sky
    exec 'highlight NeomakeMessage ctermbg=bg guibg=bg gui=undercurl guisp=' . s:white
else
    exec 'highlight NeomakeError ctermbg=bg guibg=bg'
    exec 'highlight NeomakeWarning ctermbg=bg guibg=bg'
    exec 'highlight NeomakeInfo ctermbg=bg guibg=bg'
    exec 'highlight NeomakeMessage ctermbg=bg guibg=bg'
endif

highlight! link NeomakeErrorSign moonlightRedAlert
highlight! link NeomakeWarningSign moonlightYellowAlert
highlight! link NeomakeInfoSign moonlightSkyAlert
highlight! link NeomakeMessageSign moonlightWhiteAlert

" ALE plugin
if g:moonlightUndercurls
     exec 'highlight ALEError ctermbg=bg guibg=bg gui=undercurl guisp=' . s:red
     exec 'highlight ALEWarning ctermbg=bg guibg=bg gui=undercurl guisp=' . s:yellow
     exec 'highlight ALEInfo ctermbg=bg guibg=bg gui=undercurl guisp=' . s:sky
else
    exec 'highlight ALEError ctermbg=bg guibg=bg'
    exec 'highlight ALEWarning ctermbg=bg guibg=bg'
    exec 'highlight ALEInfo ctermbg=bg guibg=bg'
endif
highlight! link ALEVirtualTextError moonlightGrey241
highlight! link ALEErrorSign moonlightRedAlert
highlight! link ALEVirtualTextWarning moonlightGrey241
highlight! link ALEWarningSign moonlightYellowAlert
highlight! link ALEVirtualTextInfo moonlightGrey241
highlight! link ALEInfoSign moonlightSkyAlert

" Neovim LSP diagnostics
if g:moonlightUndercurls
     exec 'highlight LspDiagnosticsUnderlineError ctermbg=bg guibg=bg gui=undercurl guisp=' . s:red
     exec 'highlight LspDiagnosticsUnderlineWarning ctermbg=bg guibg=bg gui=undercurl guisp=' . s:yellow
     exec 'highlight LspDiagnosticsUnderlineInformation ctermbg=bg guibg=bg gui=undercurl guisp=' . s:sky
     exec 'highlight LspDiagnosticsUnderlineHint ctermbg=bg guibg=bg gui=undercurl guisp=' . s:white
else
    exec 'highlight LspDiagnosticsUnderlineError ctermbg=bg guibg=bg gui=underline guisp=' . s:red
    exec 'highlight LspDiagnosticsUnderlineWarning ctermbg=bg guibg=bg gui=underline guisp=' . s:blue
    exec 'highlight LspDiagnosticsUnderlineInformation ctermbg=bg guibg=bg gui=underline guisp=' . s:yellow
    exec 'highlight LspDiagnosticsUnderlineHint ctermbg=bg guibg=bg gui=underline guisp=' . s:sky
endif
highlight! link LspDiagnosticsVirtualTextError moonlightGrey241
highlight! link LspDiagnosticsSignError moonlightRedAlert
highlight! link LspDiagnosticsFloatingError moonlightRed
highlight! link LspDiagnosticsVirtualTextWarning moonlightGrey241
highlight! link LspDiagnosticsSignWarning moonlightYellowAlert
highlight! link LspDiagnosticsFloatingWarning moonlightYellow
highlight! link LspDiagnosticsVirtualTextInformation moonlightGrey241
highlight! link LspDiagnosticsSignInformation moonlightSkyAlert
highlight! link LspDiagnosticsFloatingInformation moonlightSky
highlight! link LspDiagnosticsVirtualTextHint moonlightGrey241
highlight! link LspDiagnosticsSignHint moonlightWhiteAlert
highlight! link LspDiagnosticsFloatingHint moonlightWhite

" GitGutter plugin
highlight! link GitGutterAdd moonlightEmeraldAlert
highlight! link GitGutterChange moonlightPurpleAlert
highlight! link GitGutterChangeDelete moonlightCoralAlert
highlight! link GitGutterDelete moonlightRedAlert

" Signify plugin
highlight! link SignifySignAdd moonlightEmeraldAlert
highlight! link SignifySignChange moonlightPurpleAlert
highlight! link SignifySignDelete moonlightRedAlert

" FZF plugin
exec 'highlight fzf1 ctermfg=9 ctermbg=236 guifg=' . s:crimson . ' guibg=' . s:grey236
exec 'highlight fzf2 ctermfg=111 ctermbg=236 guifg=' . s:blue . ' guibg=' . s:grey236
exec 'highlight fzf3 ctermfg=10 ctermbg=236 guifg=' . s:emerald . ' guibg=' . s:grey236
exec 'highlight fzfNormal ctermfg=249 guifg=' . s:grey249
exec 'highlight fzfFgPlus ctermfg=253 guifg=' . s:grey253
exec 'highlight fzfBorder ctermfg=236 guifg=' . s:grey236
let g:fzf_colors = {
  \  'fg':      ['fg', 'fzfNormal'],
  \  'bg':      ['bg', 'Normal'],
  \  'hl':      ['fg', 'Number'],
  \  'fg+':     ['fg', 'fzfFgPlus'],
  \  'bg+':     ['bg', 'Pmenu'],
  \  'hl+':     ['fg', 'Number'],
  \  'info':    ['fg', 'String'],
  \  'border':  ['fg', 'fzfBorder'],
  \  'prompt':  ['fg', 'fzf2'],
  \  'pointer': ['fg', 'Exception'],
  \  'marker':  ['fg', 'StorageClass'],
  \  'spinner': ['fg', 'Type'],
  \  'header':  ['fg', 'CursorLineNr']
  \}

" barbar.nvim plugin
exec 'highlight BufferCurrent      ctermbg=234 ctermfg=251 guibg=' . s:grey234 . ' guifg=' . s:white
exec 'highlight BufferCurrentMod   ctermbg=234 ctermfg=11  guibg=' . s:grey234 . ' guifg=' . s:wheat
exec 'highlight BufferCurrentSign  ctermbg=234 ctermfg=4   guibg=' . s:grey234 . ' guifg=' . s:blue
exec 'highlight BufferVisible      ctermbg=234 ctermfg=246 guibg=' . s:grey234 . ' guifg=' . s:grey246
exec 'highlight BufferVisibleMod   ctermbg=234 ctermfg=11  guibg=' . s:grey234 . ' guifg=' . s:wheat
exec 'highlight BufferVisibleSign  ctermbg=234 ctermfg=246 guibg=' . s:grey234 . ' guifg=' . s:grey246
exec 'highlight BufferInactive     ctermbg=236 ctermfg=246 guibg=' . s:grey236 . ' guifg=' . s:grey246
exec 'highlight BufferInactiveMod  ctermbg=236 ctermfg=11  guibg=' . s:grey236 . ' guifg=' . s:wheat
exec 'highlight BufferInactiveSign ctermbg=236 ctermfg=247 guibg=' . s:grey236 . ' guifg=' . s:grey247
