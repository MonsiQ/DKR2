const
  Nmax = 10;
type
  TArray = array[1..Nmax] of integer;
  procedure Sort(var A:TArray);
  begin
  var i:integer;
  var j:integer;
  var tmp:integer;
  begin
    for i := high(A) downto low(A) + 1 do
      for j := low(A) to pred(i) do
        if A[j] > A[j + 1] then
        begin
          tmp  := A[j];
          A[j] := A[j + 1];
          A[j + 1] := tmp;        
  end;
        end;
  end;
  procedure ShowAbsence(const A: TArray; K: integer);
  begin
  var Previous: integer;
  var i, j: integer;
  begin
    Previous := 0;
    for i := low(A) to high(A) do
      if (A[i] >= 1) and (A[i] <= K) then
      begin
        for j := Previous + 1 to pred(A[i]) do
          Write(j: 4);
        Previous := A[i];
      end;
    for j := Previous + 1 to K do
      Write(j: 4);
    Println;
    end;
  end;
  begin
var A: TArray;
var K: integer;
var i: integer;
begin
  K:=7;
  randomize;
  for i := low(A) to high(A) do
    A[i] := -Nmax + random(2 * Nmax);
  for i := low(A) to high(A) do
    Write(A[i]:4);
  Println;
  Sort(A);
  for i := low(A) to high(A) do
    Write(A[i]:4);
  Println;
  ShowAbsence(A,K); 
  end;
end.