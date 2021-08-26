DROP VIEW mostrar_gastos_ingresos;
CREATE VIEW mostrar_gastos_ingresos AS
SELECT ingreso.idUsuario, SUM(ingreso.monto) AS ingresoTotales, SUM(gasto.monto) AS gastosTotales
FROM ingreso, gasto
WHERE ingreso.idUsuario = ingreso.idUsuario
GROUP BY idUsuario;

DROP VIEW mostrar_balance;
CREATE VIEW mostrar_balance AS
SELECT ingreso.idUsuario, SUM(ingreso.monto) - SUM(gasto.monto) AS balance
FROM ingreso, gasto
WHERE ingreso.idUsuario = gasto.idUsuario
GROUP BY idUsuario;

SELECT * FROM mostrar_gastos_ingresos;
SELECT * FROM mostrar_balance;