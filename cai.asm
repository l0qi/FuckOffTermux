format PE console

entry start

include 'win32a.inc'

section '.data' data readable writable

        formatStr db '%s', 0

        name rd 2

        wh db 'Download termux?:', 0
        hello db 'FUCK OFF YOU FUCKIN STUPID DOG!! YOU MUST DIE!! BLYT DIE NAXYI', 0
        NULL = 0

section '.code' readable executable

        start:
                push wh
                call [printf]

                push name
                push formatStr
                call [scanf]

                push name
                push hello
                call [printf]

                call [getch]

                push NULL
                call [ExitProcess]



section '.idata' import data readable

        library kernel, 'kernel32.dll',\
               msvcrt, 'msvcrt.dll'

        import kernel,\
               ExitProcess, 'ExitProcess'

        import msvcrt,\
               printf, 'printf',\
               getch, '_getch',\
               scanf, 'scanf'
