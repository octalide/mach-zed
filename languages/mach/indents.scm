; =============================================================================
; Mach Indent Queries for Zed
; =============================================================================

; Indent inside blocks and braced constructs
[
  (block)
  (field_declaration_list)
  (initializer_list)
  (parameter_list)
  (argument_list)
  (asm_isa_block)
] @indent

; Dedent on closing brackets
[
  "}"
  ")"
  "]"
] @outdent
