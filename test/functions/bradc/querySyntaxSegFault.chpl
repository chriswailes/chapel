class C {
  type t;
  param r: int;
}

def foo(x: C(t=?tt, r=?rr)) {
  writeln("In foo");
}

var myC = new C(int, 2);

foo(myC);

delete myC;
