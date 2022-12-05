program lab_9_zadanie_2;

const
  n = 5;

var
  a: array[1..n] of integer;
  b, min, max, max_minus, i, j, ans: integer;

procedure punkt_1();
var
  b: integer;
begin
  ans := abs(a[1]);
  i := 1;
  for b := 1 to n do
    if abs(a[b]) < abs(ans) then
    begin
      ans := a[b];
      i := b;
    end;
end;

procedure punkt_2();
var
  b: integer;
begin
  max_minus := -9999;
  j := 1;
  for b := 1 to n do
    if (a[b] < 0) and (a[b] > max_minus) then
    begin
      max_minus := a[b];
      j := b;
    end;
end;

begin
  for b := 1 to n do
  begin
    write('a[', b, '] = ');
    read(a[b]);
  end;
  max := a[1];
  min := abs(a[1]);
  punkt_1();
  punkt_2();
  writeln('Минимальное число по модулю: ', ans, ', его индекс: ', i); 
  writeln('Максимальное отрицательное число: ', max_minus, ', его индекс: ', j);
end.