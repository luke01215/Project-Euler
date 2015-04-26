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
  if (testNum < 1) then
    result := false
  else if (testNum = 1) then
    result := false
  else if (testNum <> 2) and (testNum mod 2 = 0) then
    result := false
  else
    while testNum > 1 do
      begin
      testNum := testNum - 1;
      if testNum = 1 then
       result := true
     else if (number mod testNum = 0) then
       begin
        result := false;
       break;
       end;
     end;
  end;

var
  number, next: Int64;
begin
  number := 600851475143;
  try
    next := number;
    while True do
      begin
      next := next - 1;
      if (next mod 100000 = 0) then
        WriteLn(next);
      if number mod next = 0 then
        begin
        WriteLn(next);
        if amIaPrime(next) then
          begin
          WriteLn(next);
          ReadLn;
          break;
          end;
        end;
      end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
