class C {
  var x: int;
}

class D {
  var y: C;
}

def foo(c: C) {
  writeln("x is: ", c.x);
}

def foo(d: D) {
  foo(d.y);
}

def foo(n: _nilType) {
  writeln("foo() was passed a nil instance");
}

def main() {
  var myC = new C(x=1);
  foo(myC);
  var myD = new D();
  myD.y = new C();
  myD.y.x = 2;
  foo(myD);
  delete myC;
  delete myD.y;
  delete myD;
}
