// module main;
import a;
import b;
import behaviors;
import core.time;
import std.conv;
import std.math: abs;
import std.stdio;
import arsd.simpledisplay;


void main() {
    scope object1 = new A();
    scope object2 = new B();
    bool exit = false;


    scope window = new SimpleWindow(600, 400, "Test window");


    MonoTime before;
    MonoTime after;

    // float delta = 0;
    Duration diff = Duration.zero;
    MonoTime lastTime = MonoTime.currTime;
    // float accum = 0.0;

    while (!exit) {
        MonoTime now = MonoTime.currTime;
        diff = now - lastTime;
        lastTime = now;
        float delta = diff.total!"nsecs".to!float / 1.0e9f;
        writeln("\n");
        foreach (func; list) {
            func(delta);  
        }
    }
}
