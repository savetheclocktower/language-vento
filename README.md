# language-vento

Pulsar language support for [Vento](https://vento.js.org/), the JavaScript templating engine.

Provides an **HTML (Vento)** grammar for using Vento with HTML. (If you want other grammars for other types of files, please file an issue.)

## Features

### Injections

As much syntax-highlighting as possible is handled by the JavaScript injections. If there’s a place in Vento where any arbitrary JavaScript is permitted, then this package defers to the JavaScript grammar.

Anything outside of Vento tags is handled by injecting the HTML grammar.

### Snippets

Every snippet has two versions: a “normal” version that emits `{{`/`}}` (or its equivalent) as tag delimiters, and a “trimmed” version that emits `{{-`/`-}}` (or its equivalent) as tag delimiters.

In nearly all cases, the trigger for the latter matches the trigger for the former, but with `-` at the end. For instance: `for` will trigger a for-loop snippet, but `for-` will trigger the same snippet with whitespace-trimming delimiters.

The normal “output” tag is one exception. `=` is the tab trigger for inserting regular delimiters, but `-` is the tab trigger for inserting whitespace-trimming delimiters.

![GIF demonstration of output tag snippets](https://github.com/user-attachments/assets/ad1680f1-7e6a-48b2-8c12-68b1fdab6a56)

### Future enhancements

* Perhaps add support for arbitrary plugins that add new syntax.
* Instead of having two versions of each snippet, maybe have the whitespace-trimming behavior of snippets be configurable? (A bit hacky, but could be done.)
