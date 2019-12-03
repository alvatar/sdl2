;;!!! SDL_Image2 Foreign Function Interface
;; .author Alvaro Castro-Castilla, 2013-2015

(include (spheres/gambit/ffi c-define-base-macros#))
(include (spheres/gambit/ffi c-define-struct#))
(include (spheres/gambit/ffi types#))
(include "sdl2-prelude.scm")

(c-declare "#include \"SDL_ttf.h\"")

(c-define-type TTF_Font (struct "TTF_Font"))
(c-define-type TTF_Font* (pointer TTF_Font))

(define TTF_GetError
  (c-lambda () char-string "TTF_GetError"))

(define TTF_Init
  (c-lambda () int "TTF_Init"))

(define TTF_OpenFont
  (c-lambda (char-string int) TTF_Font* "TTF_OpenFont"))

(define TTF_RenderText_Blended
  (c-lambda (TTF_Font* char-string SDL_Color) SDL_Surface* "TTF_RenderText_Blended"))

(define TTF_RenderText_Solid
  (c-lambda (TTF_Font* char-string SDL_Color) SDL_Surface* "TTF_RenderText_Solid"))

(define TTF_RenderUTF8_Blended
  (c-lambda (TTF_Font* char-string SDL_Color) SDL_Surface* "TTF_RenderUTF8_Blended"))

(define TTF_RenderUTF8_Solid
  (c-lambda (TTF_Font* char-string SDL_Color) SDL_Surface* "TTF_RenderUTF8_Solid"))
