program lab_9_zadanie_3;
const n=5;
var
  a:array of integer;
  i,ans,k:integer;
function answer (var a : array of integer) : integer;
  begin
    var
      i:integer;
    for i:= 0 to n - 1 do 
      if a[i] < 0 then
      begin
        ans:=i;
      end;
  end;
begin
   setlength(a, n);
    for i:= 0 to n-1 do
  begin
    write('a[',i,'] = ');
    read(a[i]);
  end;
  k:=answer(a);
   writeln('Ответ: ', ans);
end.
