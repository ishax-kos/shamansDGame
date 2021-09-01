module a;

import std.stdio;
import behaviors;

class A {
    this () {
        list ~= &this.myFunction;
    }

    void myFunction(ref float delta) {
        writefln("hello! here is %s.", delta);
    }
}
