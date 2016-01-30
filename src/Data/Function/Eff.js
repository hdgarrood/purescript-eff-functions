// module Data.Function.Eff

exports.mkEffFn1 = function mkEffFn1(fn) {
  return function(x) {
    return fn(x)();
  };
};

exports.mkEffFn2 = function mkEffFn2(fn) {
  return function(a, b) {
    return fn(a)(b)();
  };
};

exports.runEffFn1 = function runEffFn1(fn) {
  return function(a) {
    return function() {
      return fn(a);
    };
  };
};

exports.runEffFn2 = function runEffFn2(fn) {
  return function(a) {
    return function(b) {
      return function() {
        return fn(a, b);
      };
    };
  };
};
