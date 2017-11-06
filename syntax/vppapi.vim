" Vim syntax file
" Language: VPP API file
" Maintainer: Filip Tehlar
" Latest Revision: 29 September 2017

if exists("b:current_syntax")
  finish
endif

syn keyword vpp_keywords typeonly autoreply define manual_endian manual_print
syn keyword vpp_types u8 u16 i16 u32 i32 u64 i64

syn region vpp_comment start='/\*\*' end='\*/'
syn region vpp_comment start='/\*' end='\*/'
syn match vpp_number '\d\+'

hi def link vpp_types Type
hi def link vpp_keywords Type
hi def link vpp_comment Comment
hi def link vpp_number Constant

let b:current_syntax = "vppapi"
