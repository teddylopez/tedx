let methods = {}

methods.scrollToTop = function() {
  window.scroll({
    top: 0,
    left: 0,
    behavior: 'smooth'
  });
}

exports.methods = methods;