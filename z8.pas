program z8;
var
  arr: array of integer;
  n, i, j, mc, mfn, cc: integer;
begin
  Write('Введите размер массива: ');
  ReadLn(n);
  SetLength(arr, n);
  WriteLn('Введите элементы массива:');
  for i := 0 to n - 1 do
    ReadLn(arr[i]);
  mc := 0;
  mfn := 0;
  for i := 0 to n - 1 do
  begin
    cc := 0;
    for j := 0 to n - 1 do
    begin
      if arr[j] = arr[i] then
        Inc(cc);
    end;
    if cc > mc then
    begin
      mc := cc;
      mfn := arr[i];
    end;
  end;
  WriteLn('Наиболее часто повторяющееся число: ', mfn);
  WriteLn('Количество повторений: ', mc);
end.