import { debugPrint } = "mo:⛔";


actor {
    public func doSomething() : async () {
        // Do some stuff...

        debug debugPrint("A random debug message."); // ❌ statement removed on build.

        // Maybe more stuff...

        debug {
            let x = 1 + 2;
            debugPrint(debug_show(x));
        } // ❌ block removed on build.
    };
};
