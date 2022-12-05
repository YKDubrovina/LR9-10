program lab_9_zadanie_4;
const n=5;
var
  a:array[1..n] of integer;
  b:array[1..n] of integer;
  sum_a, sum_b, i:integer;
begin
  for i:=1 to n do
  begin
    write('a[',i,'] = ');
    read(a[i]);
  end;
  for i:=1 to n do
  begin
    write('b[',i,'] = ');
    read(b[i]);
  end;
  for i:=1 to n do
    if a[i] > 0 then
    begin
      sum_a:=sum_a + a[i];
    end;
  for i:=1 to n do
    if b[i] > 0 then
    begin
      sum_b:=sum_b + b[i];
    end;
  if sum_a < sum_b then
    for i:=1 to n do
    begin
      a[i]:=a[i]*10;
      write(a[i]:4);
    end
  else
    for i:=1 to n do
    begin
      b[i]:=b[i]*10;
      write(b[i]:4);
    end;
end.