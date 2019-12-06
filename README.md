# SDL2 bindings for Gambit Scheme

## Usage

Compile by running:

```
gsc sdl2
```

Note: There are cond-expands that enable certain functionality. Check the code for more details.

```
gsc -prelude "(define-cond-expand-feature android)"
```

Using the new `define-library` support in Gambit, import the library as follows:

```scheme
(import (github.com/alvatar/sdl2))
```

You can then call the functions, that map 1-to-1 to the C naming.

Example code:

```scheme
(import (github.com/alvatar/sdl2))

(define (main)
  (if (< (SDL_Init SDL_INIT_VIDEO) 0) (SDL_LogCritical (string-append "Error initializing SDL " (SDL_GetError))))
  (display "OK SDL_Init\n")
  (let* ((window-width 640)
         (window-height 480)
         (window (SDL_CreateWindow "Ultra Awesome CAD"
                                   SDL_WINDOWPOS_UNDEFINED
                                   SDL_WINDOWPOS_UNDEFINED
                                   window-width
                                   window-height
                                   SDL_WINDOW_SHOWN)))
    (if (not window) (SDL_LogCritical (string-append "Error creating window: " (SDL_GetError))))
    ;; Creating an object in memory is done calling <alloc>-<type-name>
    (let ((wmi (alloc-SDL_SysWMinfo)))
      ;; Pointer accessors have the following structure: <type-name>-<field-name>
      (SDL_GetVersion (SDL_SysWMinfo-version wmi))
      (if (not (SDL_GetWindowWMInfo window wmi))
          (SDL_LogCritical (string-append "Error getting Window Manager info: " (SDL_GetError))))

      ;; ---> Here you can use wmi handle for drawing on the window

      (SDL_DestroyWindow window)
      (SDL_Quit)
      (SDL_Log "Exiting..."))))

(main)

```

### Extract the generated symbols for exporting

This is a quick way to update the list in case of updating the library API

```
gsc -expansion sdl2 > expansion
sed -n 's/(define sdl2#\([^g][^ ]*\).*/\1/p' expansion > symbols
```
