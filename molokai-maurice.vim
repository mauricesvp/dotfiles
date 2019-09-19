" github.com/mauricesvp/dotfiles 
" Inspired by molokai

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "molokai-maurice"

" highlight CursorLine(Nr) when in insert mode
hi CursorLine   cterm=None ctermfg=None ctermbg=236
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

hi Normal       ctermfg=252 ctermbg=234
hi CursorLine               ctermbg=236   cterm=none
hi CursorLineNr ctermfg=208               cterm=none

hi Boolean         ctermfg=141
hi Character       ctermfg=208
hi Number          ctermfg=141
hi String          ctermfg=208
hi Conditional     ctermfg=197               cterm=bold
hi Constant        ctermfg=141               cterm=bold

hi DiffDelete      ctermfg=125 ctermbg=233

hi Directory       ctermfg=154               cterm=bold
hi Error           ctermfg=222 ctermbg=233
hi Exception       ctermfg=154               cterm=bold
hi Float           ctermfg=141
hi Function        ctermfg=154
hi Identifier      ctermfg=208
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

hi Keyword         ctermfg=197               cterm=bold
hi Operator        ctermfg=197
hi PreCondit       ctermfg=201               cterm=bold
hi PreProc         ctermfg=201
hi Repeat          ctermfg=197               cterm=bold

hi Statement       ctermfg=197               cterm=bold
hi Tag             ctermfg=197
hi Title           ctermfg=203
hi Visual                      ctermbg=238

hi Comment         ctermfg=2
hi LineNr          ctermfg=239
hi NonText         ctermfg=239
set background=dark
