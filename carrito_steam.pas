Program carrito_steam;
{$mode objfpc}
{$h+ }

Uses SysUtils;

type
	matr1 = array[1..11,1..3] of String;
var
	matr: matr1; 
    num: Integer;
    respuesta: String[20];
    nombreJuego: String[150];
	precioJuegoNuevo: integer;
	I : Integer;


function impuestos(precio: Real): Integer; 
var
    impuestoPais: Real;        
    valorOriginal: Real;
    valorConPais: Real;
    impuestoGanancias: Real;
    valorConGanancias: Real;
    valorFinalJuego: Real;
	precioFinalImpuestos: Real;
	aumento1: Real;
	aumento2: Real;
	aumento3: Real;
begin
    //ASIGNACION DE IMPUESTOS
    //WriteLn(precio);
    (*Impuesto PAIS = 30%*)
	impuestoPais := 30;
	valorOriginal:= precio;
	aumento1:= (valorOriginal * impuestoPais)/100;
	valorConPais:= valorOriginal + aumento1;
	
	(*Impuesto a las ganancias = 35%*)
	impuestoGanancias:=35;
	valorOriginal:= precio;
	aumento2:= valorOriginal * (impuestoGanancias / 100);
	valorConGanancias:= valorOriginal + aumento2;
	
	(*Precio final con ambos impuestos incluidos*)
	precioFinalImpuestos:= impuestoPais + impuestoGanancias;
	valorOriginal:= precio;
	aumento3:= valorOriginal * (precioFinalImpuestos/100);
	valorFinalJuego:= valorOriginal + aumento3;
    
    WriteLn('El valor del juego con el impuesto PAIS aplicado es: $', Trunc(valorConPais));
	WriteLn('El valor del juego con el Impuesto a las ganancias aplicado es: $' , Trunc(valorConGanancias));
	WriteLn('El valor del juego con el impuesto PAIS y el impuesto a las ganancias aplicados es: $ ', Trunc(valorFinalJuego));
end;

begin
    matr[1,1] := '1';
	matr[1,2] := 'Left 4 Dead 2';
	matr[1,3] := '129';
	matr[2,1] := '2';
	matr[2,2] := 'Rust';
	matr[2,3] := '2440';
	matr[3,1] := '3';
	matr[3,2] := 'Resident Evil 3';
	matr[3,3] := '2499';
	matr[4,1] := '4';
	matr[4,2] := 'FIFA 22';
	matr[4,3] := '5499';
	matr[5,1] := '5';
	matr[5,2] := 'Red Dead Redemption 2';
	matr[5,3] := '2499';
	matr[6,1] := '6';
	matr[6,2] := 'Grand Theft Auto IV: The Complete Edition';
	matr[6,3] := '1299';
	matr[7,1] := '7';
	matr[7,2] := 'Call of Duty: Black Ops III-Zombies Choronicles Edition';
	matr[7,3] := '999';
	matr[8,1] := '8';
	matr[8,2] := 'NBA 2K22';
	matr[8,3] := '5999';
	matr[9,1] := '9';
	matr[9,2] := 'Phasmophobia';
	matr[9,3] := '169';
	matr[10,1] := '10';
	matr[10,2] := 'Prince of Persia';
	matr[10,3] := '500';
	matr[11,1] := '11';
	matr[11,2] := 'Escriba el nombre y precio de un juego';
	matr[11,3] := '';

	writeLn('Lista de precios con IVA incluido:');
	for i:=1 to 11 do
		begin

		writeLn(matr[i,1],'|', matr[i,2], ' ', matr[i,3]);
		end;

    writeLn('Elija el numero de juego que desea comprar: ');
        readLn(num);
            begin
                if (num>=1) and (num<=10) then 
                    begin
                        writeLn('El nombre del juego seleccionado es ', matr[num,2],' y su precio es $', matr[num,3]);

                        impuestos(StrToFloat(matr[num,3]));						
                        end
                else if (num=11) then
                    begin
                        write('Escriba el nombre del juego: ');
                        readLn(nombreJuego);
                        write('Y su precio: ');
                        readLn(precioJuegoNuevo);
                        writeLn('El nombre del juego seleccionado es ', nombreJuego,'y su precio es $', precioJuegoNuevo);
                    	impuestos (StrToFloat(matr[num,3])); 
                    end
                else
                    begin
                        writeLn('El numero de juego esta fuera del rango');
                        writeLn('¿Quiere conocer otro precio? SI/NO');
                        readLn(respuesta);  
                    end;
            end;
end.