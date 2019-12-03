;;!!! SDL_Image2 Foreign Function Interface
;; .author Alvaro Castro-Castilla, 2013-2015

(include (spheres/gambit/ffi c-define-base-macros#))
(include (spheres/gambit/ffi c-define-struct#))
(include (spheres/gambit/ffi types#))
(include "sdl2-prelude.scm")

(c-declare "#include \"SDL_mixer.h\"")

(c-define-constants
 MIX_INIT_FLAC
 MIX_INIT_MOD
 MIX_INIT_MP3
 MIX_INIT_OGG

 MIX_DEFAULT_FREQUENCY
 MIX_DEFAULT_FORMAT
 )

(c-define-type Mix_Chunk (struct "Mix_Chunk"))
(c-define-type Mix_Chunk* (pointer Mix_Chunk))
(c-define-type Mix_Music (struct "Mix_Music"))
(c-define-type Mix_Music* (pointer Mix_Music))

(define Mix_CloseAudio
  (c-lambda () void "Mix_CloseAudio"))

(define Mix_FreeChunk
  (c-lambda (Mix_Chunk*) void "Mix_FreeChunk"))

(define Mix_FadeInMusic
  (c-lambda (Mix_Music* int int) int "Mix_FadeInMusic"))

(define Mix_FadeOutMusic
  (c-lambda (int) int "Mix_FadeOutMusic"))

(define Mix_FreeMusic
  (c-lambda (Mix_Music*) void "Mix_FreeMusic"))

(define Mix_GetError
  (c-lambda () char-string "Mix_GetError"))

(define Mix_HaltMusic
  (c-lambda () int "Mix_HaltMusic"))

(define Mix_Init
  (c-lambda (int) int "Mix_Init"))

(define Mix_LoadMUS
  (c-lambda (char-string) Mix_Music* "Mix_LoadMUS"))

(define Mix_LoadWAV
  (c-lambda (char-string) Mix_Chunk* "Mix_LoadWAV"))

(define Mix_OpenAudio
  (c-lambda (int unsigned-int16 int int) int "Mix_OpenAudio"))

(define Mix_PlayChannel
  (c-lambda (int Mix_Chunk* int) int "Mix_PlayChannel"))

(define Mix_PlayingMusic
  (c-lambda () int "Mix_PlayingMusic"))

(define Mix_PlayMusic
  (c-lambda (Mix_Music* int) int "Mix_PlayMusic"))
