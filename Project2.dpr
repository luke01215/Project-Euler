program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  i, sum, fib1, fib2, fibSum : Integer;

begin
  try
    fib1 := 1;
    fib2 := 2;
    sum := sum + fib2;
    while fib1 < 4000000 do
      begin
      fibSum := fib1 + fib2;
      WriteLn(IntToStr(fib1) + ' + ' + IntToStr(fib2) + ' = ' + IntToStr(fibSum));
      if fibSum mod 2 = 0 then
        begin
        sum := sum + fibSum;
        WriteLn(sum);
        end;
      fib1 := fib2;
      fib2 := fibSum;
      end;
      WriteLn('Final answer:  ' + IntToStr(sum));
      ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
