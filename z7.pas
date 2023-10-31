program z7;
const
  N = 10; // Размер массива
var
  Arr: array[1..N] of integer;
  i, cl, maxl: integer;
begin
  // Заполнение массива (для примера, вы можете ввести свои значения)
  writeln('Введите элементы массива:');
  for i := 1 to N do
  begin
    write('Элемент ', i, ': ');
    readln(Arr[i]);
  end;
  cl := 1; // Текущая длина неубывающего участка
  maxl := 1;   // Максимальная длина неубывающего участка
  for i := 2 to N do
  begin
    if Arr[i] >= Arr[i - 1] then
      cl := cl + 1
    else
    begin
      if cl > maxl then
        maxl := cl;
      cl := 1;
    end;
  end;
  if cl > maxl then
    maxl := cl;
  writeln('Максимальная длина неубывающего участка: ', maxl);
end.
