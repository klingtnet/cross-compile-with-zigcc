# Cross compiling with zig cc

Andrew Kelley announced `zig cc`, a replacement for GCC/clang, with [this blog post](https://andrewkelley.me/post/zig-cc-powerful-drop-in-replacement-gcc-clang.html).  In this repository I want to experiment cross compiling a sample Go project with C dependencies using `zig cc`.

You can list `zig` targets using `zig targets`, e.g. to list all libc targets for amd64 linux:

```sh
$ zig targets | jq -r '.libc[] | select(startswith("x86_64-linux"))'
x86_64-linux-gnu
x86_64-linux-gnux32
x86_64-linux-musl
```

Please note that I developed this example on an M1 🍏 and thus my target system for cross compilation is amd64 linux.

## Run

Just do `make run` and it should print out a bunch of text ending with

```
1 foo
2 bar
3 baz
```