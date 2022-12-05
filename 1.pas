program lab_9_zadacha_1;
const n = 5;
var
  a:array of integer;
  i,ans,mult:integer;
  function proverka(var a : array of integer) : integer;
   begin
     var 
       i,f:integer;
     mult:=1;
     f:=1;
     for i:= 0 to n-1 do
     if (a[i] mod 2 = 0) then
     begin
     mult:=mult*a[i];
     end; 
   end;
begin
  setlength(a, n);
  for i:= 0 to n-1 do
  begin
    write('a[',i,'] = ');
    read(a[i]);
   end;
   ans:=proverka(a);
   writeln('Ответ: ', mult);
end.