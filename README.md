### Extract the generated symbols for exporting

This is a quick way to update the list in case of updating the library API

```
gsc -expansion sdl2 > expansion
sed -n 's/(define sdl2#\([^g][^ ]*\).*/\1/p' expansion > symbols
```
