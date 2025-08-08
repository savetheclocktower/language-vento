exports.activate = () => {

  // Inject HTML into the "HTML (Vento)" grammar.
  atom.grammars.addInjectionPoint('text.html.vento', {
    type: 'template',
    language() {
      return 'html';
    },
    content(node) {
      return node.descendantsOfType('content');
    },
    subtractAdjacentWhitespace: true
  });

  // Inject HTML into the "HTML (Vento)" grammar.
  atom.grammars.addInjectionPoint('text.html.vento', {
    type: 'code',
    language() {
      return 'javascript';
    },
    content(node) {
      return node;
    }
  });
}

exports.consumeHyperlinkInjection = (hyperlink) => {
  hyperlink.addInjectionPoint('text.html.vento', {
    // Strings are handled by the JS injection.
    types: ['comment']
  });
};

exports.consumeTodoInjection = (todo) => {
  todo.addInjectionPoint('text.html.vento', {
    types: ['comment']
  });
};
