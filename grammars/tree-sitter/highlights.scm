
; ENTITIES
; ========

(function_tag_start
  (identifier) @entity.name.function.vento)

(fragment_tag_start
  (identifier) @entity.name.type.fragment.vento)


; KEYWORDS
; ========

"/if" @keyword.control.if.vento
"/for" @keyword.control.for.vento
"/layout" @keyword.control.layout.vento
"/set" @keyword.control.set.vento
"/export" @keyword.control.export.vento
"/function" @keyword.control.function.vento
"/fragment" @keyword.control.fragment.vento

[
  "if"
  "else"
  "for"
  "layout"
  "set"
  "import"
  "export"
  "include"
  "function"
  "fragment"
  "of"
] @keyword.control._TEXT_.vento

"async" @storage.modifier.async.js.vento

; OPERATORS
; =========

"=" @keyword.operator.assignment.js.vento
"|>" @keyword.operator.filter.vento


; VARIABLES
; =========

; Identifiers are highlighted as variables when…

; …they are initialized or reassigned.
(set_tag_start (identifier) @variable.other.assignment.js.vento)
(set_tag (identifier) @variable.other.assignment.js.vento)

; …they are parameters for a function.
(parameter name: (_) @variable.parameter.vento)

; …they are brought into scope as loop variables.
(for_tag_start (identifier) @variable.other.loop.js.vento)

; …they are imported or exported as identifiers.
(export_tag_start (identifier) @variable.language.export.vento)
(export_tag (identifier) @variable.language.export.vento)
(import_specifier (identifier) @variable.language.import.vento)


; MISC
; ====

([
  (if_tag_start)
  (if_tag_end)
  (else_tag)
  (else_if_tag)
  (for_tag_start)
  (for_tag_end)
  (function_tag_start)
  (function_tag_end)
  (import_tag)
  (export_tag_start)
  (export_tag_end)
  (export_tag)
  (layout_tag_start)
  (layout_tag_end)
  (set_tag_start)
  (set_tag_end)
  (set_tag)
  (fragment_tag_start)
  (fragment_tag_end)
  (include_tag)
  (comment_tag)
  (javascript_tag)
  (tag)
] @meta.embedded.line.vento
  (#is? test.endsOnSameRowAs startPosition))

([
  (if_tag_start)
  (if_tag_end)
  (else_tag)
  (else_if_tag)
  (for_tag_start)
  (for_tag_end)
  (function_tag_start)
  (function_tag_end)
  (import_tag)
  (export_tag_start)
  (export_tag_end)
  (export_tag)
  (layout_tag_start)
  (layout_tag_end)
  (set_tag_start)
  (set_tag_end)
  (set_tag)
  (fragment_tag_start)
  (fragment_tag_end)
  (include_tag)
  (comment_tag)
  (javascript_tag)
  (tag)
] @meta.embedded.block.vento
  (#is-not? test.endsOnSameRowAs startPosition))


; COMMENTS
; ========

; TODO: It's a matter of taste whether the entire tag should be highlighted as
; a comment or just the inner contents. Perhaps this can be made into a
; setting?
(comment_tag) @comment.block.vento


; PUNCTUATION
; ===========

"," @punctuation.separator.comma.vento

"{" @punctuation.definition.begin.bracket.curly.vento
"}" @punctuation.definition.end.bracket.curly.vento

[
  "{{"
  "{{-"
  "{{>"
  "{{->"
  "{{#"
] @punctuation.definition.directive.begin.vento

[
  "}}"
  "-}}"
  "#}}"
] @punctuation.definition.directive.end.vento
