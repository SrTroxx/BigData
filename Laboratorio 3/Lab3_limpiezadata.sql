SELECT 
-- se eliminan duplicados en la data
distinct
habitaciones
,banos
,parqueaderos
-- Se quitan medidas y puntos de la columna
,replace(replace(area_construida,'mÂ²',''),'.','') area_construida
-- Se quitan medidas y puntos de la columna
,replace(replace(area_privada,'mÂ²',''),'.','') area_privada
,estrato
,estado
-- Se hace un replace para corregir el error de la palabra años, más y año
,replace(replace(replace(antiguedad,' aÃ±os',' Años'),'mÃ¡s','Mas'),'aÃ±o','Año') antiguedad
-- Se hace un replace para corregir errores de estructura, adicionalmente se usa el TRIM para quitar espacios dentro del campo
,trim(replace(replace(replace(administracion,'$Â',''),' COP',''),'.','')) administracion
-- Se hace un replace para corregir errores de estructura
,replace(replace(replace(replace(precio_m2,'$Â',''),'mÂ²',''),'*',''),'.','') precio_m2
,Ascensor
,Circuito_cerrado_de_TV
,Parqueadero_Visitantes
,porteria_recepcion
,Zonas_verdes
,Salon_comunal
,Balcon
,Barra_estilo_americano
,Calentador
,Chimenea
,Citofono
,Cocina_integral
,Terraza
,Vigilancia
,Parques_cercanos
,Estudio
,Patio
,Deposito_bodega
,nombre
-- Se realiza un replace para quitar los errores de tildes de las ubicaciones, adicionalmente un Lower para manejar todo en minuscula
,lower(replace(replace(replace(replace(replace(ubicacion,'Ã¡','a'),'Ã³','o'),'ã©','e'),'ã±','u'),'ã­','i')) ubicacion
,precio
  FROM [Seminariobigdata].[dbo].[finca_raiz]