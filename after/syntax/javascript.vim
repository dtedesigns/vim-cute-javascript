" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear javaScriptFunction
syntax match javaScriptFunction /\<function\>/ nextgroup=javaScriptFuncName skipwhite conceal cchar=𝑓
syntax match javaScriptFunctionNoParams /function()/ conceal cchar=𝑓

syntax keyword javaScriptReturn return conceal cchar=↵

hi link javaScriptFunctionNoParams javaScriptFunction
hi! link Conceal javaScriptFunction
hi link javaScriptReturn javaScriptStatement

set conceallevel=2


