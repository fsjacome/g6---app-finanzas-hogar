DROP VIEW mostrar_ingresos;
CREATE VIEW mostrar_gastos_ingresos AS
SELECT ingresos.numeroCuenta, SUM(montoIngresos) AS ingresoTotales, SUM(montoGasto) AS gastosTotales
FROM ingresos, gastos
WHERE ingresos.numeroCuenta = gastos.numeroCuenta
GROUP BY numeroCuenta;

DROP VIEW mostrar_balance;
CREATE VIEW mostrar_balance AS
SELECT ingresos.numeroCuenta, SUM(montoIngresos) - SUM(montoGasto) AS balance
FROM ingresos, gastos
WHERE ingresos.numeroCuenta = gastos.numeroCuenta
GROUP BY numeroCuenta;

SELECT * FROM mostrar_gastos_ingresos;
SELECT * FROM mostrar_balance;
