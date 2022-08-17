# README

# setup

## EOL

`zig fmt` forces `\n` (and not `\r\n`) on all platforms.

in `.vscode/settings.json`

```
"files.eol": "\n"
```

in `.gitattributes`

```
*.zig text eol=lf
*.txt text eol=lf
```

see https://github.com/ziglang/zig/blob/master/.gitattributes

# format

`zig fmt **/*.zig`

# build, run, test

`zig build run` builds and runs `main.zig`

`zig test src/arrays.zig` builds and runs `src/arrays.zig` but also creates an unwanted `src/zig-cache`

so I use `zig test --cache-dir zig-cache src/structs.zig`

## run all tests

`zig build test_all`

# learn resources

https://ziglang.org/learn

Zig Newcomer Programming FAQs https://github.com/ziglang/zig/wiki/Zig-Newcomer-Programming-FAQs

FAQ https://github.com/ziglang/zig/wiki/FAQ
