" Vim syntax file
" Language:         MML
" Maintainer:       Ben Kushigian
" Last Change:      5/29/2017

" Quit when a syntax file was already loaded	{{{
if exists("b:current_syntax")
	finish
endif
"}}}

" /+-<>=&]\|!=\|++\|--\|+=\|-=\|*=/
syntax match mmlOperator "\v*" 
syntax match mmlOperator "\v\+"
syntax match mmlOperator "\v-"
syntax match mmlOperator "\v<"
syntax match mmlOperator "\v>"
syntax match mmlOperator "\v/"
syntax match mmlOperator "\v\+="
syntax match mmlOperator "\v-="
syntax match mmlOperator "\v/\="
syntax match mmlOperator "\v*\="
syntax match mmlOperator "\v\!\="
syntax match mmlOperator "\v\=\="
syntax match mmlOperator "\v->"
syntax match mmlOperator "\v\|\|"
syntax match mmlOperator "\v&&"

syntax match mmlBrace    /[{}()[]]/
syntax match mmlBool     /TRUE\|FALSE/
syntax match mmlConst    /STD\|COR\|ROR\|LHS\|RHS/
syntax match mmlKey      /STD\|COR\|ROR\|LHS\|RHS/
syntax match mmlInt      /[0-9]\+\|0x[0-9a-f]\+/

" take out comments
syn match mmlModuleCommentA "//.*$"
  \ contains=mmlCommentTodo,@Spell contained
  \ nextgroup=mmlModuleCommentA skipwhite skipnl
syn region mmlModuleCommentA start="{-" end="-}"
  \ contains=mmlModuleCommentA,mmlCommentTodo,@Spell contained
  \ nextgroup=mmlModuleCommentA skipwhite skipnl

sy keyword mmlCommentTodo    TODO FIXME XXX TBD contained

" syncing
syn sync clear
syn sync minlines=10

" highlighting
hi link mmlComment   Comment
hi link mmlOperator  Operator
hi link mmlROR       Keyword
hi link mmlBool      Boolean
hi link mmlConst     Constant
hi link mmlKey       Keyword
hi link mmlInt       Number

let b:current_syntax="mml"
