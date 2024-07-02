SELECT 
-- se eliminan duplicados en la data
distinct
habitaciones
,banos
,parqueaderos
-- Se quitan medidas y puntos de la columna
,replace(replace(area_construida,'m²',''),'.','') area_construida
-- Se quitan medidas y puntos de la columna
,replace(replace(area_privada,'m²',''),'.','') area_privada
,estrato
,estado
-- Se hace un replace para corregir el error de la palabra a�os, m�s y a�o
,replace(replace(replace(antiguedad,' años',' A�os'),'más','Mas'),'año','A�o') antiguedad
-- Se hace un replace para corregir errores de estructura, adicionalmente se usa el TRIM para quitar espacios dentro del campo
,trim(replace(replace(replace(administracion,'$�',''),' COP',''),'.','')) administracion
-- Se hace un replace para corregir errores de estructura
,replace(replace(replace(replace(precio_m2,'$�',''),'m²',''),'*',''),'.','') precio_m2
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
,lower(replace(replace(replace(replace(replace(ubicacion,'á','a'),'ó','o'),'�','e'),'�','u'),'�','i')) ubicacion
,precio
  FROM [Seminariobigdata].[dbo].[finca_raiz]