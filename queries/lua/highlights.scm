; extends

(_ table: (identifier) @constant
  (#match? @constant "^vim$"))

(_ value: (identifier) @constant
  (#match? @constant "^vim$"))

((dot_index_expression) @_dot_index_expression
  (#match? @_dot_index_expression "^vim.cmd.*")
  (identifier) @namespace)

; vim:filetype=query
