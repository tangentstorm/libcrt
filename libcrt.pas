{$mode objfpc}{$h+}
library libcrt;
uses crt;

function kvm_readln : pchar;  stdcall;
  var s : string;
  begin readln(s); result := PChar(s);
  end;

procedure kvm_fg(i:byte); stdcall;
  begin textcolor(i); if i > 8 then highvideo else lowvideo
  end;

procedure kvm_bg(i:byte);       stdcall; begin textbackground(i) end; 
procedure kvm_sound(hz:word);   stdcall; begin crt.sound(hz) end;
procedure kvm_nosound;          stdcall; begin crt.nosound end;
procedure kvm_cursoron;         stdcall; begin crt.cursoron end;
procedure kvm_cursoroff;        stdcall; begin crt.cursoroff end;
procedure kvm_clrscr;           stdcall; begin crt.clrscr end;
procedure kvm_clreol;           stdcall; begin crt.clreol end;
procedure kvm_insline;          stdcall; begin crt.insline end;
procedure kvm_delline;          stdcall; begin crt.delline end;
procedure kvm_gotoxy(x,y:byte); stdcall; begin crt.gotoxy(x,y) end;
function kvm_wherex:word;  stdcall; begin result := crt.wherex end;
function kvm_wherey:word;  stdcall; begin result := crt.wherey end;
function kvm_readkey:char; stdcall; begin result := crt.readkey end;
function kvm_xmax:word;    stdcall; begin result := crt.windmaxx end;
function kvm_ymax:word;    stdcall; begin result := crt.windmaxy end;
  
exports
  kvm_readln, kvm_fg, kvm_bg,
  kvm_sound,  kvm_nosound, kvm_cursoron, kvm_cursoroff,
  kvm_clrscr, kvm_clreol, kvm_insline, kvm_delline, kvm_gotoxy,
  kvm_wherex, kvm_wherey, kvm_readkey, kvm_xmax, kvm_ymax;
end.
