program Project7;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  PrimeUnit in 'PrimeUnit.pas';

var
  primesEncountered, number, lastPrime: Integer;
begin
  number := 2;
  try
  while primesEncountered < 10001 do
    begin
    if primeunit.amIaPrime(number) then
      begin
      Inc(primesEncountered);
      lastPrime := number;
      end;
    if (number = 2) then
      number := number + 1
    else
      number := number + 2;
    end;
  WriteLn(lastPrime);
  Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
