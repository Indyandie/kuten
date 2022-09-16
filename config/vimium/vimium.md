# Vimium

# CSS Styling

```css
div > .vimiumHintMarker {
/* linkhint boxes */
   background: #333333 !important;
   border: 1px solid #E3BE23 !important;
   /* padding: 8px; */
   padding: 1vh !important;
}

div > .vimiumHintMarker span {
/* linkhint text */
   color: #FFFFFF !important;
   font-weight: bold !important;
   /* font-size: 18px; */
   font-size: 2.6vh !important;
}

div > .vimiumHintMarker > .matchingCharacter {
   color: #FFDE56 !important;
}

div > .vimiumActiveHintMarker span {
   color: #FFDE56 !important;
}
```

# Vimium Mapping

```vim
map K previousTab
map J nextTab
map yt duplicateTab
map d removeTab
map u restoreTab
map f LinkHints.activateMode
map F LinkHints.activateModeToOpenInNewTab
map 0 firstTab
map $ lastTab
map <c-p> togglePinTab
```

## Navigating the page

### Vertical

map j scrollDown
map k scrollUp
map gg scrollToTop
map G scrollToBottom
map return scrollPageDown
map ? scrollPageUp

> map Scroll scrollFullPageDown
> map Scroll scrollFullPageUp

### Horizontal

map h scrollLeft
map l scrollRight

## Actions

map r reload
map yy copyCurrentUrl
map p openCopiedUrlInCurrentTab
map P openCopiedUrlInNewTab

### Movement

map i enterInsertMode
map v enterVisualMode
map gi focusInput
map f LinkHints.activateMode
map F LinkHints.activateModeToOpenInNewTab
map Open LinkHints.activateModeToOpenInNewForegroundTab
map gf nextFrame
map gF mainFrame

## Using the vomnibar

map o Vomnibar.activate
map O Vomnibar.activateInNewTab
map b Vomnibar.activateBookmarks
map B Vomnibar.activateBookmarksInNewTab
map T Vomnibar.activateTabSelection

## Using find

map / enterFindMode
map n performFind
map N performBackwardsFind

## Navigating history

map H goBack
map L goForward

## Manipulating tabs

map t createTab
map K previousTab
map J nextTab
map ^ visitPreviousTab
map g0 firstTab
map g$ lastTab
map yt duplicateTab
map <c-p> togglePinTab
map <a-m> toggleMuteTab
map d removeTab
map u restoreTab

## Miscellaneous
map ? showHelp
