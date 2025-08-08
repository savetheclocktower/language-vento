[
  (if_tag_start)
  (for_tag_start)
  (set_tag_start)
  (layout_tag_start)
  (export_tag_start)
  (fragment_tag_start)
  (function_tag_start)
] @indent

[
  (else_tag)
  (else_if_tag)
] @dedent @indent

; End tags should match the indentation level of their corresponding start
; tags.
([
  (if_tag_end)
  (for_tag_end)
  (set_tag_end)
  (layout_tag_end)
  (export_tag_end)
  (fragment_tag_end)
  (function_tag_end)
] @match
  (#set! indent.match parent.firstNamedChild.startPosition))
