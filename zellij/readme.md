# Zellij Configuration

## Key Binds

### Global

| key bind         | action                        |
| ---------------- | ----------------------------- |
| `Alt t`          | New Tab                       |
| `Alt [`          | Go To Previous Tab            |
| `Alt ]`          | Go To Next Tab                |
| `Alt }`          | Move tab left                 |
| `Alt {`          | Move tab right                |
| `Alt n`          | New Pane                      |
| `Alt W`          | Close Focus                   |
| `Alt p`          | Toggle Pane Embed Or Floating |
| `Alt o`          | Toggle Floating Panes         |
| `Alt 0`          | Toggle Focus Full screen      |
| `Alt Left`       | Move Focus Or Tab Left        |
| `Alt Right`      | Move Focus Or Tab Right       |
| `Alt Down`       | Move Focus "Down"             |
| `Alt Up`         | Move Focus "Up"               |
| `Alt =`, `Alt +` | Resize "Increase"             |
| `Alt -`          | Resize "Decrease"             |
| `Ctrl l`         | locked mode                   |
| `Alt q`          | Quit                          |

### Switch Mode

| key bind | action                 |
| -------- | ---------------------- |
| `Alt 1`  | Switch to tab mode     |
| `Alt 2`  | Switch to pane mode    |
| `Alt 7`  | Switch to move mode    |
| `Alt 8`  | Switch to resize mode  |
| `Alt 9`  | Switch to session mode |

### Pane Mode

| key bind     | action                                        |
| ------------ | --------------------------------------------- |
| `Esc`        | Normal mode                                   |
| `h`, `Left`  | Move Focus Left                               |
| `l`, `Right` | Move Focus Right                              |
| `j`, `Down`  | Move Focus Down                               |
| `k`, `Up`    | Move Focus Up                                 |
| `p`          | Switch Focus                                  |
| `n`          | New Pane and Normal mode                      |
| `d`          | New Pane and Down & Normal mode               |
| `r`          | New Pane and Right & Normal mode              |
| `d`          | Close Focus & Normal mode                     |
| `f`          | Toggle Focus Full screen & Normal mode        |
| `z`          | Toggle Pane Frames & Normal mode              |
| `w`          | Toggle Floating Panes & Normal mode           |
| `e`          | Toggle Pane Embed Or Floating & Normal mode   |
| `c`          | Switch To Mode Rename Pane, Pane Name Input 0 |

### Tab Mode

| key bind                  | action                 |
| ------------------------- | ---------------------- |
| `Ctrl t`                  | Normal mode            |
| `r`                       | Rename tab             |
| `h`, `Left`, `Up`, `k`    | Go To Previous Tab     |
| `l`, `Right`, `Down`, `j` | Go To Next Tab         |
| `n`                       | New Tab                |
| `n`                       | New Tab name ●         |
| `d`                       | Close Tab              |
| `s`                       | Toggle Active Sync Tab |
| `b`                       | Break Pane             |
| `]`                       | Break Pane Right       |
| `[`                       | Break Pane Left        |
| `1`                       | Go To Tab 1            |
| `2`                       | Go To Tab 2            |
| `3`                       | Go To Tab 3            |
| `4`                       | Go To Tab 4            |
| `5`                       | Go To Tab 5            |
| `6`                       | Go To Tab 6            |
| `7`                       | Go To Tab 7            |
| `8`                       | Go To Tab 8            |
| `9`                       | Go To Tab 9            |
| `Tab`                     | Toggle tab             |

### Move Mode

| key bind    | action              |
| ----------- | ------------------- |
| `Esc`       | Normal mode         |
| `n` `Tab`   | Move Pane           |
| `p`         | Move Pane Backwards |
| `h` `Left`  | Move Pane Left      |
| `j` `Down`  | Move Pane Down      |
| `k` `Up`    | Move Pane Up        |
| `l` `Right` | Move Pane Right     |

### Resize Mode

| key bind     | action                |
| ------------ | --------------------- |
| `Esc`        | Normal mode           |
| `h`, `Left`  | Resize Increase Left  |
| `j`, `Down`  | Resize Increase Down  |
| `k`, `Up`    | Resize Increase Up    |
| `l`, `Right` | Resize Increase Right |
| `H`          | Resize Decrease Left  |
| `J`          | Resize Decrease Down  |
| `K`          | Resize Decrease Up    |
| `L`          | Resize Decrease Right |
| `=`, `+`     | Resize Increase       |
| `-`          | Resize Decrease       |

### Session Mode

| key bind         | action          |
| ---------------- | --------------- |
| `Ctrl o`, `Esc`  | Normal mode     |
| `d`, `Backspace` | Detach          |
| `w` `Space`      | Session manager |
