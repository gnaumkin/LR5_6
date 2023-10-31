program z13;
const
  N = 20;
var
  numbers: array[1..N] of Integer;
  i, minIndex, maxIndex, temp: Integer;
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
  // Находим индексы наибольшего и наименьшего элементов
  minIndex := 1;
  maxIndex := 1;
  for i := 2 to N do
  begin
    if numbers[i] < numbers[minIndex] then
      minIndex := i;
    if numbers[i] > numbers[maxIndex] then
      maxIndex := i;
  end;
  // Меняем местами наибольший и наименьший элементы
  temp := numbers[minIndex];
  numbers[minIndex] := numbers[maxIndex];
  numbers[maxIndex] := temp;
  // Выводим измененный массив
  writeln('Массив после замены наибольшего и наименьшего элементов:');
  for i := 1 to N do
    write(numbers[i], ' ');
  writeln;
end.
