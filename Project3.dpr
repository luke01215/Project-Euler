program Project3;

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
  number, next, pair: Int64;
begin
  number := 600851475143;
  WriteLn(amIaPrime(9973));
  WriteLn(amIaPrime(9601));
  Readln;
  try
    next := 1;
    while next < number do
      begin
      next := next + 1;
      WriteLn(next);
      if number mod next = 0 then
        begin
        pair := number div next;
        WriteLn(pair);
        if amIaPrime(pair) then
          begin
          WriteLn('My pair is ' + IntToStr(pair));
          ReadLn;
          end;
        end;
      end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
