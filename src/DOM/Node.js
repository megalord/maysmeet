'use strict';

// module DOM.Node

exports.textContent = curry(function (node) {
  return node.textContent;
}, 2);
