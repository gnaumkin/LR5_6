program z4;
var
  A, B: array[1..30] of integer;
  i, j: integer;
begin
  randomize;
  for i := 1 to 30 do
    A[i] := random(167) - 99;
  j := 0;
  for i := 1 to 30 do
    if A[i] mod 2 = 0 then
    begin
      j := j + 1;
      B[j] := A[i];
    end;
  writeln('Массив B (четные элементы):');
  for i := 1 to j do
    writeln(B[i]);
end.