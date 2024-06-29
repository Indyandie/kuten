# Z Shell

- [zsh config](./.zshrc)
- [alias](./alias.zsh)
- [syntax highlighting](./zsh/syntax-highlighting.zsh)

---

## [eza](https://github.com/eza-community/eza)

`ls` replacement

| styling       | description                 |
| ------------- | --------------------------- |
| `di=35;4;1`   | directories                 |
| `ex=33;1`     | exec files                  |
| `fi=37;3`     | regular files               |
| `lp=37;3`     | regular files               |
| `ln=31;1;3;4` | regular files               |
| `*.md=32;3`   | markdown files              |
| `ur=32;3`     | usere read                  |
| `uw=33`       | user write                  |
| `ux=31;1;3`   | exec regular files          |
| `ue=91;1;3`   | exec other files            |
| `gr=32;3`     | group read                  |
| `gw=33`       | group write                 |
| `gx=31;1;3`   | group exec                  |
| `tr=32;3`     | other read                  |
| `tw=33`       | other write                 |
| `tx=31;1;3`   | other exec                  |
| `da=90`       | date                        |
| `nb=37;2;3`   | number of file size (< 1KB) |
| `nk=37;2`     | number of file size (< 1MB) |
| `nm=36;1`     | number of file size (< 1GB) |
| `ng=31;1;3`   | number of file size (< 1GB) |
| `im=95;3`     | image file                  |
| `vi=95;3`     | image file                  |

## Codes

### `LS_COLORS`

| code | name                    |
| ---- | ----------------------- |
| `di` | directories             |
| `ex` | executable files        |
| `fi` | regular files           |
| `pi` | named pipes             |
| `so` | sockets                 |
| `bd` | block devices           |
| `cd` | character devices       |
| `ln` | symlinks                |
| `or` | symlinks with no target |

### `EZA_COLORS`

| code | description                                                                            |
| ---- | -------------------------------------------------------------------------------------- |
| oc   | the permissions displayed as octal                                                     |
| ur   | the user-read permission bit                                                           |
| uw   | the user-write permission bit                                                          |
| ux   | the user-execute permission bit for regular files                                      |
| ue   | the user-execute for other file kinds                                                  |
| gr   | the group-read permission bit                                                          |
| gw   | the group-write permission bit                                                         |
| gx   | the group-execute permission bit                                                       |
| tr   | the others-read permission bit                                                         |
| tw   | the others-write permission bit                                                        |
| tx   | the others-execute permission bit                                                      |
| su   | setuid, setgid, and sticky permission bits for files                                   |
| sf   | setuid, setgid, and sticky for other file kinds                                        |
| xa   | the extended attribute indicator                                                       |
| sn   | the numbers of a file’s size (sets nb, nk, nm, ng and nt)                              |
| nb   | the numbers of a file’s size if it is lower than 1 KB/Kib                              |
| nk   | the numbers of a file’s size if it is between 1 KB/KiB and 1 MB/MiB                    |
| nm   | the numbers of a file’s size if it is between 1 MB/MiB and 1 GB/GiB                    |
| ng   | the numbers of a file’s size if it is between 1 GB/GiB and 1 TB/TiB                    |
| nt   | the numbers of a file’s size if it is 1 TB/TiB or higher                               |
| sb   | the units of a file’s size (sets ub, uk, um, ug and ut)                                |
| ub   | the units of a file’s size if it is lower than 1 KB/Kib                                |
| uk   | the units of a file’s size if it is between 1 KB/KiB and 1 MB/MiB                      |
| um   | the units of a file’s size if it is between 1 MB/MiB and 1 GB/GiB                      |
| ug   | the units of a file’s size if it is between 1 GB/GiB and 1 TB/TiB                      |
| ut   | the units of a file’s size if it is 1 TB/TiB or higher                                 |
| df   | a device’s major ID                                                                    |
| ds   | a device’s minor ID                                                                    |
| uu   | a user that’s you                                                                      |
| uR   | a user that's root                                                                     |
| un   | a user that’s someone else                                                             |
| gu   | a group that you belong to                                                             |
| gR   | a group related to root                                                                |
| gn   | a group you aren’t a member of                                                         |
| lc   | a number of hard links                                                                 |
| lm   | a number of hard links for a regular file with at least two                            |
| ga   | a new flag in Git                                                                      |
| gm   | a modified flag in Git                                                                 |
| gd   | a deleted flag in Git                                                                  |
| gv   | a renamed flag in Git                                                                  |
| gt   | a modified metadata flag in Git                                                        |
| gi   | an ignored flag in Git                                                                 |
| gc   | a conflicted flag in Git                                                               |
| Gm   | main branch of repo                                                                    |
| Go   | other branch of repo                                                                   |
| Gc   | clean branch of repo                                                                   |
| Gd   | dirty branch of repo                                                                   |
| xx   | “punctuation”, including many background UI elements                                   |
| da   | a file’s date                                                                          |
| in   | a file’s inode number                                                                  |
| bl   | a file’s number of blocks                                                              |
| hd   | the header row of a table                                                              |
| lp   | the path of a symlink                                                                  |
| cc   | an escaped character in a filename                                                     |
| bO   | the overlay style for broken symlink paths                                             |
| sp   | special (not file, dir, mount, exec, pipe, socket, block device, char device, or link) |
| mp   | a mount point                                                                          |
| im   | a regular file that is an image                                                        |
| vi   | a regular file that is a video                                                         |
| mu   | a regular file that is lossy music                                                     |
| lo   | a regular file that is lossless music                                                  |
| cr   | a regular file that is related to cryptography (ex                                     |
| do   | a regular file that is a document (ex                                                  |
| co   | a regular file that is compressed                                                      |
| tm   | a regular file that is temporary (ex                                                   |
| cm   | a regular file that is a compilation artifact (ex                                      |
| bu   | a regular file that is used to build a project (ex                                     |
| sc   | a regular file that is source code                                                     |
| Sn   | No security context on a file                                                          |
| Su   | SELinux user                                                                           |
| Sr   | SELinux role                                                                           |
| St   | SELinux type                                                                           |
| Sl   | SELinux level                                                                          |
| ff   | BSD file flags                                                                         |

## Styles

| code | style              |
| ---- | ------------------ |
| `1`  | bold               |
| `2`  | dimmed             |
| `3`  | italic             |
| `4`  | underline          |
| `31` | red text           |
| `32` | green text         |
| `33` | yellow text        |
| `34` | blue text          |
| `35` | purple text        |
| `36` | cyan text          |
| `37` | white text         |
| `90` | dark gray text     |
| `91` | bright red text    |
| `92` | bright green text  |
| `93` | bright yellow text |
| `94` | bright blue text   |
| `95` | bright purple text |
| `96` | bright cyan text   |
| `97` | bright text        |
