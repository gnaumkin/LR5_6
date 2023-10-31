program z7;
const
  N = 10; // Размер массива
var
  Arr: array[1..N] of integer;
  i, currentLength, maxLength: integer;
begin
  // Заполнение массива (для примера, вы можете ввести свои значения)
  writeln('Введите элементы массива:');
  for i := 1 to N do
  begin
    write('Элемент ', i, ': ');
    readln(Arr[i]);
  end;
  currentLength := 1; // Текущая длина неубывающего участка
  maxLength := 1;   // Максимальная длина неубывающего участка
  for i := 2 to N do
  begin
    if Arr[i] >= Arr[i - 1] then
      currentLength := currentLength + 1
    else
    begin
      if currentLength > maxLength then
        maxLength := currentLength;
      currentLength := 1;
    end;
  end;
  if currentLength > maxLength then
    maxLength := currentLength;
  writeln('Максимальная длина неубывающего участка: ', maxLength);
end.