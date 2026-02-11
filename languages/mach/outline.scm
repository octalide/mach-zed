; =============================================================================
; Mach Code Outline Queries for Zed
; =============================================================================

; Functions
(function_declaration
  name: (identifier) @name) @item

; Records
(record_declaration
  name: (identifier) @name) @item

; Unions
(union_declaration
  name: (identifier) @name) @item

; Type aliases
(type_alias_declaration
  name: (identifier) @name) @item

; Value declarations
(value_declaration
  name: (identifier) @name) @item

; Variable declarations
(variable_declaration
  name: (identifier) @name) @item

; Test declarations
(test_declaration
  name: (string_literal) @name) @item

; Extern declarations
(extern_declaration
  name: (identifier) @name) @item

; Public declarations (annotate with pub context)
(public_declaration
  (function_declaration
    name: (identifier) @name) @item)

(public_declaration
  (record_declaration
    name: (identifier) @name) @item)

(public_declaration
  (union_declaration
    name: (identifier) @name) @item)

(public_declaration
  (type_alias_declaration
    name: (identifier) @name) @item)

(public_declaration
  (value_declaration
    name: (identifier) @name) @item)

(public_declaration
  (variable_declaration
    name: (identifier) @name) @item)

(public_declaration
  (extern_declaration
    name: (identifier) @name) @item)
