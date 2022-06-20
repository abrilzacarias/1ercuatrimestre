Program procedureconversion;
{$mode objfpc}
{$h+ }
type
	matr1 = array[1..11,1..3] of String;
    
Uses SysUtils;
Var
  j : integer;
  E : Extended;
  l : integer;
  precioJuego: Extended;
  precios : array[1..11] of Extended;
begin
for j:= 1 to 11 do
  begin
        E:=StrToFloat(matr[j, 3]);
		precioJuego:= E;
		precios[j]:= E;
		writeLn(Round(precioJuego));  
end
end;
begin
    matr[1,1] := '1';
	matr[1,2] := 'Left 4 Dead 2';
	matr[1,3] := '129,99';
	matr[2,1] := '2';
	matr[2,2] := 'Rust';
	matr[2,3] := '2440,00';
	matr[3,1] := '3';
	matr[3,2] := 'Resident Evil 3';
	matr[3,3] := '2499,99';
	matr[4,1] := '4';
	matr[4,2] := 'FIFA 22';
	matr[4,3] := '5499,00';
	matr[5,1] := '5';
	matr[5,2] := 'Red Dead Redemption 2';
	matr[5,3] := '2499,99';
	matr[6,1] := '6';
	matr[6,2] := 'Grand Theft Auto IV: The Complete Edition';
	matr[6,3] := '1299,00';
	matr[7,1] := '7';
	matr[7,2] := 'Call of Duty: Black Ops III-Zombies Choronicles Edition';
	matr[7,3] := '999,99';
	matr[8,1] := '8';
	matr[8,2] := 'NBA 2K22';
	matr[8,3] := '5999,99';
	matr[9,1] := '9';
	matr[9,2] := 'Phasmophobia';
	matr[9,3] := '169,00';
	matr[10,1] := '10';
	matr[10,2] := 'Prince of Persia';
	matr[10,3] := '500,00';
	matr[11,1] := '11';
	matr[11,2] := 'Escriba el nombre y precio de un juego';
	matr[11,3] := '0';
end.