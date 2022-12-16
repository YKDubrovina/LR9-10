program q5;
var a:array [1..8,1..8] of integer; b:array [1..8] of integer; i,j,max:integer;
begin
  max:=0;
  for i:=1 to 8 do
    for j:=1 to 8 do begin
      a[i, j] := random(25) - 3;
    end;
    for i:=1 to 8 do begin
      for j:=1 to 8 do
    write(a[i,j]:4);
      writeln();
      end;
      for i:=1 to 8 do
    for j:=1 to 8 do
    begin
      if a[i,j]>max then max:=a[i,j];
      end;
      for i:=1 to 8 do
    for j:=1 to 8 do
      begin
        if a[i,j]=max then begin
        b[i]:=1;
        break;
        end
      else
          b[i]:=-1;
    end;
  println(b);
end.
