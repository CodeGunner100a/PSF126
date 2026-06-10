//EJERCICIO 3 cadenas en archivo cadenas

function Ejercicio3(cad: String): String;
var
  i, j: Integer;
  palabra, invertida, salida: String;
begin
  salida := '';
  palabra := '';

  cad := cad + ' ';

  for i := 1 to length(cad) do
  begin
    if cad[i] <> ' ' then
      palabra := palabra + cad[i]
    else
    begin
      invertida := '';

      for j := length(palabra) downto 1 do
        invertida := invertida + palabra[j];

      salida := salida + invertida + ' ';
      palabra := '';
    end;
  end;

  Result := salida;
end;



//LLAMADA
Edit2.Text := (Ejercicio3(cad));



