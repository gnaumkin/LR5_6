program z12;
const
  N = 20;
var
  numbers: array[1..N] of Integer;
  i: Integer;
begin
  // Заполняем массив случайными числами
  randomize;
  for i := 1 to N do
    numbers[i] := random(100) - 50; // генерируем числа в диапазоне -50..50
  // Выводим исходный массив
  writeln('Исходный массив:');
  for i := 1 to N do
    write(numbers[i], ' ');
  writeln;
  // Вставляем 0 перед каждым положительным элементом
  for i := N downto 1 do
  begin
    if numbers[i] > 0 then
    begin
      for j := N downto i + 1 do
        numbers[j] := numbers[j-1];
      numbers[i] := 0;
    end;
  end;
  // Выводим измененный массив
  writeln('Массив с вставленными нулями:');
  for i := 1 to N do
    write(numbers[i], ' ');
  writeln;
end.
