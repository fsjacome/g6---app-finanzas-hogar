-- Un archivo llamado consultas.sql en donde estén los queries (select) 
-- relacionados a su proyecto. Para las consultas deben de tener:

-- Para cada tabla, una consulta general, en donde se retornen 
-- todos los campos (por ejemplo, una consulta para retornar todos los usuarios)

SELECT * FROM banco;
SELECT * FROM cuenta;
SELECT * FROM deuda;
SELECT * FROM gasto;
SELECT * FROM ingreso;
SELECT * FROM presupuesto;
SELECT * FROM respaldo;
SELECT * FROM usuario;

-- Para cada tabla, una consulta de ids, en donde se retorne solamente el id de la tabla 
-- (por ejemplo, retornar el id de todos los usuarios).

SELECT idBanco FROM banco;
SELECT numCuenta AS IdCuenta FROM cuenta;
SELECT idDeuda FROM deuda;
SELECT idGasto FROM gasto;
SELECT idIngreso FROM ingreso;
SELECT idPresupuesto FROM presupuesto;
SELECT idRespaldo FROM respaldo;
SELECT idUsuario FROM usuario;

-- Para cada tabla, una consulta donde se utilice algún tipo de búsqueda 
-- (condición where) - (por ejemplo, retornar aquellos usuarios cuyo apellido empieza en 'B').

SELECT * FROM banco where idBanco like 'B2';
SELECT * FROM cuenta where numCuenta = 1234562;
SELECT * FROM deuda where descripcion like "prestamo";
SELECT * FROM gasto where monto > 50;
SELECT * FROM ingreso where descripcion like "salario";
SELECT * FROM presupuesto where descripcion like "Ocio";
SELECT * FROM respaldo where ubicacionRespaldo like "nube";
SELECT * FROM usuario where nombre like "Aarón";

