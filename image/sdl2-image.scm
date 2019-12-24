;;!!! SDL_Image2 Foreign Function Interface
;; .author Alvaro Castro-Castilla, 2013-2015

(include (spheres/gambit/ffi c-define-base-macros#))
(include (spheres/gambit/ffi c-define-struct#))
(include (spheres/gambit/ffi types#))
(include "sdl2-prelude.scm")

(c-declare "#include \"SDL_image.h\"")

(c-define-constants
 IMG_INIT_JPG
 IMG_INIT_PNG
 IMG_INIT_TIF)

;;! IMG_GetError
(define IMG_GetError
  (c-lambda () char-string "IMG_GetError"))

;;! IMG_Init
(define IMG_Init
  (c-lambda (int) int "IMG_Init"))

;;! IMG_Load
(define IMG_Load
  (c-lambda (char-string) SDL_Surface* "IMG_Load"))
