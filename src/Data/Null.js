'use strict';

// module Data.Null

exports["toMaybe'"] = curry(function (just, nothing, x) {
  return x === null ? nothing : just(x);
});
