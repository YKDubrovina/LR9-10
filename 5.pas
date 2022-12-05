program lab_9_zadanie_5;

const
  n = 5;

var
  a: array[1..n] of integer;
  b: array[1..n] of integer;
  index_a, index_b, max_a, max_b, max_index_a, max_index_b, min_a, min_b, min_index_a, min_index_b, i,k: integer;
procedure max_array_a();
var i:integer;
begin
    for i := 1 to n do
    if a[i] > max_a then
    begin
      max_a := a[i];
      max_index_a := i;
    end;
end;
procedure max_array_b();
var i:integer;
begin
   for i := 1 to n do
    if b[i] > max_b then
    begin
      max_b := b[i];
      max_index_b := i;
    end;
end;
procedure min_array_a();
begin
  var i:integer;
  min_a := max_a;
  for i := 1 to n do
    if a[i] < min_a then
    begin
      min_a := a[i];
      min_index_a := i;
    end;
end;
procedure min_array_b();
  var i:integer;
  begin
   min_b := max_b;
   for i := 1 to n do
    if b[i] < min_b then
    begin
      min_b := b[i];
      min_index_b := i;
    end; 
  end;
begin
  for i := 1 to n do
  begin
    write('a[', i, '] = ');
    read(a[i]);
  end;
  for i := 1 to n do
  begin
    write('b[', i, '] = ');
    read(b[i]);
  end;
  write('Массив a: ', a);
  writeln(' Массив b: ', b);
  max_array_a();
  min_array_a();
  max_array_b();
  min_array_b();
  for i := 1 to n do
    if (a[i] mod 5 = 0) then
      index_a := i;
  for i := 1 to n do
    if (b[i] mod 5 = 0) then
      index_b := i;
  writeln('Ответ: ');
  if index_a < index_b then
    for i := 1 to n do
    begin
      a[max_index_a] := 0;
    end
  else
    for i := 1 to n do
    begin
      b[max_index_b] := 0;
    end;

  if index_a < index_b then
    for i := min_index_b + 1 to n do
    begin
      b[i] := b[i] * 2;
    end
  else
    for i := min_index_a + 1 to n do
    begin
      a[i] := a[i] * 2;
    end;
    writeln(b);
    writeln(a);
end.
