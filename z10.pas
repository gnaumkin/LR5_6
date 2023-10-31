program RemoveNegativeElements;
var
  arr: array[1..20] of Integer;
  i, j, n: Integer;
begin
  Randomize;
  
  // Заполняем массив случайными числами
  for i := 1 to 20 do
    arr[i] := Random(100) - 50; // Генерируем числа от -50 до 49

  // Выводим исходный массив
  WriteLn('Исходный массив:');
  for i := 1 to 20 do
    Write(arr[i], ' ');

  // Удаляем отрицательные элементы
  n := 0; // Индекс для нового массива
  for i := 1 to 20 do
  begin
    if arr[i] >= 0 then
    begin
      n := n + 1;
      arr[n] := arr[i];
    end;
  end;

  // Заполняем оставшуюся часть массива нулями
  for i := n + 1 to 20 do
    arr[i] := 0;

  // Выводим массив без отрицательных элементов
  WriteLn;
  WriteLn('Массив без отрицательных элементов:');
  for i := 1 to 20 do
    Write(arr[i], ' ');

  ReadLn;
end.
