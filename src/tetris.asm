
#include "include/ti84pce.inc"

.assume ADL=1
.org userMem-2
.db tExtTok,tAsm84CeCmp

start:
  call _homeup
  call _ClrScrnFull
  ld hl,0
  ld (curRow),hl
  ld hl,0
  ld (curCol),hl
loop:
  ld hl,Hello
  call _PutS
  ; Return to loop
  jr loop
clean: ; Never really gets called anyway...
  call _ClrScrnFull
  res donePrgm,(iy+doneFlags)
  ret

Hello:
 .db "Hello, World!",0
