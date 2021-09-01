module b;

import std.stdio;
import behaviors;

class B {
    this () {
        list ~= &this.myBFunction;
    }

    void myBFunction(ref float delta){
        writefln("howdy! were at %.f fps!", 1.0/delta);
    };
}
