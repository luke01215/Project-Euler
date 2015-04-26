program Project5;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  myArray:  Array[0..19] of Integer = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
  i : Integer;
  number : Int64;
  looper : boolean;
begin
  try
  looper :=  true;
  number :=  2520;
  while looper do
    begin
    number := number + 10;
    for i in myArray do
      begin
      if number mod i <> 0 then
        break;
      if i = 20 then
        looper := false;
      end;
    end;
  WriteLn(number);
  ReadLn;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
