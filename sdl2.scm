;;!!! SDL2 Foreign Function Interface
;; .author Alvaro Castro-Castilla, 2015-2019

(include "c-define-base-macros#.scm")
(include "sdl2-prelude.scm")

(declare (extended-bindings)) ;; ##fx+ is bound to fixnum addition, etc
(declare (not safe))          ;; claim code has no type errors
(declare (block))             ;; claim no global is assigned (such as hamt?)

(c-define-constants
 SDL_INIT_TIMER
 SDL_INIT_AUDIO
 SDL_INIT_VIDEO
 SDL_INIT_JOYSTICK
 SDL_INIT_HAPTIC
 SDL_INIT_GAMECONTROLLER
 SDL_INIT_EVENTS
 SDL_INIT_NOPARACHUTE
 SDL_INIT_EVERYTHING
 )

(c-define-constants
 SDL_AUDIO_MASK_BITSIZE
 SDL_AUDIO_MASK_DATATYPE
 SDL_AUDIO_MASK_ENDIAN
 SDL_AUDIO_MASK_SIGNED
 )

(define SDL_AUDIO_BITSIZE
  (c-lambda (SDL_AudioFormat) SDL_AudioFormat "___return(SDL_AUDIO_BITSIZE(___arg1));"))
(define SDL_AUDIO_ISFLOAT
  (c-lambda (SDL_AudioFormat) SDL_AudioFormat "___return(SDL_AUDIO_ISFLOAT(___arg1));"))
(define SDL_AUDIO_ISBIGENDIAN
  (c-lambda (SDL_AudioFormat) SDL_AudioFormat "___return(SDL_AUDIO_ISBIGENDIAN(___arg1));"))
(define SDL_AUDIO_ISSIGNED
  (c-lambda (SDL_AudioFormat) SDL_AudioFormat "___return(SDL_AUDIO_ISSIGNED(___arg1));"))
(define SDL_AUDIO_ISINT
  (c-lambda (SDL_AudioFormat) SDL_AudioFormat "___return(SDL_AUDIO_ISINT(___arg1));"))
(define SDL_AUDIO_ISLITTLEENDIAN
  (c-lambda (SDL_AudioFormat) SDL_AudioFormat "___return(SDL_AUDIO_ISLITTLEENDIAN(___arg1));"))
(define SDL_AUDIO_ISUNSIGNED
  (c-lambda (SDL_AudioFormat) SDL_AudioFormat "___return(SDL_AUDIO_ISUNSIGNED(___arg1));"))

(c-define-constants
 AUDIO_U8
 AUDIO_S8
 AUDIO_U16LSB
 AUDIO_S16LSB
 AUDIO_U16MSB
 AUDIO_S16MSB
 AUDIO_U16
 AUDIO_S16
 AUDIO_S32LSB
 AUDIO_S32MSB
 AUDIO_S32
 AUDIO_F32LSB
 AUDIO_F32MSB
 AUDIO_F32
 AUDIO_U16SYS
 AUDIO_S16SYS
 AUDIO_S32SYS
 AUDIO_F32SYS
 )

(c-define-constants
 SDL_AUDIO_STOPPED
 SDL_AUDIO_PLAYING
 SDL_AUDIO_PAUSED
 )

(c-define-constants
 SDL_BLENDMODE_NONE
 SDL_BLENDMODE_BLEND
 SDL_BLENDMODE_ADD
 SDL_BLENDMODE_MOD
 )

(c-define-constants
 SDL_QUIT
 SDL_APP_TERMINATING
 SDL_APP_LOWMEMORY
 SDL_APP_WILLENTERBACKGROUND
 SDL_APP_DIDENTERBACKGROUND
 SDL_APP_WILLENTERFOREGROUND
 SDL_APP_DIDENTERFOREGROUND
 SDL_WINDOWEVENT
 SDL_SYSWMEVENT
 SDL_KEYDOWN
 SDL_KEYUP
 SDL_TEXTEDITING
 SDL_TEXTINPUT
 SDL_MOUSEMOTION
 SDL_MOUSEBUTTONDOWN
 SDL_MOUSEBUTTONUP
 SDL_MOUSEWHEEL
 SDL_JOYAXISMOTION
 SDL_JOYBALLMOTION
 SDL_JOYHATMOTION
 SDL_JOYBUTTONDOWN
 SDL_JOYBUTTONUP
 SDL_JOYDEVICEADDED
 SDL_JOYDEVICEREMOVED
 SDL_CONTROLLERAXISMOTION
 SDL_CONTROLLERBUTTONDOWN
 SDL_CONTROLLERBUTTONUP
 SDL_CONTROLLERDEVICEADDED
 SDL_CONTROLLERDEVICEREMOVED
 SDL_CONTROLLERDEVICEREMAPPED
 SDL_FINGERDOWN
 SDL_FINGERUP
 SDL_FINGERMOTION
 SDL_DOLLARGESTURE
 SDL_DOLLARRECORD
 SDL_MULTIGESTURE
 SDL_CLIPBOARDUPDATE
 SDL_DROPFILE
 SDL_USEREVENT
 SDL_LASTEVENT
 )

(c-define-constants
 SDL_GL_RED_SIZE
 SDL_GL_GREEN_SIZE
 SDL_GL_BLUE_SIZE
 SDL_GL_ALPHA_SIZE
 SDL_GL_BUFFER_SIZE
 SDL_GL_DOUBLEBUFFER
 SDL_GL_DEPTH_SIZE
 SDL_GL_STENCIL_SIZE
 SDL_GL_ACCUM_RED_SIZE
 SDL_GL_ACCUM_GREEN_SIZE
 SDL_GL_ACCUM_BLUE_SIZE
 SDL_GL_ACCUM_ALPHA_SIZE
 SDL_GL_STEREO
 SDL_GL_MULTISAMPLEBUFFERS
 SDL_GL_MULTISAMPLESAMPLES
 SDL_GL_ACCELERATED_VISUAL
 SDL_GL_RETAINED_BACKING
 SDL_GL_CONTEXT_MAJOR_VERSION
 SDL_GL_CONTEXT_MINOR_VERSION
 SDL_GL_CONTEXT_FLAGS
 SDL_GL_CONTEXT_PROFILE_MASK
 SDL_GL_SHARE_WITH_CURRENT_CONTEXT
 SDL_GL_FRAMEBUFFER_SRGB_CAPABLE
 )

(c-define-constants
 SDL_GL_CONTEXT_DEBUG_FLAG
 SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG
 SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG
 SDL_GL_CONTEXT_RESET_ISOLATION_FLAG
 )

(c-define-constants
 SDL_GL_CONTEXT_PROFILE_CORE
 SDL_GL_CONTEXT_PROFILE_COMPATIBILITY
 SDL_GL_CONTEXT_PROFILE_ES
 )

(c-define-constants
 SDL_HINT_DEFAULT
 SDL_HINT_NORMAL
 SDL_HINT_OVERRIDE
 )

(define SDL_HINT_ACCELEROMETER_AS_JOYSTICK "SDL_ACCELEROMETER_AS_JOYSTICK")
(define SDL_HINT_FRAMEBUFFER_ACCELERATION "SDL_FRAMEBUFFER_ACCELERATION")
(define SDL_HINT_GAMECONTROLLERCONFIG "SDL_GAMECONTROLLERCONFIG")
(define SDL_HINT_GRAB_KEYBOARD "SDL_GRAB_KEYBOARD")
(define SDL_HINT_IDLE_TIMER_DISABLED "SDL_IDLE_TIMER_DISABLED")
(define SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS "SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS")
(define SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK "SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK")
(define SDL_HINT_MOUSE_RELATIVE_MODE_WARP "SDL_MOUSE_RELATIVE_MODE_WARP")
(define SDL_HINT_ORIENTATIONS "SDL_ORIENTATIONS")
(define SDL_HINT_RENDER_DIRECT3D_THREADSAFE "SDL_RENDER_DIRECT3D_THREADSAFE")
(define SDL_HINT_RENDER_DRIVER "SDL_RENDER_DRIVER")
(define SDL_HINT_RENDER_OPENGL_SHADERS "SDL_RENDER_OPENGL_SHADERS")
(define SDL_HINT_RENDER_SCALE_QUALITY "SDL_RENDER_SCALE_QUALITY")
(define SDL_HINT_RENDER_VSYNC "SDL_RENDER_VSYNC")
(define SDL_HINT_TIMER_RESOLUTION "SDL_TIMER_RESOLUTION")
(define SDL_HINT_VIDEO_ALLOW_SCREENSAVER "SDL_VIDEO_ALLOW_SCREENSAVER")
(define SDL_HINT_VIDEO_HIGHDPI_DISABLED "SDL_VIDEO_HIGHDPI_DISABLED")
(define SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES "SDL_VIDEO_MAC_FULLSCREEN_SPACES")
(define SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS "SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS")
(define SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT "SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT")
(define SDL_HINT_VIDEO_WIN_D3DCOMPILER "SDL_VIDEO_WIN_D3DCOMPILER")
(define SDL_HINT_VIDEO_X11_XINERAMA "SDL_VIDEO_X11_XINERAMA")
(define SDL_HINT_VIDEO_X11_XRANDR "SDL_VIDEO_X11_XRANDR")
(define SDL_HINT_VIDEO_X11_XVIDMODE "SDL_VIDEO_X11_XVIDMODE")
(define SDL_HINT_XINPUT_ENABLED "SDL_XINPUT_ENABLED")

(c-define-constants
 SDLK_UNKNOWN
 SDLK_RETURN
 SDLK_ESCAPE
 SDLK_BACKSPACE
 SDLK_TAB
 SDLK_SPACE
 SDLK_EXCLAIM
 SDLK_QUOTEDBL
 SDLK_HASH
 SDLK_PERCENT
 SDLK_DOLLAR
 SDLK_AMPERSAND
 SDLK_QUOTE
 SDLK_LEFTPAREN
 SDLK_RIGHTPAREN
 SDLK_ASTERISK
 SDLK_PLUS
 SDLK_COMMA
 SDLK_MINUS
 SDLK_PERIOD
 SDLK_SLASH
 SDLK_0
 SDLK_1
 SDLK_2
 SDLK_3
 SDLK_4
 SDLK_5
 SDLK_6
 SDLK_7
 SDLK_8
 SDLK_9
 SDLK_COLON
 SDLK_SEMICOLON
 SDLK_LESS
 SDLK_EQUALS
 SDLK_GREATER
 SDLK_QUESTION
 SDLK_AT
 SDLK_LEFTBRACKET
 SDLK_BACKSLASH
 SDLK_RIGHTBRACKET
 SDLK_CARET
 SDLK_UNDERSCORE
 SDLK_BACKQUOTE
 SDLK_a
 SDLK_b
 SDLK_c
 SDLK_d
 SDLK_e
 SDLK_f
 SDLK_g
 SDLK_h
 SDLK_i
 SDLK_j
 SDLK_k
 SDLK_l
 SDLK_m
 SDLK_n
 SDLK_o
 SDLK_p
 SDLK_q
 SDLK_r
 SDLK_s
 SDLK_t
 SDLK_u
 SDLK_v
 SDLK_w
 SDLK_x
 SDLK_y
 SDLK_z
 SDLK_CAPSLOCK
 SDLK_F1
 SDLK_F2
 SDLK_F3
 SDLK_F4
 SDLK_F5
 SDLK_F6
 SDLK_F7
 SDLK_F8
 SDLK_F9
 SDLK_F10
 SDLK_F11
 SDLK_F12
 SDLK_PRINTSCREEN
 SDLK_SCROLLLOCK
 SDLK_PAUSE
 SDLK_INSERT
 SDLK_HOME
 SDLK_PAGEUP
 SDLK_DELETE
 SDLK_END
 SDLK_PAGEDOWN
 SDLK_RIGHT
 SDLK_LEFT
 SDLK_DOWN
 SDLK_UP
 SDLK_NUMLOCKCLEAR
 SDLK_KP_DIVIDE
 SDLK_KP_MULTIPLY
 SDLK_KP_MINUS
 SDLK_KP_PLUS
 SDLK_KP_ENTER
 SDLK_KP_1
 SDLK_KP_2
 SDLK_KP_3
 SDLK_KP_4
 SDLK_KP_5
 SDLK_KP_6
 SDLK_KP_7
 SDLK_KP_8
 SDLK_KP_9
 SDLK_KP_0
 SDLK_KP_PERIOD
 SDLK_APPLICATION
 SDLK_POWER
 SDLK_KP_EQUALS
 SDLK_F13
 SDLK_F14
 SDLK_F15
 SDLK_F16
 SDLK_F17
 SDLK_F18
 SDLK_F19
 SDLK_F20
 SDLK_F21
 SDLK_F22
 SDLK_F23
 SDLK_F24
 SDLK_EXECUTE
 SDLK_HELP
 SDLK_MENU
 SDLK_SELECT
 SDLK_STOP
 SDLK_AGAIN
 SDLK_UNDO
 SDLK_CUT
 SDLK_COPY
 SDLK_PASTE
 SDLK_FIND
 SDLK_MUTE
 SDLK_VOLUMEUP
 SDLK_VOLUMEDOWN
 SDLK_KP_COMMA
 SDLK_KP_EQUALSAS400
 SDLK_ALTERASE
 SDLK_SYSREQ
 SDLK_CANCEL
 SDLK_CLEAR
 SDLK_PRIOR
 SDLK_RETURN2
 SDLK_SEPARATOR
 SDLK_OUT
 SDLK_OPER
 SDLK_CLEARAGAIN
 SDLK_CRSEL
 SDLK_EXSEL
 SDLK_KP_00
 SDLK_KP_000
 SDLK_THOUSANDSSEPARATOR
 SDLK_DECIMALSEPARATOR
 SDLK_CURRENCYUNIT
 SDLK_CURRENCYSUBUNIT
 SDLK_KP_LEFTPAREN
 SDLK_KP_RIGHTPAREN
 SDLK_KP_LEFTBRACE
 SDLK_KP_RIGHTBRACE
 SDLK_KP_TAB
 SDLK_KP_BACKSPACE
 SDLK_KP_A
 SDLK_KP_B
 SDLK_KP_C
 SDLK_KP_D
 SDLK_KP_E
 SDLK_KP_F
 SDLK_KP_XOR
 SDLK_KP_POWER
 SDLK_KP_PERCENT
 SDLK_KP_LESS
 SDLK_KP_GREATER
 SDLK_KP_AMPERSAND
 SDLK_KP_DBLAMPERSAND
 SDLK_KP_VERTICALBAR
 SDLK_KP_DBLVERTICALBAR
 SDLK_KP_COLON
 SDLK_KP_HASH
 SDLK_KP_SPACE
 SDLK_KP_AT
 SDLK_KP_EXCLAM
 SDLK_KP_MEMSTORE
 SDLK_KP_MEMRECALL
 SDLK_KP_MEMCLEAR
 SDLK_KP_MEMADD
 SDLK_KP_MEMSUBTRACT
 SDLK_KP_MEMMULTIPLY
 SDLK_KP_MEMDIVIDE
 SDLK_KP_PLUSMINUS
 SDLK_KP_CLEAR
 SDLK_KP_CLEARENTRY
 SDLK_KP_BINARY
 SDLK_KP_OCTAL
 SDLK_KP_DECIMAL
 SDLK_KP_HEXADECIMAL
 SDLK_LCTRL
 SDLK_LSHIFT
 SDLK_LALT
 SDLK_LGUI
 SDLK_RCTRL
 SDLK_RSHIFT
 SDLK_RALT
 SDLK_RGUI
 SDLK_MODE
 SDLK_AUDIONEXT
 SDLK_AUDIOPREV
 SDLK_AUDIOSTOP
 SDLK_AUDIOPLAY
 SDLK_AUDIOMUTE
 SDLK_MEDIASELECT
 SDLK_WWW
 SDLK_MAIL
 SDLK_CALCULATOR
 SDLK_COMPUTER
 SDLK_AC_SEARCH
 SDLK_AC_HOME
 SDLK_AC_BACK
 SDLK_AC_FORWARD
 SDLK_AC_STOP
 SDLK_AC_REFRESH
 SDLK_AC_BOOKMARKS
 SDLK_BRIGHTNESSDOWN
 SDLK_BRIGHTNESSUP
 SDLK_DISPLAYSWITCH
 SDLK_KBDILLUMTOGGLE
 SDLK_KBDILLUMDOWN
 SDLK_KBDILLUMUP
 SDLK_EJECT
 SDLK_SLEEP
 )

(c-define-constants
 KMOD_NONE
 KMOD_LSHIFT
 KMOD_RSHIFT
 KMOD_LCTRL
 KMOD_RCTRL
 KMOD_LALT
 KMOD_RALT
 KMOD_LGUI
 KMOD_RGUI
 KMOD_NUM
 KMOD_CAPS
 KMOD_MODE
 KMOD_CTRL
 KMOD_SHIFT
 KMOD_ALT
 KMOD_GUI
 )

(c-define-constants
 SDL_SCANCODE_UNKNOWN
 SDL_SCANCODE_A
 SDL_SCANCODE_B
 SDL_SCANCODE_C
 SDL_SCANCODE_D
 SDL_SCANCODE_E
 SDL_SCANCODE_F
 SDL_SCANCODE_G
 SDL_SCANCODE_H
 SDL_SCANCODE_I
 SDL_SCANCODE_J
 SDL_SCANCODE_K
 SDL_SCANCODE_L
 SDL_SCANCODE_M
 SDL_SCANCODE_N
 SDL_SCANCODE_O
 SDL_SCANCODE_P
 SDL_SCANCODE_Q
 SDL_SCANCODE_R
 SDL_SCANCODE_S
 SDL_SCANCODE_T
 SDL_SCANCODE_U
 SDL_SCANCODE_V
 SDL_SCANCODE_W
 SDL_SCANCODE_X
 SDL_SCANCODE_Y
 SDL_SCANCODE_Z
 SDL_SCANCODE_1
 SDL_SCANCODE_2
 SDL_SCANCODE_3
 SDL_SCANCODE_4
 SDL_SCANCODE_5
 SDL_SCANCODE_6
 SDL_SCANCODE_7
 SDL_SCANCODE_8
 SDL_SCANCODE_9
 SDL_SCANCODE_0
 SDL_SCANCODE_RETURN
 SDL_SCANCODE_ESCAPE
 SDL_SCANCODE_BACKSPACE
 SDL_SCANCODE_TAB
 SDL_SCANCODE_SPACE
 SDL_SCANCODE_MINUS
 SDL_SCANCODE_EQUALS
 SDL_SCANCODE_LEFTBRACKET
 SDL_SCANCODE_RIGHTBRACKET
 SDL_SCANCODE_BACKSLASH
 SDL_SCANCODE_NONUSHASH
 SDL_SCANCODE_SEMICOLON
 SDL_SCANCODE_APOSTROPHE
 SDL_SCANCODE_GRAVE
 SDL_SCANCODE_COMMA
 SDL_SCANCODE_PERIOD
 SDL_SCANCODE_SLASH
 SDL_SCANCODE_CAPSLOCK
 SDL_SCANCODE_F1
 SDL_SCANCODE_F2
 SDL_SCANCODE_F3
 SDL_SCANCODE_F4
 SDL_SCANCODE_F5
 SDL_SCANCODE_F6
 SDL_SCANCODE_F7
 SDL_SCANCODE_F8
 SDL_SCANCODE_F9
 SDL_SCANCODE_F10
 SDL_SCANCODE_F11
 SDL_SCANCODE_F12
 SDL_SCANCODE_PRINTSCREEN
 SDL_SCANCODE_SCROLLLOCK
 SDL_SCANCODE_PAUSE
 SDL_SCANCODE_INSERT
 SDL_SCANCODE_HOME
 SDL_SCANCODE_PAGEUP
 SDL_SCANCODE_DELETE
 SDL_SCANCODE_END
 SDL_SCANCODE_PAGEDOWN
 SDL_SCANCODE_RIGHT
 SDL_SCANCODE_LEFT
 SDL_SCANCODE_DOWN
 SDL_SCANCODE_UP
 SDL_SCANCODE_NUMLOCKCLEAR
 SDL_SCANCODE_KP_DIVIDE
 SDL_SCANCODE_KP_MULTIPLY
 SDL_SCANCODE_KP_MINUS
 SDL_SCANCODE_KP_PLUS
 SDL_SCANCODE_KP_ENTER
 SDL_SCANCODE_KP_1
 SDL_SCANCODE_KP_2
 SDL_SCANCODE_KP_3
 SDL_SCANCODE_KP_4
 SDL_SCANCODE_KP_5
 SDL_SCANCODE_KP_6
 SDL_SCANCODE_KP_7
 SDL_SCANCODE_KP_8
 SDL_SCANCODE_KP_9
 SDL_SCANCODE_KP_0
 SDL_SCANCODE_KP_PERIOD
 SDL_SCANCODE_NONUSBACKSLASH
 SDL_SCANCODE_APPLICATION
 SDL_SCANCODE_POWER
 SDL_SCANCODE_KP_EQUALS
 SDL_SCANCODE_F13
 SDL_SCANCODE_F14
 SDL_SCANCODE_F15
 SDL_SCANCODE_F16
 SDL_SCANCODE_F17
 SDL_SCANCODE_F18
 SDL_SCANCODE_F19
 SDL_SCANCODE_F20
 SDL_SCANCODE_F21
 SDL_SCANCODE_F22
 SDL_SCANCODE_F23
 SDL_SCANCODE_F24
 SDL_SCANCODE_EXECUTE
 SDL_SCANCODE_HELP
 SDL_SCANCODE_MENU
 SDL_SCANCODE_SELECT
 SDL_SCANCODE_STOP
 SDL_SCANCODE_AGAIN
 SDL_SCANCODE_UNDO
 SDL_SCANCODE_CUT
 SDL_SCANCODE_COPY
 SDL_SCANCODE_PASTE
 SDL_SCANCODE_FIND
 SDL_SCANCODE_MUTE
 SDL_SCANCODE_VOLUMEUP
 SDL_SCANCODE_VOLUMEDOWN
 SDL_SCANCODE_KP_COMMA
 SDL_SCANCODE_KP_EQUALSAS400
 SDL_SCANCODE_INTERNATIONAL1
 SDL_SCANCODE_INTERNATIONAL2
 SDL_SCANCODE_INTERNATIONAL3
 SDL_SCANCODE_INTERNATIONAL4
 SDL_SCANCODE_INTERNATIONAL5
 SDL_SCANCODE_INTERNATIONAL6
 SDL_SCANCODE_INTERNATIONAL7
 SDL_SCANCODE_INTERNATIONAL8
 SDL_SCANCODE_INTERNATIONAL9
 SDL_SCANCODE_LANG1
 SDL_SCANCODE_LANG2
 SDL_SCANCODE_LANG3
 SDL_SCANCODE_LANG4
 SDL_SCANCODE_LANG5
 SDL_SCANCODE_LANG6
 SDL_SCANCODE_LANG7
 SDL_SCANCODE_LANG8
 SDL_SCANCODE_LANG9
 SDL_SCANCODE_ALTERASE
 SDL_SCANCODE_SYSREQ
 SDL_SCANCODE_CANCEL
 SDL_SCANCODE_CLEAR
 SDL_SCANCODE_PRIOR
 SDL_SCANCODE_RETURN2
 SDL_SCANCODE_SEPARATOR
 SDL_SCANCODE_OUT
 SDL_SCANCODE_OPER
 SDL_SCANCODE_CLEARAGAIN
 SDL_SCANCODE_CRSEL
 SDL_SCANCODE_EXSEL
 SDL_SCANCODE_KP_00
 SDL_SCANCODE_KP_000
 SDL_SCANCODE_THOUSANDSSEPARATOR
 SDL_SCANCODE_DECIMALSEPARATOR
 SDL_SCANCODE_CURRENCYUNIT
 SDL_SCANCODE_CURRENCYSUBUNIT
 SDL_SCANCODE_KP_LEFTPAREN
 SDL_SCANCODE_KP_RIGHTPAREN
 SDL_SCANCODE_KP_LEFTBRACE
 SDL_SCANCODE_KP_RIGHTBRACE
 SDL_SCANCODE_KP_TAB
 SDL_SCANCODE_KP_BACKSPACE
 SDL_SCANCODE_KP_A
 SDL_SCANCODE_KP_B
 SDL_SCANCODE_KP_C
 SDL_SCANCODE_KP_D
 SDL_SCANCODE_KP_E
 SDL_SCANCODE_KP_F
 SDL_SCANCODE_KP_XOR
 SDL_SCANCODE_KP_POWER
 SDL_SCANCODE_KP_PERCENT
 SDL_SCANCODE_KP_LESS
 SDL_SCANCODE_KP_GREATER
 SDL_SCANCODE_KP_AMPERSAND
 SDL_SCANCODE_KP_DBLAMPERSAND
 SDL_SCANCODE_KP_VERTICALBAR
 SDL_SCANCODE_KP_DBLVERTICALBAR
 SDL_SCANCODE_KP_COLON
 SDL_SCANCODE_KP_HASH
 SDL_SCANCODE_KP_SPACE
 SDL_SCANCODE_KP_AT
 SDL_SCANCODE_KP_EXCLAM
 SDL_SCANCODE_KP_MEMSTORE
 SDL_SCANCODE_KP_MEMRECALL
 SDL_SCANCODE_KP_MEMCLEAR
 SDL_SCANCODE_KP_MEMADD
 SDL_SCANCODE_KP_MEMSUBTRACT
 SDL_SCANCODE_KP_MEMMULTIPLY
 SDL_SCANCODE_KP_MEMDIVIDE
 SDL_SCANCODE_KP_PLUSMINUS
 SDL_SCANCODE_KP_CLEAR
 SDL_SCANCODE_KP_CLEARENTRY
 SDL_SCANCODE_KP_BINARY
 SDL_SCANCODE_KP_OCTAL
 SDL_SCANCODE_KP_DECIMAL
 SDL_SCANCODE_KP_HEXADECIMAL
 SDL_SCANCODE_LCTRL
 SDL_SCANCODE_LSHIFT
 SDL_SCANCODE_LALT
 SDL_SCANCODE_LGUI
 SDL_SCANCODE_RCTRL
 SDL_SCANCODE_RSHIFT
 SDL_SCANCODE_RALT
 SDL_SCANCODE_RGUI
 SDL_SCANCODE_MODE
 SDL_SCANCODE_AUDIONEXT
 SDL_SCANCODE_AUDIOPREV
 SDL_SCANCODE_AUDIOSTOP
 SDL_SCANCODE_AUDIOPLAY
 SDL_SCANCODE_AUDIOMUTE
 SDL_SCANCODE_MEDIASELECT
 SDL_SCANCODE_WWW
 SDL_SCANCODE_MAIL
 SDL_SCANCODE_CALCULATOR
 SDL_SCANCODE_COMPUTER
 SDL_SCANCODE_AC_SEARCH
 SDL_SCANCODE_AC_HOME
 SDL_SCANCODE_AC_BACK
 SDL_SCANCODE_AC_FORWARD
 SDL_SCANCODE_AC_STOP
 SDL_SCANCODE_AC_REFRESH
 SDL_SCANCODE_AC_BOOKMARKS
 SDL_SCANCODE_BRIGHTNESSDOWN
 SDL_SCANCODE_BRIGHTNESSUP
 SDL_SCANCODE_DISPLAYSWITCH
 SDL_SCANCODE_KBDILLUMTOGGLE
 SDL_SCANCODE_KBDILLUMDOWN
 SDL_SCANCODE_KBDILLUMUP
 SDL_SCANCODE_EJECT
 SDL_SCANCODE_SLEEP
 SDL_SCANCODE_APP1
 SDL_SCANCODE_APP2
 SDL_NUM_SCANCODES
 )

(c-define-constants
 SDL_LOG_CATEGORY_APPLICATION
 SDL_LOG_CATEGORY_ERROR
 SDL_LOG_CATEGORY_SYSTEM
 SDL_LOG_CATEGORY_AUDIO
 SDL_LOG_CATEGORY_VIDEO
 SDL_LOG_CATEGORY_RENDER
 SDL_LOG_CATEGORY_INPUT
 SDL_LOG_CATEGORY_CUSTOM
 )

(c-define-constants
 SDL_LOG_PRIORITY_VERBOSE
 SDL_LOG_PRIORITY_DEBUG
 SDL_LOG_PRIORITY_INFO
 SDL_LOG_PRIORITY_WARN
 SDL_LOG_PRIORITY_ERROR
 SDL_LOG_PRIORITY_CRITICAL
 )

(c-define-constants
 SDL_PIXELFORMAT_UNKNOWN
 SDL_PIXELFORMAT_INDEX1LSB
 SDL_PIXELFORMAT_INDEX1MSB
 SDL_PIXELFORMAT_INDEX4LSB
 SDL_PIXELFORMAT_INDEX4MSB
 SDL_PIXELFORMAT_INDEX8
 SDL_PIXELFORMAT_RGB332
 SDL_PIXELFORMAT_RGB444
 SDL_PIXELFORMAT_RGB555
 SDL_PIXELFORMAT_BGR555
 SDL_PIXELFORMAT_ARGB4444
 SDL_PIXELFORMAT_RGBA4444
 SDL_PIXELFORMAT_ABGR4444
 SDL_PIXELFORMAT_BGRA4444
 SDL_PIXELFORMAT_ARGB1555
 SDL_PIXELFORMAT_RGBA5551
 SDL_PIXELFORMAT_ABGR1555
 SDL_PIXELFORMAT_BGRA5551
 SDL_PIXELFORMAT_RGB565
 SDL_PIXELFORMAT_BGR565
 SDL_PIXELFORMAT_RGB24
 SDL_PIXELFORMAT_BGR24
 SDL_PIXELFORMAT_RGB888
 SDL_PIXELFORMAT_RGBX8888
 SDL_PIXELFORMAT_BGR888
 SDL_PIXELFORMAT_BGRX8888
 SDL_PIXELFORMAT_ARGB8888
 SDL_PIXELFORMAT_RGBA8888
 SDL_PIXELFORMAT_ABGR8888
 SDL_PIXELFORMAT_BGRA8888
 SDL_PIXELFORMAT_ARGB2101010
 SDL_PIXELFORMAT_YV12
 SDL_PIXELFORMAT_IYUV
 SDL_PIXELFORMAT_YUY2
 SDL_PIXELFORMAT_UYVY
 SDL_PIXELFORMAT_YVYU
 )

(define SDL_PIXELTYPE
  (c-lambda (int) int "___return(SDL_PIXELTYPE(___arg1));"))
(define SDL_PIXELORDER
  (c-lambda (int) int "___return(SDL_PIXELORDER(___arg1));"))
(define SDL_PIXELLAYOUT
  (c-lambda (int) int "___return(SDL_PIXELLAYOUT(___arg1));"))
(define SDL_BITSPERPIXEL
  (c-lambda (int) int "___return(SDL_BITSPERPIXEL(___arg1));"))
(define SDL_BYTESPERPIXEL
  (c-lambda (int) int "___return(SDL_BYTESPERPIXEL(___arg1));"))
(define SDL_ISPIXELFORMAT_INDEXED
  (c-lambda (int) int "___return(SDL_ISPIXELFORMAT_INDEXED(___arg1));"))
(define SDL_ISPIXELFORMAT_ALPHA
  (c-lambda (int) int "___return(SDL_ISPIXELFORMAT_ALPHA(___arg1));"))
(define SDL_ISPIXELFORMAT_FOURCC
  (c-lambda (int) int "___return(SDL_ISPIXELFORMAT_FOURCC(___arg1));"))

(c-define-constants
 SDL_PIXELTYPE_UNKNOWN
 SDL_PIXELTYPE_INDEX1
 SDL_PIXELTYPE_INDEX4
 SDL_PIXELTYPE_INDEX8
 SDL_PIXELTYPE_PACKED8
 SDL_PIXELTYPE_PACKED16
 SDL_PIXELTYPE_PACKED32
 SDL_PIXELTYPE_ARRAYU8
 SDL_PIXELTYPE_ARRAYU16
 SDL_PIXELTYPE_ARRAYU32
 SDL_PIXELTYPE_ARRAYF16
 SDL_PIXELTYPE_ARRAYF32
 )

(c-define-constants
 SDL_BITMAPORDER_NONE
 SDL_BITMAPORDER_4321
 SDL_BITMAPORDER_1234
 )

(c-define-constants
 SDL_PACKEDORDER_NONE
 SDL_PACKEDORDER_XRGB
 SDL_PACKEDORDER_RGBX
 SDL_PACKEDORDER_ARGB
 SDL_PACKEDORDER_RGBA
 SDL_PACKEDORDER_XBGR
 SDL_PACKEDORDER_BGRX
 SDL_PACKEDORDER_ABGR
 SDL_PACKEDORDER_BGRA
 )

(c-define-constants
 SDL_ARRAYORDER_NONE
 SDL_ARRAYORDER_RGB
 SDL_ARRAYORDER_RGBA
 SDL_ARRAYORDER_ARGB
 SDL_ARRAYORDER_BGR
 SDL_ARRAYORDER_BGRA
 SDL_ARRAYORDER_ABGR
 )

(c-define-constants
 SDL_PACKEDLAYOUT_NONE
 SDL_PACKEDLAYOUT_332
 SDL_PACKEDLAYOUT_4444
 SDL_PACKEDLAYOUT_1555
 SDL_PACKEDLAYOUT_5551
 SDL_PACKEDLAYOUT_565
 SDL_PACKEDLAYOUT_8888
 SDL_PACKEDLAYOUT_2101010
 SDL_PACKEDLAYOUT_1010102
 )

(c-define-constants
 SDL_POWERSTATE_UNKNOWN
 SDL_POWERSTATE_ON_BATTERY
 SDL_POWERSTATE_NO_BATTERY
 SDL_POWERSTATE_CHARGING
 SDL_POWERSTATE_CHARGED
 )

(c-define-constants
 SDL_RENDERER_SOFTWARE
 SDL_RENDERER_ACCELERATED
 SDL_RENDERER_PRESENTVSYNC
 SDL_RENDERER_TARGETTEXTURE
 )

(c-define-constants
 SDL_FLIP_NONE
 SDL_FLIP_HORIZONTAL
 SDL_FLIP_VERTICAL
 )

(c-define-constants
 SDL_SYSWM_UNKNOWN
 SDL_SYSWM_WINDOWS
 SDL_SYSWM_X11
 SDL_SYSWM_DIRECTFB
 SDL_SYSWM_COCOA
 SDL_SYSWM_UIKIT
 )

(c-define-constants
 SDL_TEXTUREACCESS_STATIC
 SDL_TEXTUREACCESS_STREAMING
 SDL_TEXTUREACCESS_TARGET
 )

(c-define-constants
 SDL_TEXTUREMODULATE_NONE
 SDL_TEXTUREMODULATE_COLOR
 SDL_TEXTUREMODULATE_ALPHA
 )

(cond-expand
 (sdl:threads
  (c-define-constants
   SDL_THREAD_PRIORITY_LOW
   SDL_THREAD_PRIORITY_NORMAL
   SDL_THREAD_PRIORITY_HIGH))
 (else #!void))

(c-define-constants
 SDL_WINDOWEVENT_SHOWN
 SDL_WINDOWEVENT_HIDDEN
 SDL_WINDOWEVENT_EXPOSED
 SDL_WINDOWEVENT_MOVED
 SDL_WINDOWEVENT_RESIZED
 SDL_WINDOWEVENT_SIZE_CHANGED
 SDL_WINDOWEVENT_MINIMIZED
 SDL_WINDOWEVENT_MAXIMIZED
 SDL_WINDOWEVENT_RESTORED
 SDL_WINDOWEVENT_ENTER
 SDL_WINDOWEVENT_LEAVE
 SDL_WINDOWEVENT_FOCUS_GAINED
 SDL_WINDOWEVENT_FOCUS_LOST
 SDL_WINDOWEVENT_CLOSE
 )

(c-define-constants
 SDL_WINDOW_FULLSCREEN
 SDL_WINDOW_FULLSCREEN_DESKTOP
 SDL_WINDOW_OPENGL
 SDL_WINDOW_SHOWN
 SDL_WINDOW_HIDDEN
 SDL_WINDOW_BORDERLESS
 SDL_WINDOW_RESIZABLE
 SDL_WINDOW_MINIMIZED
 SDL_WINDOW_MAXIMIZED
 SDL_WINDOW_INPUT_GRABBED
 SDL_WINDOW_INPUT_FOCUS
 SDL_WINDOW_MOUSE_FOCUS
 SDL_WINDOW_FOREIGN
 SDL_WINDOW_ALLOW_HIGHDPI
 )

(c-define-constants
 SDL_WINDOWPOS_CENTERED
 SDL_WINDOWPOS_UNDEFINED
 )

(cond-expand
 (sdl:assert
  (c-define-constants
   SDL_ASSERTION_RETRY
   SDL_ASSERTION_BREAK
   SDL_ASSERTION_ABORT
   SDL_ASSERTION_IGNORE
   SDL_ASSERTION_ALWAYS_IGNORE))
 (else #!void))

(c-define-constants
 SDL_FALSE
 SDL_TRUE
 )


;;------------------------------------------------------------------------------
;;!! Structures

(c-define-struct SDL_AudioCVT
                 (needed int)
                 (src_format SDL_AudioFormat)
                 (dst_format SDL_AudioFormat)
                 (rate_incr double)
                 (buf unsigned-int8*)
                 (len int)
                 (len_cvt int)
                 (len_mult int)
                 (len_ratio double))

(c-define-struct SDL_AudioSpec
                 (freq int)
                 (format SDL_AudioFormat)
                 (channels unsigned-int8)
                 (silence unsigned-int8)
                 (samples unsigned-int16)
                 (size unsigned-int32)
                 (callback SDL_AudioCallback)
                 (userdata void*))

(c-define-struct SDL_Color
                 (r unsigned-int8)
                 (g unsigned-int8)
                 (b unsigned-int8)
                 (a unsigned-int8))

(cond-expand
 (sdl:game-controller
  (c-define-struct SDL_ControllerAxisEvent
                   (type unsigned-int32)
                   (timestamp unsigned-int32)
                   (which SDL_JoystickID)
                   (axis unsigned-int8)
                   (value int16))

  (c-define-struct SDL_ControllerButtonEvent
                   (type unsigned-int32)
                   (timestamp unsigned-int32)
                   (which SDL_JoystickID)
                   (button unsigned-int8)
                   (state unsigned-int8))

  (c-define-struct SDL_ControllerDeviceEvent
                   (type unsigned-int32)
                   (timestamp unsigned-int32)
                   (which int32)))
 (else #!void))

(c-define-struct SDL_DisplayMode
                 (format unsigned-int32)
                 (w int)
                 (h int)
                 (refresh_rate int)
                 (driverdata void*))

(c-define-struct SDL_DollarGestureEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (touchId SDL_TouchID)
                 (gestureId SDL_GestureID)
                 (numFingers unsigned-int32)
                 (error float)
                 (x float)
                 (y float))

(c-define-struct SDL_DropEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (file nonnull-char-string))

(c-define-union SDL_Event
                (type unsigned-int32)
                (window (struct SDL_WindowEvent))
                (key (struct SDL_KeyboardEvent))
                (edit (struct SDL_TextEditingEvent))
                (text (struct SDL_TextInputEvent))
                (motion (struct SDL_MouseMotionEvent))
                (button (struct SDL_MouseButtonEvent))
                (wheel (struct SDL_MouseWheelEvent))
                (jaxis (struct SDL_JoyAxisEvent))
                (jball (struct SDL_JoyBallEvent))
                (jhat (struct SDL_JoyHatEvent))
                (jbutton (struct SDL_JoyButtonEvent))
                (jdevice (struct SDL_JoyDeviceEvent))
                (caxis (struct SDL_ControllerAxisEvent))
                (cbutton (struct SDL_ControllerButtonEvent))
                (cdevice (struct SDL_ControllerDeviceEvent))
                (quit (struct SDL_QuitEvent))
                (user (struct SDL_UserEvent))
                (syswm (struct SDL_SysWMEvent))
                (tfinger (struct SDL_TouchFingerEvent))
                (mgesture (struct SDL_MultiGestureEvent))
                (dgesture (struct SDL_DollarGestureEvent))
                (drop (struct SDL_DropEvent)))

(c-define-struct SDL_Finger
                 (id SDL_FingerID)
                 (x float)
                 (y float)
                 (pressure float))

(cond-expand
 (sdl:haptic
  (c-define-struct SDL_HapticCondition
                   (type unsigned-int16)
                   (length unsigned-int32)
                   (delay unsigned-int16)
                   (button unsigned-int16)
                   (interval unsigned-int16)
                   (right_sat (array unsigned-int16))
                   (left_sat (array unsigned-int16))
                   (right_coeff (array int16))
                   (left_coeff (array int16))
                   (deadband (array unsigned-int16))
                   (center (array int16)))

  (c-define-struct SDL_HapticConstant
                   (type unsigned-int16)
                   (direction (struct SDL_HapticDirection))
                   (length unsigned-int32)
                   (delay unsigned-int16)
                   (button unsigned-int16)
                   (interval unsigned-int16)
                   (level int16)
                   (attack_length unsigned-int16)
                   (attack_level unsigned-int16)
                   (fade_length unsigned-int16)
                   (fade_level unsigned-int16))

  (c-define-struct SDL_HapticCustom
                   (type unsigned-int16)
                   (direction (struct SDL_HapticDirection))
                   (length unsigned-int32)
                   (delay unsigned-int16)
                   (button unsigned-int16)
                   (interval unsigned-int16)
                   (channels unsigned-int8)
                   (period unsigned-int16)
                   (samples unsigned-int16)
                   (data unsigned-int16*)
                   (attack_length unsigned-int16)
                   (attack_level unsigned-int16)
                   (fade_length unsigned-int16)
                   (fade_level unsigned-int16))

  (c-define-struct SDL_HapticDirection
                   (type unsigned-int8)
                   (dir (array int32)))

  (c-define-union SDL_HapticEffect
                  (constant (struct SDL_HapticConstant))
                  (periodic (struct SDL_HapticPeriodic))
                  (condition (struct SDL_HapticCondition))
                  (ramp (struct SDL_HapticRamp))
                  (leftright (struct SDL_HapticLeftRight))
                  (custom (struct SDL_HapticCustom)))

  (c-define-struct SDL_HapticLeftRight
                   (type unsigned-int16)
                   (length unsigned-int32)
                   (large_magnitude unsigned-int16)
                   (small_magnitude unsigned-int16))

  (c-define-struct SDL_HapticPeriodic
                   (type unsigned-int16)
                   (direction (struct SDL_HapticDirection))
                   (length unsigned-int32)
                   (delay unsigned-int16)
                   (button unsigned-int16)
                   (interval unsigned-int16)
                   (period unsigned-int16)
                   (magnitude int16)
                   (offset int16)
                   (phase unsigned-int16)
                   (attack_length unsigned-int16)
                   (attack_level unsigned-int16)
                   (fade_length unsigned-int16)
                   (fade_level unsigned-int16))

  (c-define-struct SDL_HapticRamp
                   (type unsigned-int16)
                   (direction (struct SDL_HapticDirection))
                   (length unsigned-int32)
                   (delay unsigned-int16)
                   (button unsigned-int16)
                   (interval unsigned-int16)
                   (start int16)
                   (end int16)
                   (attack_length unsigned-int16)
                   (attack_level unsigned-int16)
                   (fade_length unsigned-int16)
                   (fade_level unsigned-int16)))
 (else #!void))

(cond-expand
 (sdl:joystick
  (c-define-struct SDL_JoyAxisEvent
                   (type unsigned-int32)
                   (timestamp unsigned-int32)
                   (which SDL_JoystickID)
                   (axis unsigned-int8)
                   (value int16))

  (c-define-struct SDL_JoyBallEvent
                   (type unsigned-int32)
                   (timestamp unsigned-int32)
                   (which SDL_JoystickID)
                   (ball unsigned-int8)
                   (xrel int16)
                   (yrel int16))

  (c-define-struct SDL_JoyButtonEvent
                   (type unsigned-int32)
                   (timestamp unsigned-int32)
                   (which SDL_JoystickID)
                   (button unsigned-int8)
                   (state unsigned-int8))

  (c-define-struct SDL_JoyDeviceEvent
                   (type unsigned-int32)
                   (timestamp unsigned-int32)
                   (which int32))

  (c-define-struct SDL_JoyHatEvent
                   (type unsigned-int32)
                   (timestamp unsigned-int32)
                   (which SDL_JoystickID)
                   (hat unsigned-int8)
                   (value unsigned-int8)))
 (else #!void))


;; Needs to be defined before SDL_KeyboardEvent
(c-define-struct SDL_Keysym
                 (scancode SDL_Scancode)
                 (sym SDL_Keycode)
                 (mod unsigned-int16))

(c-define-struct SDL_KeyboardEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (windowID unsigned-int32)
                 (state unsigned-int8)
                 (repeat unsigned-int8)
                 (keysym (struct SDL_Keysym)))

(c-define-struct SDL_MouseButtonEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (windowID unsigned-int32)
                 (which unsigned-int32)
                 (button unsigned-int8)
                 (state unsigned-int8)
                 (clicks unsigned-int8)
                 (x int)
                 (y int))

(c-define-struct SDL_MouseMotionEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (windowID unsigned-int32)
                 (which unsigned-int32)
                 (state unsigned-int32)
                 (x int32)
                 (y int32)
                 (xrel int32)
                 (yrel int32))

(c-define-struct SDL_MouseWheelEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (windowID unsigned-int32)
                 (which unsigned-int32)
                 (x int32)
                 (y int32))

(c-define-struct SDL_MultiGestureEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (touchId SDL_TouchID)
                 (dTheta float)
                 (dDist float)
                 (x float)
                 (y float)
                 (numFingers unsigned-int16))

(c-define-struct SDL_Palette
                 (ncolors int)
                 (colors (struct-array SDL_Color)))

(c-define-struct SDL_PixelFormat
                 (format unsigned-int32)
                 (palette SDL_Palette*)
                 (BitsPerPixel unsigned-int8)
                 (BytesPerPixel unsigned-int8)
                 (Rmask unsigned-int32)
                 (Gmask unsigned-int32)
                 (Bmask unsigned-int32)
                 (Amask unsigned-int32))

(c-define-struct SDL_Point
                 (x int)
                 (y int))

(c-define-struct SDL_QuitEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32))

(c-define-struct SDL_Rect
                 (x int)
                 (y int)
                 (w int)
                 (h int))

(c-define-struct SDL_RendererInfo
                 (name nonnull-char-string)
                 (flags unsigned-int32)
                 (num_texture_formats unsigned-int32)
                 (texture_formats (array unsigned-int32))
                 (max_texture_width int)
                 (max_texture_height int))

(c-define-struct SDL_Surface
                 (format SDL_PixelFormat*)
                 (w int)
                 (h int)
                 (pitch int)
                 (pixels void*)
                 (userdata void*)
                 (clip_rect (struct SDL_Rect))
                 (refcount int))

(c-define-struct SDL_SysWMEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (msg SDL_SysWMmsg*))

(c-define-struct SDL_SysWMinfo
                 (version (struct SDL_version))
                 (subsystem int))

(c-define-struct SDL_SysWMmsg
                 (version (struct SDL_version))
                 (subsystem int))

(c-define-struct SDL_TextEditingEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (windowID unsigned-int32)
                 (text (array char)) ;; a 32 elements fixed-size array
                 (start int32)
                 (length int32))

(c-define-struct SDL_TextInputEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (windowID unsigned-int32)
                 (text (array char))) ;; a 32 elements fixed-size array

(c-define-struct SDL_TouchFingerEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (touchId SDL_TouchID)
                 (fingerId SDL_FingerID)
                 (x float)
                 (y float)
                 (dx float)
                 (dy float)
                 (pressure float))

(c-define-struct SDL_UserEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (windowID unsigned-int32)
                 (code int32)
                 (data1 void*)
                 (data2 void*))

(c-define-struct SDL_WindowEvent
                 (type unsigned-int32)
                 (timestamp unsigned-int32)
                 (windowID unsigned-int32)
                 (event unsigned-int8)
                 (data1 int32)
                 (data2 int32))

(cond-expand
 (sdl:assert
  (c-define-struct SDL_assert_data
                   (always_ignore int)
                   (trigger_count unsigned-int)
                   (condition nonnull-char-string)
                   (filename nonnull-char-string)
                   (linenum int)
                   (function nonnull-char-string)
                   (next SDL_assert_data*)))
 (else #!void))

;; The type SDL_atomic_t throws an incomplete type error
;; Anyway, should it be used in these bindings?
;; (c-define-struct SDL_atomic_t
;;                  (value int))

(c-define-struct SDL_version
                 (major unsigned-int8)
                 (minor unsigned-int8)
                 (patch unsigned-int8))

;;------------------------------------------------------------------------------
;;!! Functions

(define SDL_AddEventWatch (c-lambda (SDL_EventFilter void*) void "SDL_AddEventWatch"))
(define SDL_AddHintCallback (c-lambda (nonnull-char-string SDL_HintCallback void*) void "SDL_AddHintCallback"))
(define SDL_AddTimer (c-lambda (unsigned-int32 SDL_TimerCallback void*) SDL_TimerID "SDL_AddTimer"))
(define SDL_AllocFormat (c-lambda (unsigned-int32) SDL_PixelFormat* "SDL_AllocFormat"))
(define SDL_AllocPalette (c-lambda (int) SDL_Palette* "SDL_AllocPalette"))
(define SDL_AllocRW (c-lambda () SDL_RWops* "SDL_AllocRW"))
(cond-expand
 (android
  (define SDL_AndroidGetActivity (c-lambda () void* "SDL_AndroidGetActivity"))
  (define SDL_AndroidGetExternalStoragePath (c-lambda () nonnull-char-string "SDL_AndroidGetExternalStoragePath"))
  (define SDL_AndroidGetExternalStorageState (c-lambda () int "SDL_AndroidGetExternalStorageState"))
  (define SDL_AndroidGetInternalStoragePath (c-lambda () nonnull-char-string "SDL_AndroidGetInternalStoragePath"))
  (define SDL_AndroidGetJNIEnv (c-lambda () void* "SDL_AndroidGetJNIEnv")))
 (else #!void))
(cond-expand
 (sdl:atomic
  (define SDL_AtomicAdd (c-lambda (SDL_atomic_t* int) int "SDL_AtomicAdd"))
  (define SDL_AtomicCAS (c-lambda (SDL_atomic_t* int int) SDL_bool "SDL_AtomicCAS"))
  (define SDL_AtomicCASPtr (c-lambda (void** void* void*) SDL_bool "SDL_AtomicCASPtr"))
  (define SDL_AtomicDecRef (c-lambda (SDL_atomic_t*) SDL_bool "SDL_AtomicDecRef"))
  (define SDL_AtomicGet (c-lambda (SDL_atomic_t*) int "SDL_AtomicGet"))
  (define SDL_AtomicGetPtr (c-lambda (void**) void* "SDL_AtomicGetPtr"))
  (define SDL_AtomicIncRef (c-lambda (SDL_atomic_t*) void "SDL_AtomicIncRef"))
  (define SDL_AtomicLock (c-lambda (SDL_SpinLock*) void "SDL_AtomicLock"))
  (define SDL_AtomicSet (c-lambda (SDL_atomic_t* int) int "SDL_AtomicSet"))
  (define SDL_AtomicSetPtr (c-lambda (void** void*) void* "SDL_AtomicSetPtr"))
  (define SDL_AtomicTryLock (c-lambda (SDL_SpinLock*) SDL_bool "SDL_AtomicTryLock"))
  (define SDL_AtomicUnlock (c-lambda (SDL_SpinLock*) void "SDL_AtomicUnlock")))
 (else #!void))
(define SDL_AudioInit (c-lambda (nonnull-char-string) int "SDL_AudioInit"))
(define SDL_AudioQuit (c-lambda () void "SDL_AudioQuit"))
(define SDL_BlitScaled (c-lambda (SDL_Surface* SDL_Rect* SDL_Surface* SDL_Rect*) int "SDL_BlitScaled"))
(define SDL_BlitSurface (c-lambda (SDL_Surface* SDL_Rect* SDL_Surface* SDL_Rect*) int "SDL_BlitSurface"))
(define SDL_BuildAudioCVT (c-lambda (SDL_AudioCVT* SDL_AudioFormat unsigned-int8 int SDL_AudioFormat unsigned-int8 int) int "SDL_BuildAudioCVT"))
(define SDL_CalculateGammaRamp (c-lambda (float unsigned-int16*) void "SDL_CalculateGammaRamp"))
(define SDL_ClearError (c-lambda () void "SDL_ClearError"))
(define SDL_ClearHints (c-lambda () void "SDL_ClearHints"))
(define SDL_CloseAudio (c-lambda () void "SDL_CloseAudio"))
(define SDL_CloseAudioDevice (c-lambda (SDL_AudioDeviceID) void "SDL_CloseAudioDevice"))
(define SDL_CompilerBarrier (c-lambda () void "SDL_CompilerBarrier"))
(define SDL_CondBroadcast (c-lambda (SDL_cond*) int "SDL_CondBroadcast"))
(define SDL_CondSignal (c-lambda (SDL_cond*) int "SDL_CondSignal"))
(define SDL_CondWait (c-lambda (SDL_cond* SDL_mutex*) int "SDL_CondWait"))
(define SDL_CondWaitTimeout (c-lambda (SDL_cond* SDL_mutex* unsigned-int32) int "SDL_CondWaitTimeout"))
(define SDL_ConvertAudio (c-lambda (SDL_AudioCVT*) int "SDL_ConvertAudio"))
(define SDL_ConvertPixels (c-lambda (int int unsigned-int32 void* int unsigned-int32 void* int) int "SDL_ConvertPixels"))
(define SDL_ConvertSurface (c-lambda (SDL_Surface* SDL_PixelFormat* unsigned-int32) SDL_Surface* "SDL_ConvertSurface"))
(define SDL_ConvertSurfaceFormat (c-lambda (SDL_Surface* unsigned-int32 unsigned-int32) SDL_Surface* "SDL_ConvertSurfaceFormat"))
(define SDL_CreateColorCursor (c-lambda (SDL_Surface* int int) SDL_Cursor* "SDL_CreateColorCursor"))
(define SDL_CreateCond (c-lambda () SDL_cond* "SDL_CreateCond"))
(define SDL_CreateCursor (c-lambda (unsigned-int8* unsigned-int8* int int int int) SDL_Cursor* "SDL_CreateCursor"))
(define SDL_CreateMutex (c-lambda () SDL_mutex* "SDL_CreateMutex"))
(define SDL_CreateRGBSurface (c-lambda (unsigned-int32 int int int unsigned-int32 unsigned-int32 unsigned-int32 unsigned-int32) SDL_Surface* "SDL_CreateRGBSurface"))
(define SDL_CreateRGBSurfaceFrom (c-lambda (void* int int int int unsigned-int32 unsigned-int32 unsigned-int32 unsigned-int32) SDL_Surface* "SDL_CreateRGBSurfaceFrom"))
(define SDL_CreateRenderer (c-lambda (SDL_Window* int unsigned-int32) SDL_Renderer* "SDL_CreateRenderer"))
(define SDL_CreateSemaphore (c-lambda (unsigned-int32) SDL_sem* "SDL_CreateSemaphore"))
(define SDL_CreateSoftwareRenderer (c-lambda (SDL_Surface*) SDL_Renderer* "SDL_CreateSoftwareRenderer"))
(define SDL_CreateSystemCursor (c-lambda (SDL_SystemCursor) SDL_Cursor* "SDL_CreateSystemCursor"))
(define SDL_CreateTexture (c-lambda (SDL_Renderer* unsigned-int32 int int int) SDL_Texture* "SDL_CreateTexture"))
(define SDL_CreateTextureFromSurface (c-lambda (SDL_Renderer* SDL_Surface*) SDL_Texture* "SDL_CreateTextureFromSurface"))
(cond-expand
 (sdl:threads
  (define SDL_CreateThread (c-lambda (SDL_ThreadFunction nonnull-char-string void*) SDL_Thread* "SDL_CreateThread")))
 (else #!void))
(define SDL_CreateWindow (c-lambda (nonnull-char-string int int int int unsigned-int32) SDL_Window* "SDL_CreateWindow"))
(define SDL_CreateWindowAndRenderer (c-lambda (int int unsigned-int32 SDL_Window** SDL_Renderer**) int "SDL_CreateWindowAndRenderer"))
(define SDL_CreateWindowFrom (c-lambda (void*) SDL_Window* "SDL_CreateWindowFrom"))
(define SDL_DelEventWatch (c-lambda (SDL_EventFilter void*) void "SDL_DelEventWatch"))
(define SDL_DelHintCallback (c-lambda (nonnull-char-string SDL_HintCallback void*) void "SDL_DelHintCallback"))
(define SDL_Delay (c-lambda (unsigned-int32) void "SDL_Delay"))
(cond-expand
 (sdl:threads
  (define SDL_DestroyCond (c-lambda (SDL_cond*) void "SDL_DestroyCond"))
  (define SDL_DestroyMutex (c-lambda (SDL_mutex*) void "SDL_DestroyMutex")))
 (else #!void))
(define SDL_DestroyRenderer (c-lambda (SDL_Renderer*) void "SDL_DestroyRenderer"))
(cond-expand
 (sdl:threads
  (define SDL_DestroySemaphore (c-lambda (SDL_sem*) void "SDL_DestroySemaphore")))
 (else #!void))
(define SDL_DestroyTexture (c-lambda (SDL_Texture*) void "SDL_DestroyTexture"))
(define SDL_DestroyWindow (c-lambda (SDL_Window*) void "SDL_DestroyWindow"))
(cond-expand
 (sdl:threads
  (define SDL_DetachThread (c-lambda (SDL_Thread*) void "SDL_DetachThread")))
 (else #!void))
(define SDL_DisableScreenSaver (c-lambda () void "SDL_DisableScreenSaver"))
(define SDL_EnableScreenSaver (c-lambda () void "SDL_EnableScreenSaver"))
(define SDL_EnclosePoints (c-lambda (SDL_Point* int SDL_Rect* SDL_Rect*) SDL_bool "SDL_EnclosePoints"))
(define SDL_EventState (c-lambda (unsigned-int32 int) unsigned-int8 "SDL_EventState"))
(define SDL_FillRect (c-lambda (SDL_Surface* SDL_Rect* unsigned-int32) int "SDL_FillRect"))
(define SDL_FillRects (c-lambda (SDL_Surface* SDL_Rect* int unsigned-int32) int "SDL_FillRects"))
(define SDL_FilterEvents (c-lambda (SDL_EventFilter void*) void "SDL_FilterEvents"))
(define SDL_FlushEvent (c-lambda (unsigned-int32) void "SDL_FlushEvent"))
(define SDL_FlushEvents (c-lambda (unsigned-int32 unsigned-int32) void "SDL_FlushEvents"))
(define SDL_FreeCursor (c-lambda (SDL_Cursor*) void "SDL_FreeCursor"))
(define SDL_FreeFormat (c-lambda (SDL_PixelFormat*) void "SDL_FreeFormat"))
(define SDL_FreePalette (c-lambda (SDL_Palette*) void "SDL_FreePalette"))
(define SDL_FreeRW (c-lambda (SDL_RWops*) void "SDL_FreeRW"))
(define SDL_FreeSurface (c-lambda (SDL_Surface*) void "SDL_FreeSurface"))
(define SDL_FreeWAV (c-lambda (unsigned-int8*) void "SDL_FreeWAV"))
(define SDL_GL_BindTexture (c-lambda (SDL_Texture* float* float*) int "SDL_GL_BindTexture"))
(define SDL_GL_CreateContext (c-lambda (SDL_Window*) SDL_GLContext "SDL_GL_CreateContext"))
(define SDL_GL_DeleteContext (c-lambda (SDL_GLContext) void "SDL_GL_DeleteContext"))
(define SDL_GL_ExtensionSupported (c-lambda (nonnull-char-string) SDL_bool "SDL_GL_ExtensionSupported"))
(define SDL_GL_GetAttribute (c-lambda (SDL_GLattr int*) int "SDL_GL_GetAttribute"))
(define SDL_GL_GetCurrentContext (c-lambda () SDL_GLContext "SDL_GL_GetCurrentContext"))
(define SDL_GL_GetCurrentWindow (c-lambda () SDL_Window* "SDL_GL_GetCurrentWindow"))
(define SDL_GL_GetDrawableSize (c-lambda (SDL_Window* int* int*) void "SDL_GL_GetDrawableSize"))
(define SDL_GL_GetProcAddress (c-lambda (nonnull-char-string) void* "SDL_GL_GetProcAddress"))
(define SDL_GL_GetSwapInterval (c-lambda () int "SDL_GL_GetSwapInterval"))
(define SDL_GL_LoadLibrary (c-lambda (nonnull-char-string) int "SDL_GL_LoadLibrary"))
(define SDL_GL_MakeCurrent (c-lambda (SDL_Window* SDL_GLContext) int "SDL_GL_MakeCurrent"))
(define SDL_GL_ResetAttributes (c-lambda () void "SDL_GL_ResetAttributes"))
(define SDL_GL_SetAttribute (c-lambda (SDL_GLattr int) int "SDL_GL_SetAttribute"))
(define SDL_GL_SetSwapInterval (c-lambda (int) int "SDL_GL_SetSwapInterval"))
(define SDL_GL_SwapWindow (c-lambda (SDL_Window*) void "SDL_GL_SwapWindow"))
(define SDL_GL_UnbindTexture (c-lambda (SDL_Texture*) int "SDL_GL_UnbindTexture"))
(define SDL_GL_UnloadLibrary (c-lambda () void "SDL_GL_UnloadLibrary"))
(cond-expand
 (sdl:game-controller
  (define SDL_GameControllerAddMapping (c-lambda (nonnull-char-string) int "SDL_GameControllerAddMapping"))
  (define SDL_GameControllerAddMappingsFromFile (c-lambda (nonnull-char-string) int "SDL_GameControllerAddMappingsFromFile"))
  (define SDL_GameControllerAddMappingsFromRW (c-lambda (SDL_RWops* int) int "SDL_GameControllerAddMappingsFromRW"))
  (define SDL_GameControllerClose (c-lambda (SDL_GameController*) void "SDL_GameControllerClose"))
  (define SDL_GameControllerEventState (c-lambda (int) int "SDL_GameControllerEventState"))
  (define SDL_GameControllerGetAttached (c-lambda (SDL_GameController*) SDL_bool "SDL_GameControllerGetAttached"))
  (define SDL_GameControllerGetAxis (c-lambda (SDL_GameController* SDL_GameControllerAxis) int16 "SDL_GameControllerGetAxis"))
  (define SDL_GameControllerGetAxisFromString (c-lambda (nonnull-char-string) SDL_GameControllerAxis "SDL_GameControllerGetAxisFromString"))
  (define SDL_GameControllerGetBindForAxis (c-lambda (SDL_GameController* SDL_GameControllerAxis) SDL_GameControllerButtonBind "SDL_GameControllerGetBindForAxis"))
  (define SDL_GameControllerGetBindForButton (c-lambda (SDL_GameController* SDL_GameControllerButton) SDL_GameControllerButtonBind "SDL_GameControllerGetBindForButton"))
  (define SDL_GameControllerGetButton (c-lambda (SDL_GameController* SDL_GameControllerButton) unsigned-int8 "SDL_GameControllerGetButton"))
  (define SDL_GameControllerGetButtonFromString (c-lambda (nonnull-char-string) SDL_GameControllerButton "SDL_GameControllerGetButtonFromString"))
  (cond-expand
   (sdl:joystick
    (define SDL_GameControllerGetJoystick (c-lambda (SDL_GameController*) SDL_Joystick* "SDL_GameControllerGetJoystick")))
   (else #!void))
  (define SDL_GameControllerGetStringForAxis (c-lambda (SDL_GameControllerAxis) nonnull-char-string "SDL_GameControllerGetStringForAxis"))
  (define SDL_GameControllerGetStringForButton (c-lambda (SDL_GameControllerButton) nonnull-char-string "SDL_GameControllerGetStringForButton"))
  (define SDL_GameControllerMapping (c-lambda (SDL_GameController*) nonnull-char-string "SDL_GameControllerMapping"))
  ;;(define SDL_GameControllerMappingForGUID (c-lambda (SDL_JoystickGUID) nonnull-char-string "SDL_GameControllerMappingForGUID"))
  (define SDL_GameControllerName (c-lambda (SDL_GameController*) nonnull-char-string "SDL_GameControllerName"))
  (define SDL_GameControllerNameForIndex (c-lambda (int) nonnull-char-string "SDL_GameControllerNameForIndex"))
  (define SDL_GameControllerOpen (c-lambda (int) SDL_GameController* "SDL_GameControllerOpen"))
  (define SDL_GameControllerUpdate (c-lambda () void "SDL_GameControllerUpdate")))
 (else #!void))
(cond-expand
 (sdl:assert
  (define SDL_GetAssertionReport (c-lambda () SDL_assert_data* "SDL_GetAssertionReport")))
 (else #!void))
(define SDL_GetAudioDeviceName (c-lambda (int int) nonnull-char-string "SDL_GetAudioDeviceName"))
(define SDL_GetAudioDeviceStatus (c-lambda (SDL_AudioDeviceID) SDL_AudioStatus "SDL_GetAudioDeviceStatus"))
(define SDL_GetAudioDriver (c-lambda (int) nonnull-char-string "SDL_GetAudioDriver"))
(define SDL_GetAudioStatus (c-lambda () SDL_AudioStatus "SDL_GetAudioStatus"))
(define SDL_GetBasePath (c-lambda () nonnull-char-string "SDL_GetBasePath"))
(define SDL_GetCPUCacheLineSize (c-lambda () int "SDL_GetCPUCacheLineSize"))
(define SDL_GetCPUCount (c-lambda () int "SDL_GetCPUCount"))
(define SDL_GetClipRect (c-lambda (SDL_Surface* SDL_Rect*) void "SDL_GetClipRect"))
(define SDL_GetClipboardText (c-lambda () nonnull-char-string "SDL_GetClipboardText"))
(define SDL_GetClosestDisplayMode (c-lambda (int SDL_DisplayMode* SDL_DisplayMode*) SDL_DisplayMode* "SDL_GetClosestDisplayMode"))
(define SDL_GetColorKey (c-lambda (SDL_Surface* unsigned-int32*) int "SDL_GetColorKey"))
(define SDL_GetCurrentAudioDriver (c-lambda () nonnull-char-string "SDL_GetCurrentAudioDriver"))
(define SDL_GetCurrentDisplayMode (c-lambda (int SDL_DisplayMode*) int "SDL_GetCurrentDisplayMode"))
(define SDL_GetCurrentVideoDriver (c-lambda () nonnull-char-string "SDL_GetCurrentVideoDriver"))
(define SDL_GetCursor (c-lambda () SDL_Cursor* "SDL_GetCursor"))
(define SDL_GetDefaultCursor (c-lambda () SDL_Cursor* "SDL_GetDefaultCursor"))
(cond-expand
 (sdl:assert
  (define SDL_GetDefaultAssertionHandler (c-lambda () SDL_AssertionHandler "SDL_GetDefaultAssertionHandler")))
 (else #!void))
(define SDL_GetDesktopDisplayMode (c-lambda (int SDL_DisplayMode*) int "SDL_GetDesktopDisplayMode"))
(define SDL_GetDisplayBounds (c-lambda (int SDL_Rect*) int "SDL_GetDisplayBounds"))
(define SDL_GetDisplayMode (c-lambda (int int SDL_DisplayMode*) int "SDL_GetDisplayMode"))
(define SDL_GetDisplayName (c-lambda (int) nonnull-char-string "SDL_GetDisplayName"))
(define SDL_GetError (c-lambda () nonnull-char-string "SDL_GetError"))
(define SDL_GetEventFilter (c-lambda (SDL_EventFilter* void**) SDL_bool "SDL_GetEventFilter"))
(define SDL_GetHint (c-lambda (nonnull-char-string) nonnull-char-string "SDL_GetHint"))
(define SDL_GetKeyFromName (c-lambda (nonnull-char-string) SDL_Keycode "SDL_GetKeyFromName"))
(define SDL_GetKeyFromScancode (c-lambda (SDL_Scancode) SDL_Keycode "SDL_GetKeyFromScancode"))
(define SDL_GetKeyName (c-lambda (SDL_Keycode) nonnull-char-string "SDL_GetKeyName"))
(define SDL_GetKeyboardFocus (c-lambda () SDL_Window* "SDL_GetKeyboardFocus"))
(define SDL_GetKeyboardState (c-lambda (int*) unsigned-int8* "SDL_GetKeyboardState"))
(define SDL_GetModState (c-lambda () SDL_Keymod "SDL_GetModState"))
(define SDL_GetMouseFocus (c-lambda () SDL_Window* "SDL_GetMouseFocus"))
(define SDL_GetMouseState (c-lambda (int* int*) unsigned-int32 "SDL_GetMouseState"))
(define SDL_GetNumAudioDevices (c-lambda (int) int "SDL_GetNumAudioDevices"))
(define SDL_GetNumAudioDrivers (c-lambda () int "SDL_GetNumAudioDrivers"))
(define SDL_GetNumDisplayModes (c-lambda (int) int "SDL_GetNumDisplayModes"))
(define SDL_GetNumRenderDrivers (c-lambda () int "SDL_GetNumRenderDrivers"))
(define SDL_GetNumTouchDevices (c-lambda () int "SDL_GetNumTouchDevices"))
(define SDL_GetNumTouchFingers (c-lambda (SDL_TouchID) int "SDL_GetNumTouchFingers"))
(define SDL_GetNumVideoDisplays (c-lambda () int "SDL_GetNumVideoDisplays"))
(define SDL_GetNumVideoDrivers (c-lambda () int "SDL_GetNumVideoDrivers"))
(define SDL_GetPerformanceCounter (c-lambda () unsigned-int64 "SDL_GetPerformanceCounter"))
(define SDL_GetPerformanceFrequency (c-lambda () unsigned-int64 "SDL_GetPerformanceFrequency"))
(define SDL_GetPixelFormatName (c-lambda (unsigned-int32) nonnull-char-string "SDL_GetPixelFormatName"))
(define SDL_GetPlatform (c-lambda () nonnull-char-string "SDL_GetPlatform"))
(define SDL_GetPowerInfo (c-lambda (int* int*) SDL_PowerState "SDL_GetPowerInfo"))
(define SDL_GetPrefPath (c-lambda (nonnull-char-string nonnull-char-string) nonnull-char-string "SDL_GetPrefPath"))
(define SDL_GetRGB (c-lambda (unsigned-int32 SDL_PixelFormat* unsigned-int8* unsigned-int8* unsigned-int8*) void "SDL_GetRGB"))
(define SDL_GetRGBA (c-lambda (unsigned-int32 SDL_PixelFormat* unsigned-int8* unsigned-int8* unsigned-int8* unsigned-int8*) void "SDL_GetRGBA"))
(define SDL_GetRelativeMouseMode (c-lambda () SDL_bool "SDL_GetRelativeMouseMode"))
(define SDL_GetRelativeMouseState (c-lambda (int* int*) unsigned-int32 "SDL_GetRelativeMouseState"))
(define SDL_GetRenderDrawBlendMode (c-lambda (SDL_Renderer* SDL_BlendMode*) int "SDL_GetRenderDrawBlendMode"))
(define SDL_GetRenderDrawColor (c-lambda (SDL_Renderer* unsigned-int8* unsigned-int8* unsigned-int8* unsigned-int8*) int "SDL_GetRenderDrawColor"))
(define SDL_GetRenderDriverInfo (c-lambda (int SDL_RendererInfo*) int "SDL_GetRenderDriverInfo"))
(define SDL_GetRenderTarget (c-lambda (SDL_Renderer*) SDL_Texture* "SDL_GetRenderTarget"))
(define SDL_GetRenderer (c-lambda (SDL_Window*) SDL_Renderer* "SDL_GetRenderer"))
(define SDL_GetRendererInfo (c-lambda (SDL_Renderer* SDL_RendererInfo*) int "SDL_GetRendererInfo"))
(define SDL_GetRendererOutputSize (c-lambda (SDL_Renderer* int* int*) int "SDL_GetRendererOutputSize"))
(define SDL_GetRevision (c-lambda () nonnull-char-string "SDL_GetRevision"))
(define SDL_GetRevisionNumber (c-lambda () int "SDL_GetRevisionNumber"))
(define SDL_GetScancodeFromKey (c-lambda (SDL_Keycode) SDL_Scancode "SDL_GetScancodeFromKey"))
(define SDL_GetScancodeFromName (c-lambda (nonnull-char-string) SDL_Scancode "SDL_GetScancodeFromName"))
(define SDL_GetScancodeName (c-lambda (SDL_Scancode) nonnull-char-string "SDL_GetScancodeName"))
(define SDL_GetSurfaceAlphaMod (c-lambda (SDL_Surface* unsigned-int8*) int "SDL_GetSurfaceAlphaMod"))
(define SDL_GetSurfaceBlendMode (c-lambda (SDL_Surface* SDL_BlendMode*) int "SDL_GetSurfaceBlendMode"))
(define SDL_GetSurfaceColorMod (c-lambda (SDL_Surface* unsigned-int8* unsigned-int8* unsigned-int8*) int "SDL_GetSurfaceColorMod"))
(define SDL_GetSystemRAM (c-lambda () int "SDL_GetSystemRAM"))
(define SDL_GetTextureAlphaMod (c-lambda (SDL_Texture* unsigned-int8*) int "SDL_GetTextureAlphaMod"))
(define SDL_GetTextureBlendMode (c-lambda (SDL_Texture* SDL_BlendMode*) int "SDL_GetTextureBlendMode"))
(define SDL_GetTextureColorMod (c-lambda (SDL_Texture* unsigned-int8* unsigned-int8* unsigned-int8*) int "SDL_GetTextureColorMod"))
(cond-expand
 (sdl:threads
  (define SDL_GetThreadID (c-lambda (SDL_Thread*) SDL_threadID "SDL_GetThreadID"))
  (define SDL_GetThreadName (c-lambda (SDL_Thread*) nonnull-char-string "SDL_GetThreadName")))
 (else #!void))
(define SDL_GetTicks (c-lambda () unsigned-int32 "SDL_GetTicks"))
(define SDL_GetTouchDevice (c-lambda (int) SDL_TouchID "SDL_GetTouchDevice"))
(define SDL_GetTouchFinger (c-lambda (SDL_TouchID int) SDL_Finger* "SDL_GetTouchFinger"))
(define SDL_GetVersion (c-lambda (SDL_version*) void "SDL_GetVersion"))
(define SDL_GetVideoDriver (c-lambda (int) nonnull-char-string "SDL_GetVideoDriver"))
(define SDL_GetWindowBrightness (c-lambda (SDL_Window*) float "SDL_GetWindowBrightness"))
(define SDL_GetWindowData (c-lambda (SDL_Window* nonnull-char-string) void* "SDL_GetWindowData"))
(define SDL_GetWindowDisplayIndex (c-lambda (SDL_Window*) int "SDL_GetWindowDisplayIndex"))
(define SDL_GetWindowDisplayMode (c-lambda (SDL_Window* SDL_DisplayMode*) int "SDL_GetWindowDisplayMode"))
(define SDL_GetWindowFlags (c-lambda (SDL_Window*) unsigned-int32 "SDL_GetWindowFlags"))
(define SDL_GetWindowFromID (c-lambda (unsigned-int32) SDL_Window* "SDL_GetWindowFromID"))
(define SDL_GetWindowGammaRamp (c-lambda (SDL_Window* unsigned-int16* unsigned-int16* unsigned-int16*) int "SDL_GetWindowGammaRamp"))
(define SDL_GetWindowGrab (c-lambda (SDL_Window*) SDL_bool "SDL_GetWindowGrab"))
(define SDL_GetWindowID (c-lambda (SDL_Window*) unsigned-int32 "SDL_GetWindowID"))
(define SDL_GetWindowMaximumSize (c-lambda (SDL_Window* int* int*) void "SDL_GetWindowMaximumSize"))
(define SDL_GetWindowMinimumSize (c-lambda (SDL_Window* int* int*) void "SDL_GetWindowMinimumSize"))
(define SDL_GetWindowPixelFormat (c-lambda (SDL_Window*) unsigned-int32 "SDL_GetWindowPixelFormat"))
(define SDL_GetWindowPosition (c-lambda (SDL_Window* int* int*) void "SDL_GetWindowPosition"))
(define SDL_GetWindowSize (c-lambda (SDL_Window* int* int*) void "SDL_GetWindowSize"))
(define SDL_GetWindowSurface (c-lambda (SDL_Window*) SDL_Surface* "SDL_GetWindowSurface"))
(define SDL_GetWindowTitle (c-lambda (SDL_Window*) nonnull-char-string "SDL_GetWindowTitle"))
(define SDL_GetWindowWMInfo (c-lambda (SDL_Window* SDL_SysWMinfo*) SDL_bool "SDL_GetWindowWMInfo"))
(cond-expand
 (sdl:haptic
  (define SDL_HapticClose (c-lambda (SDL_Haptic*) void "SDL_HapticClose"))
  (define SDL_HapticDestroyEffect (c-lambda (SDL_Haptic* int) void "SDL_HapticDestroyEffect"))
  (define SDL_HapticEffectSupported (c-lambda (SDL_Haptic* SDL_HapticEffect*) int "SDL_HapticEffectSupported"))
  (define SDL_HapticGetEffectStatus (c-lambda (SDL_Haptic* int) int "SDL_HapticGetEffectStatus"))
  (define SDL_HapticIndex (c-lambda (SDL_Haptic*) int "SDL_HapticIndex"))
  (define SDL_HapticName (c-lambda (int) nonnull-char-string "SDL_HapticName"))
  (define SDL_HapticNewEffect (c-lambda (SDL_Haptic* SDL_HapticEffect*) int "SDL_HapticNewEffect"))
  (define SDL_HapticNumAxes (c-lambda (SDL_Haptic*) int "SDL_HapticNumAxes"))
  (define SDL_HapticNumEffects (c-lambda (SDL_Haptic*) int "SDL_HapticNumEffects"))
  (define SDL_HapticNumEffectsPlaying (c-lambda (SDL_Haptic*) int "SDL_HapticNumEffectsPlaying"))
  (define SDL_HapticOpen (c-lambda (int) SDL_Haptic* "SDL_HapticOpen"))
  (cond-expand
   (sdl:joystick
    (define SDL_HapticOpenFromJoystick (c-lambda (SDL_Joystick*) SDL_Haptic* "SDL_HapticOpenFromJoystick")))
   (else #!void))
  (define SDL_HapticOpenFromMouse (c-lambda () SDL_Haptic* "SDL_HapticOpenFromMouse"))
  (define SDL_HapticOpened (c-lambda (int) int "SDL_HapticOpened"))
  (define SDL_HapticPause (c-lambda (SDL_Haptic*) int "SDL_HapticPause"))
  (define SDL_HapticQuery (c-lambda (SDL_Haptic*) unsigned-int "SDL_HapticQuery"))
  (define SDL_HapticRumbleInit (c-lambda (SDL_Haptic*) int "SDL_HapticRumbleInit"))
  (define SDL_HapticRumblePlay (c-lambda (SDL_Haptic* float unsigned-int32) int "SDL_HapticRumblePlay"))
  (define SDL_HapticRumbleStop (c-lambda (SDL_Haptic*) int "SDL_HapticRumbleStop"))
  (define SDL_HapticRumbleSupported (c-lambda (SDL_Haptic*) int "SDL_HapticRumbleSupported"))
  (define SDL_HapticRunEffect (c-lambda (SDL_Haptic* int unsigned-int32) int "SDL_HapticRunEffect"))
  (define SDL_HapticSetAutocenter (c-lambda (SDL_Haptic* int) int "SDL_HapticSetAutocenter"))
  (define SDL_HapticSetGain (c-lambda (SDL_Haptic* int) int "SDL_HapticSetGain"))
  (define SDL_HapticStopAll (c-lambda (SDL_Haptic*) int "SDL_HapticStopAll"))
  (define SDL_HapticStopEffect (c-lambda (SDL_Haptic* int) int "SDL_HapticStopEffect"))
  (define SDL_HapticUnpause (c-lambda (SDL_Haptic*) int "SDL_HapticUnpause"))
  (define SDL_HapticUpdateEffect (c-lambda (SDL_Haptic* int SDL_HapticEffect*) int "SDL_HapticUpdateEffect")))
 (else #!void))
(define SDL_Has3DNow (c-lambda () SDL_bool "SDL_Has3DNow"))
(define SDL_HasAltiVec (c-lambda () SDL_bool "SDL_HasAltiVec"))
(define SDL_HasAVX (c-lambda () SDL_bool "SDL_HasAVX"))
(define SDL_HasClipboardText (c-lambda () SDL_bool "SDL_HasClipboardText"))
(define SDL_HasEvent (c-lambda (unsigned-int32) SDL_bool "SDL_HasEvent"))
(define SDL_HasEvents (c-lambda (unsigned-int32 unsigned-int32) SDL_bool "SDL_HasEvents"))
(define SDL_HasIntersection (c-lambda (SDL_Rect* SDL_Rect*) SDL_bool "SDL_HasIntersection"))
(define SDL_HasMMX (c-lambda () SDL_bool "SDL_HasMMX"))
(define SDL_HasRDTSC (c-lambda () SDL_bool "SDL_HasRDTSC"))
(define SDL_HasSSE (c-lambda () SDL_bool "SDL_HasSSE"))
(define SDL_HasSSE2 (c-lambda () SDL_bool "SDL_HasSSE2"))
(define SDL_HasSSE3 (c-lambda () SDL_bool "SDL_HasSSE3"))
(define SDL_HasSSE41 (c-lambda () SDL_bool "SDL_HasSSE41"))
(define SDL_HasSSE42 (c-lambda () SDL_bool "SDL_HasSSE42"))
(define SDL_HasScreenKeyboardSupport (c-lambda () SDL_bool "SDL_HasScreenKeyboardSupport"))
(define SDL_HideWindow (c-lambda (SDL_Window*) void "SDL_HideWindow"))
(define SDL_Init (c-lambda (unsigned-int32) int "SDL_Init"))
(define SDL_InitSubSystem (c-lambda (unsigned-int32) int "SDL_InitSubSystem"))
(define SDL_IntersectRect (c-lambda (SDL_Rect* SDL_Rect* SDL_Rect*) SDL_bool "SDL_IntersectRect"))
(define SDL_IntersectRectAndLine (c-lambda (SDL_Rect* int* int* int* int*) SDL_bool "SDL_IntersectRectAndLine"))
(cond-expand
 (ios
  (define SDL_iPhoneSetAnimationCallback
    (c-lambda (SDL_Window* int (function (void*) void*) void*) int "SDL_iPhoneSetAnimationCallback")))
 (else #!void))
(cond-expand
 (sdl:game-controller
  (define SDL_IsGameController (c-lambda (int) SDL_bool "SDL_IsGameController")))
 (else #!void))
(define SDL_IsScreenKeyboardShown (c-lambda (SDL_Window*) SDL_bool "SDL_IsScreenKeyboardShown"))
(define SDL_IsScreenSaverEnabled (c-lambda () SDL_bool "SDL_IsScreenSaverEnabled"))
(define SDL_IsTextInputActive (c-lambda () SDL_bool "SDL_IsTextInputActive"))
(cond-expand
 (sdl:joystick
  (define SDL_JoystickClose (c-lambda (SDL_Joystick*) void "SDL_JoystickClose"))
  (define SDL_JoystickEventState (c-lambda (int) int "SDL_JoystickEventState"))
  (define SDL_JoystickGetAttached (c-lambda (SDL_Joystick*) SDL_bool "SDL_JoystickGetAttached"))
  (define SDL_JoystickGetAxis (c-lambda (SDL_Joystick* int) int16 "SDL_JoystickGetAxis"))
  (define SDL_JoystickGetBall (c-lambda (SDL_Joystick* int int* int*) int "SDL_JoystickGetBall"))
  (define SDL_JoystickGetButton (c-lambda (SDL_Joystick* int) unsigned-int8 "SDL_JoystickGetButton"))
  ;; (define SDL_JoystickGetDeviceGUID (c-lambda (int) SDL_JoystickGUID "SDL_JoystickGetDeviceGUID"))
  ;; (define SDL_JoystickGetGUID (c-lambda (SDL_Joystick*) SDL_JoystickGUID "SDL_JoystickGetGUID"))
  ;; (define SDL_JoystickGetGUIDFromString (c-lambda (nonnull-char-string) SDL_JoystickGUID "SDL_JoystickGetGUIDFromString"))
  ;; (define SDL_JoystickGetGUIDString (c-lambda (SDL_JoystickGUID nonnull-char-string int) void "SDL_JoystickGetGUIDString"))
  (define SDL_JoystickGetHat (c-lambda (SDL_Joystick* int) unsigned-int8 "SDL_JoystickGetHat"))
  (define SDL_JoystickInstanceID (c-lambda (SDL_Joystick*) SDL_JoystickID "SDL_JoystickInstanceID"))
  (define SDL_JoystickIsHaptic (c-lambda (SDL_Joystick*) int "SDL_JoystickIsHaptic"))
  (define SDL_JoystickName (c-lambda (SDL_Joystick*) nonnull-char-string "SDL_JoystickName"))
  (define SDL_JoystickNameForIndex (c-lambda (int) nonnull-char-string "SDL_JoystickNameForIndex"))
  (define SDL_JoystickNumAxes (c-lambda (SDL_Joystick*) int "SDL_JoystickNumAxes"))
  (define SDL_JoystickNumBalls (c-lambda (SDL_Joystick*) int "SDL_JoystickNumBalls"))
  (define SDL_JoystickNumButtons (c-lambda (SDL_Joystick*) int "SDL_JoystickNumButtons"))
  (define SDL_JoystickNumHats (c-lambda (SDL_Joystick*) int "SDL_JoystickNumHats"))
  (define SDL_JoystickOpen (c-lambda (int) SDL_Joystick* "SDL_JoystickOpen"))
  (define SDL_JoystickUpdate (c-lambda () void "SDL_JoystickUpdate")))
 (else #!void))
(define SDL_LoadBMP (c-lambda (nonnull-char-string) SDL_Surface* "SDL_LoadBMP"))
(define SDL_LoadBMP_RW (c-lambda (SDL_RWops* int) SDL_Surface* "SDL_LoadBMP_RW"))
(define SDL_LoadDollarTemplates (c-lambda (SDL_TouchID SDL_RWops*) int "SDL_LoadDollarTemplates"))
(define SDL_LoadFunction (c-lambda (void* nonnull-char-string) void* "SDL_LoadFunction"))
(define SDL_LoadObject (c-lambda (nonnull-char-string) void* "SDL_LoadObject"))
(define SDL_LoadWAV (c-lambda (nonnull-char-string SDL_AudioSpec* unsigned-int8** unsigned-int32*) SDL_AudioSpec* "SDL_LoadWAV"))
(define SDL_LoadWAV_RW (c-lambda (SDL_RWops* int SDL_AudioSpec* unsigned-int8** unsigned-int32*) SDL_AudioSpec* "SDL_LoadWAV_RW"))
(define SDL_LockAudio (c-lambda () void "SDL_LockAudio"))
(define SDL_LockAudioDevice (c-lambda (SDL_AudioDeviceID) void "SDL_LockAudioDevice"))
(define SDL_LockMutex (c-lambda (SDL_mutex*) int "SDL_LockMutex"))
(define SDL_LockSurface (c-lambda (SDL_Surface*) int "SDL_LockSurface"))
(define SDL_LockTexture (c-lambda (SDL_Texture* SDL_Rect* void** int*) int "SDL_LockTexture"))
(define SDL_Log (c-lambda (nonnull-char-string) void "SDL_Log(\"%s\", ___arg1);"))
(define SDL_LogCritical (c-lambda (int nonnull-char-string) void "SDL_LogCritical(___arg1, \"%s\", ___arg2);"))
(define SDL_LogDebug (c-lambda (int nonnull-char-string) void "SDL_LogDebug(___arg1, \"%s\", ___arg2);"))
(define SDL_LogError (c-lambda (int nonnull-char-string) void "SDL_LogError(___arg1, \"%s\", ___arg2);"))
(define SDL_LogGetOutputFunction (c-lambda (SDL_LogOutputFunction* void**) void "SDL_LogGetOutputFunction"))
(define SDL_LogGetPriority (c-lambda (int) SDL_LogPriority "SDL_LogGetPriority"))
(define SDL_LogInfo (c-lambda (int nonnull-char-string) void "SDL_LogInfo(___arg1, \"%s\", ___arg2);"))
(define SDL_LogMessage (c-lambda (int SDL_LogPriority nonnull-char-string) void "SDL_LogMessage(___arg1, ___arg2, \"%s\", ___arg3);"))
(define SDL_LogResetPriorities (c-lambda () void "SDL_LogResetPriorities"))
(define SDL_LogSetAllPriority (c-lambda (SDL_LogPriority) void "SDL_LogSetAllPriority"))
(define SDL_LogSetOutputFunction (c-lambda (SDL_LogOutputFunction void*) void "SDL_LogSetOutputFunction"))
(define SDL_LogSetPriority (c-lambda (int SDL_LogPriority) void "SDL_LogSetPriority"))
(define SDL_LogVerbose (c-lambda (int nonnull-char-string) void "SDL_LogVerbose(___arg1, \"%s\", ___arg2);"))
(define SDL_LogWarn (c-lambda (int nonnull-char-string) void "SDL_LogWarn(___arg1, \"%s\", ___arg2);"))
(define SDL_LowerBlit (c-lambda (SDL_Surface* SDL_Rect* SDL_Surface* SDL_Rect*) int "SDL_LowerBlit"))
(define SDL_LowerBlitScaled (c-lambda (SDL_Surface* SDL_Rect* SDL_Surface* SDL_Rect*) int "SDL_LowerBlitScaled"))
(define SDL_MUSTLOCK (c-lambda (SDL_Surface*) SDL_bool "SDL_MUSTLOCK"))
(define SDL_MapRGB (c-lambda (SDL_PixelFormat* unsigned-int8 unsigned-int8 unsigned-int8) unsigned-int32 "SDL_MapRGB"))
(define SDL_MapRGBA (c-lambda (SDL_PixelFormat* unsigned-int8 unsigned-int8 unsigned-int8 unsigned-int8) unsigned-int32 "SDL_MapRGBA"))
(define SDL_MasksToPixelFormatEnum (c-lambda (int unsigned-int32 unsigned-int32 unsigned-int32 unsigned-int32) unsigned-int32 "SDL_MasksToPixelFormatEnum"))
(define SDL_MaximizeWindow (c-lambda (SDL_Window*) void "SDL_MaximizeWindow"))
(define SDL_MinimizeWindow (c-lambda (SDL_Window*) void "SDL_MinimizeWindow"))
(define SDL_MixAudio (c-lambda (unsigned-int8* unsigned-int8* unsigned-int32 int) void "SDL_MixAudio"))
(define SDL_MixAudioFormat (c-lambda (unsigned-int8* unsigned-int8* SDL_AudioFormat unsigned-int32 int) void "SDL_MixAudioFormat"))
;;(define SDL_MostSignificantBitIndex32 (c-lambda (unsigned-int32) int "SDL_MostSignificantBitIndex32"))
(define SDL_MouseIsHaptic (c-lambda () int "SDL_MouseIsHaptic"))
(define SDL_NumHaptics (c-lambda () int "SDL_NumHaptics"))
(cond-expand
 (sdl:joystick
  (define SDL_NumJoysticks (c-lambda () int "SDL_NumJoysticks")))
 (else #!void))
(define SDL_OpenAudio (c-lambda (SDL_AudioSpec* SDL_AudioSpec*) int "SDL_OpenAudio"))
(define SDL_OpenAudioDevice (c-lambda (nonnull-char-string int SDL_AudioSpec* SDL_AudioSpec* int) SDL_AudioDeviceID "SDL_OpenAudioDevice"))
(define SDL_PauseAudio (c-lambda (int) void "SDL_PauseAudio"))
(define SDL_PauseAudioDevice (c-lambda (SDL_AudioDeviceID int) void "SDL_PauseAudioDevice"))
(define SDL_PeepEvents (c-lambda (SDL_Event* int SDL_eventaction unsigned-int32 unsigned-int32) int "SDL_PeepEvents"))
(define SDL_PixelFormatEnumToMasks (c-lambda (unsigned-int32 int* unsigned-int32* unsigned-int32* unsigned-int32* unsigned-int32*) SDL_bool "SDL_PixelFormatEnumToMasks"))
(define SDL_PollEvent (c-lambda (SDL_Event*) int "SDL_PollEvent"))
(define SDL_PumpEvents (c-lambda () void "SDL_PumpEvents"))
(define SDL_PushEvent (c-lambda (SDL_Event*) int "SDL_PushEvent"))
(define SDL_QueryTexture (c-lambda (SDL_Texture* unsigned-int32* int* int* int*) int "SDL_QueryTexture"))
(define SDL_Quit (c-lambda () void "SDL_Quit"))
(define SDL_QuitRequested (c-lambda () SDL_bool "SDL_QuitRequested"))
(define SDL_QuitSubSystem (c-lambda (unsigned-int32) void "SDL_QuitSubSystem"))
(define SDL_RWFromConstMem (c-lambda (void* int) SDL_RWops* "SDL_RWFromConstMem"))
(define SDL_RWFromFP (c-lambda (void* SDL_bool) SDL_RWops* "SDL_RWFromFP"))
(define SDL_RWFromFile (c-lambda (nonnull-char-string nonnull-char-string) SDL_RWops* "SDL_RWFromFile"))
(define SDL_RWFromMem (c-lambda (void* int) SDL_RWops* "SDL_RWFromMem"))
(define SDL_RWclose (c-lambda (SDL_RWops*) int "SDL_RWclose"))
(define SDL_RWread (c-lambda (SDL_RWops* void* size-t size-t) size-t "SDL_RWread"))
(define SDL_RWseek (c-lambda (SDL_RWops* int64 int) int64 "SDL_RWseek"))
(define SDL_RWsize (c-lambda (SDL_RWops*) size_t "SDL_RWsize"))
(define SDL_RWtell (c-lambda (SDL_RWops*) int64 "SDL_RWtell"))
(define SDL_RWwrite (c-lambda (SDL_RWops* void* size-t size-t) size-t "SDL_RWwrite"))
(define SDL_RaiseWindow (c-lambda (SDL_Window*) void "SDL_RaiseWindow"))
(define SDL_ReadBE16 (c-lambda (SDL_RWops*) unsigned-int16 "SDL_ReadBE16"))
(define SDL_ReadBE32 (c-lambda (SDL_RWops*) unsigned-int32 "SDL_ReadBE32"))
(define SDL_ReadBE64 (c-lambda (SDL_RWops*) unsigned-int64 "SDL_ReadBE64"))
(define SDL_ReadLE16 (c-lambda (SDL_RWops*) unsigned-int16 "SDL_ReadLE16"))
(define SDL_ReadLE32 (c-lambda (SDL_RWops*) unsigned-int32 "SDL_ReadLE32"))
(define SDL_ReadLE64 (c-lambda (SDL_RWops*) unsigned-int64 "SDL_ReadLE64"))
(define SDL_RecordGesture (c-lambda (SDL_TouchID) int "SDL_RecordGesture"))
(define SDL_RectEmpty (c-lambda (SDL_Rect*) SDL_bool "SDL_RectEmpty"))
(define SDL_RectEquals (c-lambda (SDL_Rect* SDL_Rect*) SDL_bool "SDL_RectEquals"))
(define SDL_RegisterEvents (c-lambda (int) unsigned-int32 "SDL_RegisterEvents"))
(define SDL_RemoveTimer (c-lambda (SDL_TimerID) SDL_bool "SDL_RemoveTimer"))
(define SDL_RenderClear (c-lambda (SDL_Renderer*) int "SDL_RenderClear"))
(define SDL_RenderCopy (c-lambda (SDL_Renderer* SDL_Texture* SDL_Rect* SDL_Rect*) int "SDL_RenderCopy"))
(define SDL_RenderCopyEx (c-lambda (SDL_Renderer* SDL_Texture* SDL_Rect* SDL_Rect* double SDL_Point* SDL_RendererFlip) int "SDL_RenderCopyEx"))
(define SDL_RenderDrawLine (c-lambda (SDL_Renderer* int int int int) int "SDL_RenderDrawLine"))
(define SDL_RenderDrawLines (c-lambda (SDL_Renderer* SDL_Point* int) int "SDL_RenderDrawLines"))
(define SDL_RenderDrawPoint (c-lambda (SDL_Renderer* int int) int "SDL_RenderDrawPoint"))
(define SDL_RenderDrawPoints (c-lambda (SDL_Renderer* SDL_Point* int) int "SDL_RenderDrawPoints"))
(define SDL_RenderDrawRect (c-lambda (SDL_Renderer* SDL_Rect*) int "SDL_RenderDrawRect"))
(define SDL_RenderDrawRects (c-lambda (SDL_Renderer* SDL_Rect* int) int "SDL_RenderDrawRects"))
(define SDL_RenderFillRect (c-lambda (SDL_Renderer* SDL_Rect*) int "SDL_RenderFillRect"))
(define SDL_RenderFillRects (c-lambda (SDL_Renderer* SDL_Rect* int) int "SDL_RenderFillRects"))
(define SDL_RenderGetClipRect (c-lambda (SDL_Renderer* SDL_Rect*) void "SDL_RenderGetClipRect"))
(define SDL_RenderGetLogicalSize (c-lambda (SDL_Renderer* int* int*) void "SDL_RenderGetLogicalSize"))
(define SDL_RenderGetScale (c-lambda (SDL_Renderer* float* float*) void "SDL_RenderGetScale"))
(define SDL_RenderGetViewport (c-lambda (SDL_Renderer* SDL_Rect*) void "SDL_RenderGetViewport"))
(define SDL_RenderPresent (c-lambda (SDL_Renderer*) void "SDL_RenderPresent"))
(define SDL_RenderReadPixels (c-lambda (SDL_Renderer* SDL_Rect* unsigned-int32 void* int) int "SDL_RenderReadPixels"))
(define SDL_RenderSetClipRect (c-lambda (SDL_Renderer* SDL_Rect*) int "SDL_RenderSetClipRect"))
(define SDL_RenderSetLogicalSize (c-lambda (SDL_Renderer* int int) int "SDL_RenderSetLogicalSize"))
(define SDL_RenderSetScale (c-lambda (SDL_Renderer* float float) int "SDL_RenderSetScale"))
(define SDL_RenderSetViewport (c-lambda (SDL_Renderer* SDL_Rect*) int "SDL_RenderSetViewport"))
(define SDL_RenderTargetSupported (c-lambda (SDL_Renderer*) SDL_bool "SDL_RenderTargetSupported"))
(cond-expand
 (sdl:assert
  (define SDL_ResetAssertionReport (c-lambda () void "SDL_ResetAssertionReport")))
 (else #!void))
(define SDL_RestoreWindow (c-lambda (SDL_Window*) void "SDL_RestoreWindow"))
(define SDL_SaveAllDollarTemplates (c-lambda (SDL_RWops*) int "SDL_SaveAllDollarTemplates"))
(define SDL_SaveBMP (c-lambda (SDL_Surface* nonnull-char-string) int "SDL_SaveBMP"))
(define SDL_SaveBMP_RW (c-lambda (SDL_Surface* SDL_RWops* int) int "SDL_SaveBMP_RW"))
(define SDL_SaveDollarTemplate (c-lambda (SDL_GestureID SDL_RWops*) int "SDL_SaveDollarTemplate"))
(cond-expand
 (sdl:threads
  (define SDL_SemPost (c-lambda (SDL_sem*) int "SDL_SemPost"))
  (define SDL_SemTryWait (c-lambda (SDL_sem*) int "SDL_SemTryWait"))
  (define SDL_SemValue (c-lambda (SDL_sem*) unsigned-int32 "SDL_SemValue"))
  (define SDL_SemWait (c-lambda (SDL_sem*) int "SDL_SemWait"))
  (define SDL_SemWaitTimeout (c-lambda (SDL_sem* unsigned-int32) int "SDL_SemWaitTimeout")))
 (else #!void))
(cond-expand
 (sdl:assert
  (define SDL_SetAssertionHandler (c-lambda (SDL_AssertionHandler void*) void "SDL_SetAssertionHandler")))
 (else #!void))
(define SDL_SetClipRect (c-lambda (SDL_Surface* SDL_Rect*) SDL_bool "SDL_SetClipRect"))
(define SDL_SetClipboardText (c-lambda (nonnull-char-string) int "SDL_SetClipboardText"))
(define SDL_SetColorKey (c-lambda (SDL_Surface* int unsigned-int32) int "SDL_SetColorKey"))
(define SDL_SetCursor (c-lambda (SDL_Cursor*) void "SDL_SetCursor"))
(define SDL_SetError (c-lambda (nonnull-char-string) int "SDL_SetError(\"%s\", ___arg1);"))
(define SDL_SetEventFilter (c-lambda (SDL_EventFilter void*) void "SDL_SetEventFilter"))
(define SDL_SetHint (c-lambda (nonnull-char-string nonnull-char-string) SDL_bool "SDL_SetHint"))
(define SDL_SetHintWithPriority (c-lambda (nonnull-char-string nonnull-char-string SDL_HintPriority) SDL_bool "SDL_SetHintWithPriority"))
(define SDL_SetMainReady (c-lambda () void "SDL_SetMainReady"))
(define SDL_SetModState (c-lambda (SDL_Keymod) void "SDL_SetModState"))
(define SDL_SetPaletteColors (c-lambda (SDL_Palette* SDL_Color* int int) int "SDL_SetPaletteColors"))
(define SDL_SetPixelFormatPalette (c-lambda (SDL_PixelFormat* SDL_Palette*) int "SDL_SetPixelFormatPalette"))
(define SDL_SetRelativeMouseMode (c-lambda (SDL_bool) int "SDL_SetRelativeMouseMode"))
(define SDL_SetRenderDrawBlendMode (c-lambda (SDL_Renderer* SDL_BlendMode) int "SDL_SetRenderDrawBlendMode"))
(define SDL_SetRenderDrawColor (c-lambda (SDL_Renderer* unsigned-int8 unsigned-int8 unsigned-int8 unsigned-int8) int "SDL_SetRenderDrawColor"))
(define SDL_SetRenderTarget (c-lambda (SDL_Renderer* SDL_Texture*) int "SDL_SetRenderTarget"))
(define SDL_SetSurfaceAlphaMod (c-lambda (SDL_Surface* unsigned-int8) int "SDL_SetSurfaceAlphaMod"))
(define SDL_SetSurfaceBlendMode (c-lambda (SDL_Surface* SDL_BlendMode) int "SDL_SetSurfaceBlendMode"))
(define SDL_SetSurfaceColorMod (c-lambda (SDL_Surface* unsigned-int8 unsigned-int8 unsigned-int8) int "SDL_SetSurfaceColorMod"))
(define SDL_SetSurfacePalette (c-lambda (SDL_Surface* SDL_Palette*) int "SDL_SetSurfacePalette"))
(define SDL_SetSurfaceRLE (c-lambda (SDL_Surface* int) int "SDL_SetSurfaceRLE"))
(define SDL_SetTextInputRect (c-lambda (SDL_Rect*) void "SDL_SetTextInputRect"))
(define SDL_SetTextureAlphaMod (c-lambda (SDL_Texture* unsigned-int8) int "SDL_SetTextureAlphaMod"))
(define SDL_SetTextureBlendMode (c-lambda (SDL_Texture* SDL_BlendMode) int "SDL_SetTextureBlendMode"))
(define SDL_SetTextureColorMod (c-lambda (SDL_Texture* unsigned-int8 unsigned-int8 unsigned-int8) int "SDL_SetTextureColorMod"))
(cond-expand
 (sdl:threads
  (define SDL_SetThreadPriority (c-lambda (SDL_ThreadPriority) int "SDL_SetThreadPriority")))
 (else #!void))
(define SDL_SetWindowBordered (c-lambda (SDL_Window* SDL_bool) void "SDL_SetWindowBordered"))
(define SDL_SetWindowBrightness (c-lambda (SDL_Window* float) int "SDL_SetWindowBrightness"))
(define SDL_SetWindowData (c-lambda (SDL_Window* nonnull-char-string void*) void* "SDL_SetWindowData"))
(define SDL_SetWindowDisplayMode (c-lambda (SDL_Window* SDL_DisplayMode*) int "SDL_SetWindowDisplayMode"))
(define SDL_SetWindowFullscreen (c-lambda (SDL_Window* unsigned-int32) int "SDL_SetWindowFullscreen"))
(define SDL_SetWindowGammaRamp (c-lambda (SDL_Window* unsigned-int16* unsigned-int16* unsigned-int16*) int "SDL_SetWindowGammaRamp"))
(define SDL_SetWindowGrab (c-lambda (SDL_Window* SDL_bool) void "SDL_SetWindowGrab"))
(define SDL_SetWindowIcon (c-lambda (SDL_Window* SDL_Surface*) void "SDL_SetWindowIcon"))
(define SDL_SetWindowMaximumSize (c-lambda (SDL_Window* int int) void "SDL_SetWindowMaximumSize"))
(define SDL_SetWindowMinimumSize (c-lambda (SDL_Window* int int) void "SDL_SetWindowMinimumSize"))
(define SDL_SetWindowPosition (c-lambda (SDL_Window* int int) void "SDL_SetWindowPosition"))
(define SDL_SetWindowSize (c-lambda (SDL_Window* int int) void "SDL_SetWindowSize"))
(define SDL_SetWindowTitle (c-lambda (SDL_Window* nonnull-char-string) void "SDL_SetWindowTitle"))
(define SDL_ShowCursor (c-lambda (int) int "SDL_ShowCursor"))
(define SDL_ShowMessageBox (c-lambda (SDL_MessageBoxData* int*) int "SDL_ShowMessageBox"))
(define SDL_ShowSimpleMessageBox (c-lambda (unsigned-int32 nonnull-char-string nonnull-char-string SDL_Window*) int "SDL_ShowSimpleMessageBox"))
(define SDL_ShowWindow (c-lambda (SDL_Window*) void "SDL_ShowWindow"))
(define SDL_StartTextInput (c-lambda () void "SDL_StartTextInput"))
(define SDL_StopTextInput (c-lambda () void "SDL_StopTextInput"))
(define SDL_Swap16 (c-lambda (unsigned-int16) unsigned-int16 "SDL_Swap16"))
(define SDL_Swap32 (c-lambda (unsigned-int32) unsigned-int32 "SDL_Swap32"))
(define SDL_Swap64 (c-lambda (unsigned-int64) unsigned-int64 "SDL_Swap64"))
(define SDL_SwapBE16 (c-lambda (unsigned-int16) unsigned-int16 "SDL_SwapBE16"))
(define SDL_SwapBE32 (c-lambda (unsigned-int32) unsigned-int32 "SDL_SwapBE32"))
(define SDL_SwapBE64 (c-lambda (unsigned-int64) unsigned-int64 "SDL_SwapBE64"))
(define SDL_SwapFloat (c-lambda (float) float "SDL_SwapFloat"))
(define SDL_SwapFloatBE (c-lambda (float) float "SDL_SwapFloatBE"))
(define SDL_SwapFloatLE (c-lambda (float) float "SDL_SwapFloatLE"))
(define SDL_SwapLE16 (c-lambda (unsigned-int16) unsigned-int16 "SDL_SwapLE16"))
(define SDL_SwapLE32 (c-lambda (unsigned-int32) unsigned-int32 "SDL_SwapLE32"))
(define SDL_SwapLE64 (c-lambda (unsigned-int64) unsigned-int64 "SDL_SwapLE64"))
(cond-expand
 (sdl:threads
  (define SDL_TLSCreate (c-lambda () SDL_TLSID "SDL_TLSCreate"))
  (define SDL_TLSGet (c-lambda (SDL_TLSID) void* "SDL_TLSGet"))
  (define SDL_ThreadID (c-lambda () SDL_threadID "SDL_ThreadID")))
 (else #!void))
(define SDL_TriggerBreakpoint (c-lambda () void "SDL_TriggerBreakpoint"))
(define SDL_TryLockMutex (c-lambda (SDL_mutex*) int "SDL_TryLockMutex"))
(define SDL_UnionRect (c-lambda (SDL_Rect* SDL_Rect* SDL_Rect*) void "SDL_UnionRect"))
(define SDL_UnloadObject (c-lambda (void*) void "SDL_UnloadObject"))
(define SDL_UnlockAudio (c-lambda () void "SDL_UnlockAudio"))
(define SDL_UnlockAudioDevice (c-lambda (SDL_AudioDeviceID) void "SDL_UnlockAudioDevice"))
(define SDL_UnlockMutex (c-lambda (SDL_mutex*) int "SDL_UnlockMutex"))
(define SDL_UnlockSurface (c-lambda (SDL_Surface*) void "SDL_UnlockSurface"))
(define SDL_UnlockTexture (c-lambda (SDL_Texture*) void "SDL_UnlockTexture"))
(define SDL_UpdateTexture (c-lambda (SDL_Texture* SDL_Rect* void* int) int "SDL_UpdateTexture"))
(define SDL_UpdateWindowSurface (c-lambda (SDL_Window*) int "SDL_UpdateWindowSurface"))
(define SDL_UpdateWindowSurfaceRects (c-lambda (SDL_Window* SDL_Rect* int) int "SDL_UpdateWindowSurfaceRects"))
(define SDL_UpdateYUVTexture (c-lambda (SDL_Texture* SDL_Rect* unsigned-int8* int unsigned-int8* int unsigned-int8* int) int "SDL_UpdateYUVTexture"))
(define SDL_VideoInit (c-lambda (nonnull-char-string) int "SDL_VideoInit"))
(define SDL_VideoQuit (c-lambda () void "SDL_VideoQuit"))
(define SDL_WaitEvent (c-lambda (SDL_Event*) int "SDL_WaitEvent"))
(define SDL_WaitEventTimeout (c-lambda (SDL_Event* int) int "SDL_WaitEventTimeout"))
(cond-expand
 (sdl:threads
  (define SDL_WaitThread (c-lambda (SDL_Thread* int*) void "SDL_WaitThread")))
 (else #!void))
(define SDL_WarpMouseInWindow (c-lambda (SDL_Window* int int) void "SDL_WarpMouseInWindow"))
(define SDL_WasInit (c-lambda (unsigned-int32) unsigned-int32 "SDL_WasInit"))
(define SDL_WriteBE16 (c-lambda (SDL_RWops* unsigned-int16) size-t "SDL_WriteBE16"))
(define SDL_WriteBE32 (c-lambda (SDL_RWops* unsigned-int32) size-t "SDL_WriteBE32"))
(define SDL_WriteBE64 (c-lambda (SDL_RWops* unsigned-int64) size-t "SDL_WriteBE64"))
(define SDL_WriteLE16 (c-lambda (SDL_RWops* unsigned-int16) size-t "SDL_WriteLE16"))
(define SDL_WriteLE32 (c-lambda (SDL_RWops* unsigned-int32) size-t "SDL_WriteLE32"))
(define SDL_WriteLE64 (c-lambda (SDL_RWops* unsigned-int64) size-t "SDL_WriteLE64"))

;;-------------------------------------------------------------------------------
;; Helpers and Extensions

;;!! SDL Events Filter

;; Default SDL Events Filter
(cond-expand
 (ios
  (define *current-sdl-events-filter*
    (lambda (userdata event)
      ;; In iOS is highly recommended to use an Events Filter, thus we let the user know
      (cond-expand
       (ios (SDL_Log "SDL Events Filter is not set"))
       (else #!void))
      1))

  ;; Set a new Event Filter
  (define (sdl-events-filter-set! proc)
    (set! *current-sdl-events-filter* proc))

  ;; C function serving as a proxy for Event Filters in Scheme
  (c-define (*sdl-events-filter-proxy* userdata event)
            (void* SDL_Event*) int "SDL_events_filter_proxy" ""
            (*current-sdl-events-filter* userdata event))

  ;;!! SDL iOS Animation callback

  ;; Default SDL iOS animation callback
  (define *current-sdl-ios-animation-callback*
    (let ((once #t))
      (lambda (params)
        (if once
            (begin (SDL_Log "SDL Animation Callback is not set")
                   (set! once #f))))))

  ;; Set a new Event Filter
  (define (sdl-ios-animation-callback-set! proc)
    (set! *current-sdl-ios-animation-callback* proc))

  ;; C function serving as a proxy for Event Filters in Scheme
  (c-define (*sdl-ios-animation-callback-proxy* params)
            (void*) void "SDL_ios_animation_callback_proxy" ""
            (*current-sdl-ios-animation-callback* params)))
 (else #!void))
