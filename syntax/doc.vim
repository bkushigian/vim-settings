if exists("b:current_syntax")
	finish
endif

" Basic Syntax Highlighting
syntax keyword docKeyword SECTION
syntax keyword docKeyword if elseif else loop while return class 
syntax keyword docBool true True TRUE false False FALSE

" Regular Expression Highlighting
syntax match docComment "\v#.*$"
syntax match docHeading "=\{4,}.*$"
syntax match docOperators "[-\+/^%~<>\*]"
syntax match docBracket "\[[A-Z./,;]*]"
syntax match docNumber "[^a-zA-Z_][0-9]+*\.[0-9]*"
syntax match docNumber "[^a-zA-Z_][0-9]+\."
syntax match docNumber "[^a-zA-Z_][0-9]+*"
syntax match docNumber "\.[0-9]+"
syntax match docSpecialWord "[A-Z]\{3,}"
syntax match docString "\".*\""
"
" Highlight Associations
highlight link docHeading Comment
highlight link docKeyword Keyword
highlight link docComment Comment
highlight link docBracket PreProc
highlight link docString  String
highlight link docBool    Boolean
highlight link docSpecialWord    Type
highlight link docOperators Operator
highlight link docNumber Number

let b:current_syntax = "doc"
