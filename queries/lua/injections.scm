; extends

((function_call
  name: (_) @_vimcmd_identifier
  arguments: (arguments (string content: _ @query) .))
  (#eq? @_vimcmd_identifier "vim.treesitter.query.set_query"))

((string ("string_content") @query) (#lua-match? @query "^%s*;+%s?query"))

; viim:filetype=lua
