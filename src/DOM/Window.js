'use strict';

// module DOM.Window

exports["querySelector'"] = curry(function (selector) {
  return document.querySelector(selector);
}, 2);
