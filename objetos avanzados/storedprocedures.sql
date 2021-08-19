USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `G6P2_app_finanzas`.`sp_nuevoAdministrador`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE procedure sp_nuevoAdministrador (in nnombre varchar(20), in nedad int, in nsexo varchar(1))
BEGIN
insert into Administrador (nombre, edad, sexo)
values(nnombre,nedad,nsexo);
END$$
DELIMITER ;



USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS sp_nuevaCuenta;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevaCuenta (in iduser varchar(20), in ncedula varchar(10), in ncorreo varchar(40))
BEGIN
insert into Cuenta (idUsuario,cedula,correo)
values(iduser,ncedula,ncorreo);
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevaDeuda`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevaDeuda (in nidAdministrador varchar(20),in nnumeroCuenta int,in nnombre varchar(40), in nmonto double, in ninteres double, in nmesesDiferido int)
BEGIN
insert into Deuda (idAdministrador , numeroCuenta , nombre ,  monto ,  interes ,  mesesDiferido )
values ( nidAdministrador, nnumeroCuenta , nnombre ,  nmonto ,  ninteres ,  nmesesDiferido );
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevoGasto`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevoGasto (in nnumeroCuenta int, in nnombregasto varchar(40), in nmontoGasto double, in nfecha date, in nhora time, in ndescripcion varchar(100), in ncategoria varchar(30))
BEGIN
insert into Gastos  ( numeroCuenta ,  nombregasto ,  montoGasto ,  fecha ,  hora ,  descripcion ,  categoria )
values ( nnumeroCuenta,  nnombregasto ,  nmontoGasto ,  nfecha ,  nhora ,  ndescripcion ,  ncategoria );
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevoIngreso`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevoIngreso (in nnumeroCuenta int,in nnombreIngresos varchar(40),in nmontoIngresos double,in nfecha date,in nhora time,in ndescripcion varchar(100),in ncategoria varchar(30))
BEGIN
insert into Ingresos(numeroCuenta,nombreIngresos,montoIngresos,fecha, hora,descripcion,categoria)
values(nnumeroCuenta,nnombreIngresos,nmontoIngresos,nfecha,nhora,ndescripcion,ncategoria);
END$$
DELIMITER ;*/


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevoPresupuesto`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevoPresupuesto (in nidAdministrador varchar(20),in  nnumeroCuenta int,in  nplazo varchar(40),in  ncantidad double,in  ndescripcion varchar(100))
BEGIN
insert into Presupuesto (idAdministrador, numeroCuenta, plazo, cantidad, descripcion)
values  (nidAdministrador, nnumeroCuenta, nplazo, ncantidad, ndescripcion)  ;
END$$
DELIMITER ;*/


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevorespaldo`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevorespaldo ( in nidUsuario varchar(15),in nfechaInicio date,in nfechaFin date,in nubicacionRespaldo varchar(10))
BEGIN
insert into Respado  (idUsuario, fechaInicio, fechaFin, ubicacionRespaldo)
values   (nidUsuario, nfechaInicio, nfechaFin, nubicacionRespaldo);
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevoUsuario`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevoUsuario (in nidUadministrador varchar(15),in nnombre varchar(40),in nedad int,in nsexo varchar(1))
BEGIN
insert into Usuario (idUadministrador,nombre,edad,sexo)
values (nidUadministrador,nnombre,nedad,nsexo);
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevoBalance`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevoBalance (in nidUsuario varchar(20),in nfechaInicio date,in nfechaFin date,in ntipoGrafico varchar(30))
BEGIN
insert into VisualizarBalance (idUsuario,fechaInicio,fechaFin,tipoGrafico)
values (nidUsuario,nfechaInicio,nfechaFin,ntipoGrafico);
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarNombreadministrador`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarNombreadministrador (in nidAdministrador int, in nnombre varchar(20))
BEGIN
update Administrador
set nombre = nnombre
where idAdministrador = nidAdministrador;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarCorreoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarCorreoPorId (in nidUsuario varchar(20), in ncorreo	varchar(40))
BEGIN
update Cuenta
set correo = ncorreo
where idUsuario = nidUsuario;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarMesesDiferidoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarMesesDiferidoPorId (in nidDeuda	int, in nmesesDiferido	int)
BEGIN
update Deuda
set mesesDiferido = nmesesDiferido
where idDeuda = nidDeuda; 
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarMontoGastadoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarMontoGastadoPorId (in nidGasto int,in nmontoGasto	double )
BEGIN
update Gastos
set montoGasto = nmontoGasto
where idGasto = nidGasto; 
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarMontoIngresoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarMontoIngresoPorId (in nidIngresos	int,in nmontoIngresos double)
BEGIN
update Ingresos
set montoIngresos = nmontoIngresos
where idIngresos = nidIngresos ; 
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarPresupuestoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarPresupuestoPorId (in nidPresupuesto	int, in ncantidad	double )
BEGIN
update Presupuesto
set cantidad = ncantidad
where idPresupuesto = nidPresupuesto ; 
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarUbicaciónRespaldoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarUbicaciónRespaldoPorId (in nidRespaldo	int,in nubicacionRespaldo	varchar(10))
BEGIN
update Respaldo
set ubicacionRespaldo = nubicacionRespaldo
where idRespaldo = nidRespaldo ; 
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarEdadUsuarioPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarEdadUsuarioPorId (in nidUsuario	int, in nedad	int)
BEGIN
update Usuario
set edad = nedad
where idUsuario = nidUsuario ; 
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarGraficoDebalancePorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarGraficoDebalancePorId (in nidbalance	int,in ntipoGrafico	varchar(30))
BEGIN
update VisualizarBalance
set tipoGrafico = ntipoGrafico
where idbalance = nidbalance ; 
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteAministradorPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteAministradorPorId (in nidAdministrador int)
BEGIN
delete from  Administrador where idAdministrador =nidAdministrador;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteCuentaPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteCuentaPorId (in  nnumeroCuenta	int)
BEGIN
delete from  Cuenta where numeroCuenta =nnumeroCuenta;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteDeudaPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteDeudaPorId (in  nidDeuda	int)
begin
delete from  Deuda where idDeuda =nidDeuda;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteGastoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteGastoPorId (in nidGasto	int)
BEGIN
delete from  Gastos where idGasto =nidGasto;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteIngresoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteIngresoPorId (in nidIngresos	int)
BEGIN
delete from  Ingresos where idIngresos =nidIngresos;
END$$
DELIMITER ;





USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteIngresoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteIngresoPorId (in nidIngresos	int)
BEGIN
delete from  Ingresos where idIngresos =nidIngresos;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deletePresupuestoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deletePresupuestoPorId (in nidPresupuesto	int)
BEGIN
delete from  Presupuesto where idPresupuesto =nidPresupuesto;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteRespaldoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteRespaldoPorId (in nidRespaldo int)
BEGIN
delete from  Respaldo where idRespaldo = nidRespaldo;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteUsuarioPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteUsuarioPorId (in nidUsuario	int)
BEGIN
delete from  Usuario where idUsuario = nidUsuario;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deletebalanceoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deletebalanceoPorId (in idbalance	int	)
BEGIN
delete from  VisualizarBalance where idbalance = nidbalance;
END$$
DELIMITER ;



USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_DefinirPresupuesto`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_DefinirPresupuesto (in  nplazo varchar(40),in  ncantidad double)
BEGIN
insert into Presupuesto (plazo, cantidad)
values  (nplazo, ncantidad)  ;
END$$
DELIMITER ;



USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_AñadirDeuda`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_AñadirDeuda (in nnombre varchar(40), in nmonto double, in nmesesDiferido int, in PagoMensual	int )
BEGIN
insert into Deuda (nombre , monto, mesesDiferido, PagoMensual)
values (nnombre ,nmonto, nmesesDiferido, nPagoMensual);
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_IngresarGasto`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_IngresarGasto (in nnombregasto varchar(40), in nmontoGasto double, in nfecha date, in ncategoria varchar(30))
BEGIN
insert into Gastos  (nombregasto , montoGasto ,  fecha , categoria )
values (nnombregasto , nmontoGasto ,  nfecha , ncategoria );
END$$
DELIMITER ;



USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_IngresarIngreso`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_IngresarIngreso (in nnombreIngreso varchar(40), in nmontoIngreso double, in nfecha date, in ncategoria varchar(30))
BEGIN
insert into Ingresos  (nombreIngresos , montoIngresos ,  fecha , categoria )
values (nnombreIngreso , nmontoIngreso ,  nfecha , ncategoria );
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_AñadirCuenta`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_AñadirCuenta (in iduser varchar(20), in ncedula varchar(10), in ncorreo varchar(40))
BEGIN
insert into Cuenta (idUsuario,cedula,correo)
values(iduser,ncedula,ncorreo);
END$$
DELIMITER ;




USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_ModificarGasto`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_ModificarGasto (in nidGasto int,in nmontoGasto	double, in nnombregasto	varchar(40) )
BEGIN
update Gastos
set montoGasto = nmontoGasto and nombregasto = nnombregasto
where idGasto = nidGasto; 
END$$
DELIMITER ;



USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_AdministrarNuevoUsuario`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_AdministrarNuevoUsuario (in nidUadministrador varchar(15),in nnombre varchar(40),in nedad int,in nsexo varchar(1),in Cargo	varchar(20))
BEGIN
insert into Usuario (idUadministrador,nombre,edad,sexo,Cargo)
values (nidUadministrador,nnombre,nedad,nsexo,nCargo);
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_AdiministrarEliminarUsuarioPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_AdiministrarEliminarUsuarioPorId (in nidUsuario	int)
BEGIN
delete from  Usuario where idUsuario = nidUsuario;
END$$
DELIMITER ;



USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_AdministrarDatosdeUsuarioPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_AdministrarDatosdeUsuarioPorId (in nidUsuario	int, in nedad	int, in nCargo	varchar(20), in nnombre	varchar(40), in sexo	varchar(1))
BEGIN
update Usuario
set edad = nedad and Cargo=nCargo and nombre=nnombre and sexo=nsexo
where idUsuario = nidUsuario ; 
END$$
DELIMITER ;



USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_VisualizarBalance`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_VisualizarBalance()
BEGIN
select * from mostrar_balance;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_VisualizarHistorial`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_VisualizarHistorial()
BEGIN
select * from mostrar_gastos_ingresos;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_RespaldarTransaccionesPorFecha`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_RespaldarTransaccionesPorFecha ( in nidUsuario varchar(15),in nfechaInicio date,in nfechaFin date,in nubicacionRespaldo varchar(10))
BEGIN
insert into Respado  (idUsuario, fechaInicio, fechaFin, ubicacionRespaldo)
values   (nidUsuario, nfechaInicio, nfechaFin, nubicacionRespaldo);
END$$
DELIMITER ;