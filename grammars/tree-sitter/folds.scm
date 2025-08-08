
([
  (for_block)
  (set_block)
  (export_block)
  (fragment_block)
  (layout_block)
  (function_block)
  (fragment_block)
] @fold
  (#set! fold.adjustToEndOfPreviousRow))

; Each block of an if/else if/else folds independently of the others.
((conditional_block) @fold
  (#set! fold.endAt endPosition)
  (#set! fold.adjustToEndOfPreviousRow))
