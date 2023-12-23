# brew

## Get diff

Compare `main` and `variant`, then list the formulae and casks in `variant` that are not in `main`.

```sh
csvsql --query 'SELECT * FROM "main" LEFT JOIN "variant" USING (name)' variant.csv main.csv | csvgrep -c 7 -r "^$" | csvcut -c name
```

Does the opposite

```sh
csvsql --query 'SELECT * FROM "variant" LEFT JOIN "main" USING (name)' main.csv variant.csv | csvgrep -c 7 -r "^$" | csvcut -c name
```

## Print formalae & casks to install

```sh
csvcut -c name install.csv | tail -n +2 | sd '\n' ' ' | cb copy
```
