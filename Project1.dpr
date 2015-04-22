program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  i, sum: Integer;
begin
  sum := 0;
  try
    for I := 0 to 999 do
      begin
      if (i mod 3 = 0) or (i mod 5 = 0) then
        sum := sum + i;
      end;
    WriteLn(sum);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
