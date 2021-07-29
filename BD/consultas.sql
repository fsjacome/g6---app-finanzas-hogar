-- Un archivo llamado consultas.sql en donde estén los queries (select) 
-- relacionados a su proyecto. Para las consultas deben de tener:

-- Para cada tabla, una consulta general, en donde se retornen 
-- todos los campos (por ejemplo, una consulta para retornar todos los usuarios)

SELECT * FROM VisualizarBalance;
SELECT * FROM Respaldo;
SELECT * FROM Usuario;
SELECT * FROM Cuenta;
SELECT * FROM Ingresos;
SELECT * FROM Gastos;
SELECT * FROM Administrador;
SELECT * FROM Presupuesto;
SELECT * FROM Deuda;



-- Para cada tabla, una consulta de ids, en donde se retorne solamente el id de la tabla 
-- (por ejemplo, retornar el id de todos los usuarios).

SELECT idbalance FROM VisualizarBalance;
SELECT idRespaldo FROM Respaldo;
SELECT idUsuario FROM Usuario;
SELECT numeroCuenta as idCuenta FROM Cuenta;
SELECT idIngresos FROM Ingresos;
SELECT idGasto FROM Gastos;
SELECT idAdministrador FROM Administrador;
SELECT idPresupuesto FROM Presupuesto;
SELECT idDeuda FROM Deuda;



-- Para cada tabla, una consulta donde se utilice algún tipo de búsqueda 
-- (condición where) - (por ejemplo, retornar aquellos usuarios cuyo apellido empieza en 'B').

SELECT * FROM VisualizarBalance where idUsuario like "1000";
SELECT * FROM Respaldo where ubicacionRespaldo like "Nube";
SELECT * FROM Usuario where nombre like "Aarón";
SELECT * FROM Cuenta where numeroCuenta =1234562;
SELECT * FROM Ingresos where nombreIngresos = "Salario";
SELECT * FROM Gastos where montoGasto > 50;
SELECT * FROM Administrador where idAdministrador like "ad001";
SELECT * FROM Presupuesto where descripcion like "Ocio";
SELECT * FROM Deuda where nombre like "PrestamoPersonal";