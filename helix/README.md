# Helix

[def-lang-serv]: https://github.com/helix-editor/helix/wiki/How-to-install-the-default-language-servers

## Keys

### Normal

| key               | description                |
| ----------------- | -------------------------- |
| `alt` + `w`       | toggle soft-wrap           |
| `alt` + `/`       | toggle comments            |
| `ctrl` + `y`      | yank to global clipboard   |
| `]` (2x)          | next buffer                |
| `[` (2x)          | previous buffer            |
| `{`               | rotate selection backwards |
| `}`               | rotate selection forwards  |
| `shift` + `left`  | select mode                |
| `shift` + `right` | select mode                |

#### Space Mode

| key      | description                           |
| -------- | ------------------------------------- |
| `d`      | close buffer                          |
| `D`      | force close buffer                    |
| `q`      | quit helix                            |
| `Q`      | force quit helix                      |
| `s`      | write changes to disk                 |
| `S`      | force write changes to disk           |
| `v`, `o` | open file in vertical split           |
| `v`, `n` | open scratch buffer in vertical split |
| `v`, `q` | close vertical split buffer           |
| `H`      | jump to left split                    |
| `L`      | jump to right split                   |
| `space`  | add newline below                     |
| `up`     | add newline above                     |

#### Go To Mode

| key | description           |
| --- | --------------------- |
| `j` | go to next change     |
| `k` | go to previous change |

#### Comma Mode

| key      | description                                         |
| -------- | --------------------------------------------------- |
| `,`      | keep primary selection                              |
| `/`      | toggle comments                                     |
| `p`      | paste contents from the clipboard after the cursor  |
| `P`      | paste contents from the clipboard before the cursor |
| `r`      | reload buffer                                       |
| `R`      | reload all buffers                                  |
| `c`, `r` | reload config                                       |
| `f`      | format                                              |

### Insert

| key      | description      |
| -------- | ---------------- |
| `j`, `k` | exit insert mode |

---

## [Default Language Servers][def-lang-serv]

- [simple-completion-language-server](https://github.com/estin/simple-completion-language-server)
- [languages.toml](https://github.com/helix-editor/helix/blob/master/languages.toml)

Get a list of languages with an installed LSP.

```shell
hx --health
```

### LSP List

| name                            | lang                     | type                    | package manager |
| ------------------------------- | ------------------------ | ----------------------- | --------------- |
| @astrojs/language-server        | astro                    | LSP                     | npm             |
| bash-language-server            | bash                     | LSP                     | npm             |
| dot-language-server             | dot                      | LSP                     | npm             |
| svelte-language-server          | svelte                   | LSP                     | npm             |
| typescript-svelte-plugin        | svelte                   | LSP                     | npm             |
| typescript                      | typescript               | LSP                     | npm             |
| typescript-svelte-plugin        | typescript               | LSP                     | npm             |
| vscode-langservers-extracted    | ?                        | LSP                     | npm             |
| ansible/ansible-language-server | ansible                  | LSP                     | npm             |
| emmet-ls                        | html                     | LSP, snippet            | npm             |
| vscode-html-languageserver-bin  | html                     | LSP                     | npm             |
| prettier                        | css                      | LSP                     | npm             |
| deno                            | markdown, html, js, json | lsp, formatter, snippet | deno            |
| marksman                        | markdown                 | LSP                     | brew, cargo     |
| lua-language-server             | lua                      | LSP                     | brew            |
| python-lsp-server               | python                   | LSP                     | brew            |
| black                           | python                   | formatter               | brew, pip       |
| yaml-language-server            | yaml                     | LSP                     | brew            |
| ansible-lint                    | yaml                     | LSP                     | brew            |
| sql-formatter                   | sql                      | formatter               | NPM             |
| sqls                            | sql                      | LSP                     | NPM             |
| taplo                           | toml                     | LSP                     | cargo           |
| nixpkgs-fmt                     | nix                      | fomatter                | nix             |

### Deno LSP

Deno provides a LSP via the `deno lsp` command. It supports JavaScript and TypeScript.

```sh
npm i -g @astrojs/language-server bash-language-server dot-language-server svelte-language-server typescript-language-server typescript vscode-langservers-extracted @ansible/ansible-language-server typescript-svelte-plugin sql-formatter emmet-ls
```

### svelte

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

### brew LSP

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

## Alt Workaround (macOS)

Instead of a getting all fancy with the terminal config use the literal character in the helix config. [workaround](https://github.com/helix-editor/helix/issues/2469#issuecomment-1714470713)

## Links

[language.toml](https://github.com/helix-editor/helix/blob/090ed97e0045bfad1e5bff8b96c61707b996b85a/languages.toml#L609)

## To Do

- [ ] Update from [release 24.03](https://helix-editor.com/news/release-24-03-highlights/)
