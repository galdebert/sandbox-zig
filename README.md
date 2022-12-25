# README

<br>
<!------------------------------------------------------------------------------------------------->

# vscode extensions

## vscode-zig

Zig support for Visual Studio Code.

https://marketplace.visualstudio.com/items?itemName=tiehuis.zig
https://github.com/ziglang/vscode-zig

- syntax highlighting
- basic compiler linting
- automatic formatting

# zls-vscode

Zig Language Server (zls) for VSCode

https://marketplace.visualstudio.com/items?itemName=AugusteRame.zls-vscode
https://github.com/zigtools/zls

zls-vscode is a language client extension for zls, the awesome Zig Language Server.

if the language server does not work out of the box, try:
F1 `>Zig Language Server: Install Server`


<br>
<!------------------------------------------------------------------------------------------------->

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

<br>
<!------------------------------------------------------------------------------------------------->

# format

`zig fmt **/*.zig`

<br>
<!------------------------------------------------------------------------------------------------->

# build, run, test

`zig build run` builds and runs `main.zig`

`zig test src/arrays.zig` builds and runs `src/arrays.zig` but also creates an unwanted `src/zig-cache`

so I use `zig test --cache-dir zig-cache src/structs.zig`

## run all tests

`zig build test_all`

<br>
<!------------------------------------------------------------------------------------------------->

# learn resources

https://ziglang.org/learn

Zig Newcomer Programming FAQs https://github.com/ziglang/zig/wiki/Zig-Newcomer-Programming-FAQs

FAQ https://github.com/ziglang/zig/wiki/FAQ
