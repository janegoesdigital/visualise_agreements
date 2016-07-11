

//clause number needs to be generated.  Need to have main clause number.  To get the clause number we count how many clauses there are from the start.  Could therefore count number of h1s
// var clause_number =

var toc = function (root, enter, exit) {
  var node = root;
  start: while (node) {
    enter(node);
    if (node.firstChild) {
      node = node.firstChild;
      continue start;
    }
    while (node) {
      exit(node);
      if (node == root) {
        node = null;
      } else if (node.nextSibling) {
        node = node.nextSibling;
        continue start;
      } else {
        node = node.parentNode;
      }
    }
  }
};

toc();
