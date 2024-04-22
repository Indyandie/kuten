# Helix

[def-lang-serv]: https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers

## [Default Language Servers][def-lang-serv]

- [simple-completion-language-server](https://github.com/estin/simple-completion-language-server)

Get a list of languages with an installed lsp.

```shell
hx --health | rg "✓ [a-z]" | sd '(^[a-z]+).*' '$1, ' | tr -d '\n'

hx --health | rg "✓ [a-z]" | sd '(^[a-z\-]+).*' '$1'
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

### npm lsp

- @astrojs/language-server
- bash-language-server
- dot-language-server
- svelte-language-server
- typescript-svelte-plugin
- typescript-language-server
- typescript
- vscode-langservers-extracted
- ansible/ansible-language-server

```sh
npm i -g @astrojs/language-server bash-language-server dot-language-server svelte-language-server typescript-language-server typescript vscode-langservers-extracted @ansible/ansible-language-server typescript-svelte-plugin
```

#### svelte

Add to each project's `[js|ts]config.json`

```json
{
    "compilerOptions": {
        ...
        "plugins": [{
            "name": "typescript-svelte-plugin"
        }]
    }
}
```

### brew lsp

- marksman
- lua-language-server
- python-lsp-server
- yaml-language-server
- ansible-lint

```sh
brew install marksman lua-language-server python-lsp-server yaml-language-server ansible-lint
```

### cargo

- [taplo (toml)](https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers#toml)

## Piping selections

Piping certain things proved challenging, luckily `xargs` came to the rescue.

```sh
pipe:xargs -I {} echo {} | xargs -I {} grep {} attachment.csv | sed -E 's/(.*),(.*)/\1/g'
```

## Alt Workaround (macos)

Instead of a getting all fancy with the terminal config use the literal
character in the helix config.
[workaround](https://github.com/helix-editor/helix/issues/2469#issuecomment-1714470713)

## Links

[language.toml](https://github.com/helix-editor/helix/blob/090ed97e0045bfad1e5bff8b96c61707b996b85a/languages.toml#L609)

## TODO

- [ ] Update from
      [release 24.03](https://helix-editor.com/news/release-24-03-highlights/)
