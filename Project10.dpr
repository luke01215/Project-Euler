program Project10;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function amIaPrime(number : Int64) : boolean;
  var
    testNum: Int64;
  begin
  testNum := number;
  result := false;
  if ((testNum mod 2 = 0) and (testNum <> 2)) or (testNum <= 1) then
    result := false
  else if testNum = 2 then
      result := true
  else
    begin
    testNum := trunc(Sqrt(testNum));
    testNum := testNum + 1;
    while testNum > 1 do
      begin
      testNum := testNum - 1;
      if testNum <= 1 then
       result := true
     else if (number mod testNum = 0) then
       begin
       result := false;
       break;
       end;
     end;
    end;
  end;

var
  sumOfPrimes: Int64;
  i : Integer;
begin
  try
    for i := 0 to 2000000 do
    begin
    if amIaPrime(i) then
      sumOfPrimes := sumOfPrimes + i;
    end;
    WriteLn(sumOfPrimes);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
