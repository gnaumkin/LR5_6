program z5;
var
  A, B: array[1..10] of integer;
  SumA, SumB: integer;
  i: integer;
begin
  // Заполнение массивов A и B случайными числами
  randomize;
  for i := 1 to 10 do
    A[i] := random(21) - 10; // Генерируем числа от -10 до 10
  for i := 1 to 10 do
    B[i] := random(21) - 10; // Генерируем числа от -10 до 10
  // Вычисление сумм положительных элементов в массивах A и B
  SumA := 0;
  SumB := 0;
  for i := 1 to 10 do
  begin
    if A[i] > 0 then
      SumA := SumA + A[i];
    if B[i] > 0 then
      SumB := SumB + B[i];
  end;
  // Умножение элементов массива с меньшей суммой положительных чисел на 10
  if SumA < SumB then
  begin
    writeln('Массив A:');
    for i := 1 to 10 do
    begin
      A[i] := A[i] * 10;
      writeln(A[i]);
    end;
  end
  else
  begin
    writeln('Массив B:');
    for i := 1 to 10 do
    begin
      B[i] := B[i] * 10;
      writeln(B[i]);
    end;
  end;
end.