# Debug Blocks

Motoko comes included with `debug {}` blocks, which can be excluded when build.

```motoko
public func doSomething() : async () {
    // Do some stuff...

    debug debugPrint("A random debug message."); // ❌ statement removed on build.

    // Maybe more stuff...

    debug {
        let x = 1 + 2;
        debugPrint(debug_show(x));
    } // ❌ block removed on build.
};
```

## Example

```shell
dfx start --background --clean
dfx deploy

dfx canister call dev doSomething
# [Canister rkp4c-7iaaa-aaaaa-aaaca-cai] A random debug message.
# [Canister rkp4c-7iaaa-aaaaa-aaaca-cai] 3
# ()
dfx canister call prod doSomething
# ()
```

## DFX, MOC and Vessel Version(s)

Tested with `DFX v0.10.1`, `moc v0.6.28` and `vessel v0.6.3`.

! NOTE: `moc v0.6.29` is not compatible with the replica in `DFX v0.10.1`, the `performance_counter` is not exported by the runtime.
