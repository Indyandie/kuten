# Zellij Configuration

## Keybinds

### Global

| keybind         | action                    |
| --------------- | ------------------------- |
| `Alt n`         | NewPane                   |
| `Alt t`         | NewTab                    |
| `Alt d`         | CloseFocus                |
| `Alt p`         | TogglePaneEmbedOrFloating |
| `Alt o`         | ToggleFloatingPanes       |
| `Alt m`         | ToggleFocusFullscreen     |
| `Alt q`         | Quit                      |
| `Alt Left`      | MoveFocusOrTab "Left"     |
| `Alt Right`     | MoveFocusOrTab "Right"    |
| `Alt Down`      | MoveFocus "Down"          |
| `Alt Up`        | MoveFocus "Up"            |
| `Alt =` `Alt +` | Resize "Increase"         |
| `Alt -`         | Resize "Decrease"         |
| `Alt [`         | GoToPreviousTab           |
| `Alt ]`         | GoToNextTab               |
| `Alt 4`         | filepicker                |

### Mode

| key bind | action                 |
| -------- | ---------------------- |
| `Alt 1`  | Switch to pane mode    |
| `Alt 2`  | Switch to tab mode     |
| `Alt 3`  | Switch to move mode    |
| `Alt 6`  | Switch to scroll mode  |
| `Alt 7`  | Switch to resize mode  |
| `Alt 8`  | Switch to session mode |

### Pane Mode

| key bind    | action                                        |
| ----------- | --------------------------------------------- |
| `Esc`       | SwitchToMode Normal                           |
| `h` `Left`  | MoveFocus Left                                |
| `l` `Right` | MoveFocus Right                               |
| `j` `Down`  | MoveFocus Down                                |
| `k` `Up`    | MoveFocus Up                                  |
| `p`         | SwitchFocus                                   |
| `n`         | NewPane SwitchToMode Normal                   |
| `d`         | NewPane Down SwitchToMode Normal              |
| `r`         | NewPane Right SwitchToMode Normal             |
| `d`         | CloseFocus SwitchToMode Normal                |
| `f`         | ToggleFocusFullscreen SwitchToMode Normal     |
| `z`         | TogglePaneFrames SwitchToMode Normal          |
| `w`         | ToggleFloatingPanes SwitchToMode Normal       |
| `e`         | TogglePaneEmbedOrFloating SwitchToMode Normal |
| `c`         | SwitchToMode RenamePane PaneNameInput 0       |

### Resize Mode

| key bind     | action                |
| ------------ | --------------------- |
| `Esc`        | SwitchToMode Normal   |
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
