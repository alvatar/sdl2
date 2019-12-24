(define-library (github.com/alvatar/sdl2 ttf)

  (import gambit)

  (pkg-config "sdl2_ttf")

  (export
   TTF_GetError
   TTF_Init
   TTF_Quit
   TTF_OpenFont
   TTF_CloseFont
   TTF_RenderText_Blended
   TTF_RenderText_Solid
   TTF_RenderUTF8_Blended
   TTF_RenderUTF8_Sold
   )

  (begin

    (include "ttf.scm")))
