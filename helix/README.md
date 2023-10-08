# Helix

[def-lang-serv]: https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#typescript

## [Default Language Servers][def-lang-serv]

Get a list of languages with an installed lsp.

```shell
hx --health | grep "✓ [a-z]" | sed -E 's/(^[a-z]+).*/\1, /g' | tr -d '\n'
```

- bash
- c
- cpp
- css
- dot
- html
- javascript
- json
- jsx
- lua
- markdown
- opencl
- python
- rust
- scss
- svelte
- swift
- toml
- tsx
- typescript
- yaml
- zig
- Rust


## Piping selections

Piping certain thing proved challenging,luckaly `xargs` came to the rescue.

```sh
pipe:xargs -I {} echo {} | xargs -I {} grep {} attachment.csv | sed -E 's/(.*),(.*)/\1/g'
```


## Alt Workaround (macos)

Instead of a getting all fancy with the terminal config use the literal character in the helix config. [workaround](https://github.com/helix-editor/helix/issues/2469#issuecomment-1714470713)
