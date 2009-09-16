class C {
  var x: int;
}

class D {
  var y: C = new C();
}

def foo(c: C) {
  writeln("x is: ", c.x);
}

def foo(d: D) {
  foo(d.y);
}

def main() {
  var myC = new C(x=1);
  foo(myC);
  delete myC;
  var myD = new D();
  delete myD.y;
  myD.y = new C();
  myD.y.x = 2;
  foo(myD);
  delete myD.y;
  delete myD;
}
