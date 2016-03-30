'use strict';

// module DOM.Event

exports.addEventListener = function (target, event, fn) {
  return function () {
    target.addEventListener(event, fn, false);
    return {};
  }
};
