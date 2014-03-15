" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

syntax match javaScriptFunction /\<function\>/ nextgroup=javaScriptFuncName skipwhite conceal cchar=𝑓
syntax match javaScriptFunctionNoParams /function()/ conceal cchar=𝑓

hi link javaScriptFunctionNoParams javaScriptFunction
hi! link Conceal javaScriptFunction

set conceallevel=2


