" Copyright (c) 2019, 2020 Rouven Spreckels <n3vu0r@qu1x.org>
"
" Usage of the works is permitted provided that
" this instrument is retained with the works, so that
" any entity that uses the works is notified of this instrument.
"
" DISCLAIMER: THE WORKS ARE WITHOUT WARRANTY.

" Language:   BML v1.0
" Revision:   0.04
" Features:   stack-based-indent, tabular-attributes, tabular-colon-data
" Maintainer: Rouven Spreckels <n3vu0r@qu1x.org>
" Homepage:   https://qu1x.org/vim-bml
" License:    https://opensource.org/licenses/Fair

if exists("b:current_syntax")
  finish
endif

syn match Identifier /[a-zA-Z0-9-.]\+/ display

syn region String matchgroup=Operator start=/:/ end=/$/ oneline display
syn region String matchgroup=Operator start=/=/ end=/[" \t]\@=\|$/ oneline display
syn region String matchgroup=Operator start=/="/ end=/"/ oneline display

syn match Comment /\/\/.*/ contains=@Spell,Todo display
syn keyword Todo TODO FIXME BUG NOBUG REQ RFE IDEA ??? !!! HACK PORT contained
syn keyword Todo CAVEAT NOTE FAQ GLOSS SEE TODOC CRED STAT RVD contained
set iskeyword+=?,!

let b:current_syntax = "bml"
