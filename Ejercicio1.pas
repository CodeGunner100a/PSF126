//EJERCICIO 1

function Ejercicio1(n: Integer): String;
var
  aux, d, i, suma, cant: Integer;
begin
  suma := 0;
  cant := 0;

  for d := 0 to 9 do
  begin
    aux := n;
    while aux > 0 do
    begin
      if aux mod 10 = d then
      begin
        suma := suma + d;
        cant := cant + 1;
        Break;
      end;
      aux := aux div 10;
    end;
  end;

  if cant > 0 then
    Result := 'Promedio = ' + FormatFloat('0.00', suma / cant)
  else
    Result := 'Sin digitos';
end;


//LLAMADA

  Edit2.Text := Ejercicio1(n);

  





