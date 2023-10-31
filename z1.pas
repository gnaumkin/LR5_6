program z1;
var
  arr: array[1..20] of Integer;
  i: Integer;
begin
  Writeln('Введите элементы массива:');
  for i := 1 to 20 do
  begin
    readln(arr[i]);
  end;
  Writeln('Массив до преобразования:');
  for i := 1 to 20 do
  begin
    Write(arr[i], ' ');
  end;
  Writeln;
  for i := 1 to 20 do
  begin
    if arr[i] > 0 then
    begin
      arr[i] := 0;
    end
    else if arr[i] < 0 then
    begin
      arr[i] := arr[i] * arr[i];
    end;
  end;
  Writeln('Массив после преобразования:');
  for i := 1 to 20 do
  begin
    Write(arr[i], ' ');
  end;
end.