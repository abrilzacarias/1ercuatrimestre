Program ejemplo;

{ This program demonstrates the StrToFloat function }
{$mode objfpc}
{$h+ }

Uses SysUtils;

Const
matr: array[1..11,1..3] of String=(('1','Left 4 Dead 2','129,99'),
                                    ('2','Rust','2440,99'),
                                    ('3', 'Resident Evil 3', '2499'),
                                    ('4', 'FIFA 22', '5499,00'),
                                    ('5','Red Dead Redemption 2','2499,99'),
                                    ('6','Grand Theft Auto IV: The Complete Edition','1299,99'),
                                    ('7','Call of Duty: Black Ops III-Zombies Choronicles Edition','999'),
                                    ('8','NBA 2K22','5999'),
                                    ('9', 'Phasmophobia','169,99'), 
                                    ('10', 'Prince of Persia','500,00'),
                                    ('11','Escriba el nombre y precio de un juego', '0'));

Procedure conversion;
Var
  i, j:integer;
  E : Extended;

begin
for i:= 1 to 11 do
  begin
    for j:= 1 to 1 do
      begin
          E:=StrToFloat(matr[i, 3]);
          Writeln('Converted value : ', Round(E));
       end;  
end
end;


Begin
  conversion;
End.

