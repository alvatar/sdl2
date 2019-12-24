;;!!! SDL_TTF Foreign Function Interface
;; .author Alvaro Castro-Castilla, 2013-2019

(include "../ffi-macros/c-define-base-macros#.scm")
(include "../ffi-macros/types#.scm")
(include "../sdl2-prelude.scm")

(c-declare "#include \"SDL_ttf.h\"")

(c-define-type TTF_Font (struct "TTF_Font"))
(c-define-type TTF_Font* (pointer TTF_Font))

(define TTF_GetError
  (c-lambda () char-string "TTF_GetError"))

(define TTF_Init
  (c-lambda () int "TTF_Init"))

(define TTF_Quit
  (c-lambda () void "TTF_Quit"))

(define TTF_OpenFont
  (c-lambda (char-string int) TTF_Font* "TTF_OpenFont"))

(define TTF_CloseFont
  (c-lambda (TTF_Font*) void "TTF_CloseFont"))

(define TTF_RenderText_Blended
  (c-lambda (TTF_Font* char-string SDL_Color) SDL_Surface* "TTF_RenderText_Blended"))

(define TTF_RenderText_Solid
  (c-lambda (TTF_Font* char-string SDL_Color) SDL_Surface* "TTF_RenderText_Solid"))

(define TTF_RenderUTF8_Blended
  (c-lambda (TTF_Font* char-string SDL_Color) SDL_Surface* "TTF_RenderUTF8_Blended"))

(define TTF_RenderUTF8_Solid
  (c-lambda (TTF_Font* char-string SDL_Color) SDL_Surface* "TTF_RenderUTF8_Solid"))
