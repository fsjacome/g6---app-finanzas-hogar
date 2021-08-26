USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `G6P2_app_finanzas`.`sp_nuevoBanco`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE procedure sp_nuevoBanco (in idBancoN varchar(20), in nombreN varchar(20))
BEGIN
insert into banco (idBanco, nombre)
values(idBancoN,nombreN);
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS sp_nuevaCuenta;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevaCuenta (in numeroCt INTEGER, in tipoCt varchar(10), in idBc varchar(40))
BEGIN
insert into cuenta (numCuenta,tipoCuenta,idBanco)
values(numeroCt,tipoCt,idBc);
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevaDeuda`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevaDeuda (in nidDeuda varchar(20),in nidUsuario varchar(20), in nmonto double, in ninteres double, in nplazo int, in ndescripcion varchar(20))
BEGIN
insert into deuda (idDeuda , idUsuario , monto ,  interes ,  plazo , descripcion )
values ( nidDeuda, nidUsuario , nmonto ,  ninteres ,  nplazo, ndescripcion );
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevoGasto`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevoGasto (in nidGasto varchar(20), in nidUsuario varchar(20), in nmonto double, in nfecha date, in nhora time, in ndescripcion varchar(100), in ncategoria varchar(30))
BEGIN
insert into gasto  ( idGasto ,  idUsuario ,  monto ,  fecha ,  hora ,  descripcion ,  categoria )
values ( nidGasto,  nidUsuario ,  nmonto ,  nfecha ,  nhora ,  ndescripcion ,  ncategoria );
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevoIngreso`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevoIngreso (in nidIngreso varchar(20), in nidUsuario varchar(20), in nmonto double,in nfecha date,in nhora time,in ndescripcion varchar(100),in ncategoria varchar(30))
BEGIN
insert into ingreso (idIngreso , idUsuario , monto , fecha , hora , descripcion , categoria)
values(nidIngreso , nidUsuario , nmonto , nfecha , nhora , ndescripcion , ncategoria);
END$$
DELIMITER ;*/


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevoPresupuesto`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevoPresupuesto (in nidPresupuesto varchar(20), in nidUsuario varchar(20) , in  ncantidad double, in  nplazo varchar(10),in  ndescripcion varchar(100))
BEGIN
insert into Presupuesto (idPresupuesto, idUsuario, monto, plazo, descripcion)
values  (nidPresupuesto, nidUsuario, ncantidad, nplazo, ndescripcion)  ;
END$$
DELIMITER ;*/


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevorespaldo`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevorespaldo ( in nidRespaldo varchar(20), in nidUsuario varchar(20) , in  nnumCt INTEGER, in nfechaInicio date,in nfechaFin date,in nubicacionRespaldo varchar(10))
BEGIN
insert into Respado  (idRespaldo, idUsuario, numCuenta, fechaInicio, fechaFin, ubicacionRespaldo)
values   (nidRespaldo, nidUsuario, nnumCt, nfechaInicio, nfechaFin, nubicacionRespaldo);
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_nuevoUsuario`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_nuevoUsuario (in nidUsuario varchar(20),  in  nnumCt INTEGER, in nnombre varchar(40), in ncedula varchar(40), in ncorreo varchar(40), in nedad int)
BEGIN
insert into Usuario (idUsuario, numCuenta, nombre, cedula, correo, edad)
values (nidUsuario,nnumCt,nnombre,ncedula,ncorreo,nedad);
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarNombrebanco`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarNombrebanco (in nidBanco varchar(20), in nnombre varchar(20))
BEGIN
update banco
set nombre = nnombre
where idBanco = nidBanco;
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarTipoCuentaPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarTipoCuentaPorId (in numCt INTEGER, in ntipo varchar(40))
BEGIN
update cuenta
set tipoCuenta = ntipo
where numCuenta = numCt;
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarMesesDiferidoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarMesesDiferidoPorId (in nidDeuda	varchar(20), in nmesesDiferido	int)
BEGIN
update deuda
set plazo = nmesesDiferido
where idDeuda = nidDeuda; 
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarMontoGastadoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarMontoGastadoPorId (in nidGasto varchar(20),in nmontoGasto	double )
BEGIN
update gasto
set monto = nmontoGasto
where idGasto = nidGasto; 
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarMontoIngresoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarMontoIngresoPorId (in nidIngresos	varchar(20),in nmontoIngresos double)
BEGIN
update ingreso
set monto = nmontoIngresos
where idIngreso = nidIngresos ; 
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarPresupuestoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarPresupuestoPorId (in nidPresupuesto	varchar(20), in ncantidad	double )
BEGIN
update presupuesto
set monto = ncantidad
where idPresupuesto = nidPresupuesto ; 
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarUbicaciónRespaldoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarUbicaciónRespaldoPorId (in nidRespaldo	varchar(20),in nubicacionRespaldo	varchar(10))
BEGIN
update respaldo
set ubicacionRespaldo = nubicacionRespaldo
where idRespaldo = nidRespaldo ; 
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_actualizarEdadUsuarioPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_actualizarEdadUsuarioPorId (in nidUsuario	varchar(20), in nedad	int)
BEGIN
update usuario
set edad = nedad
where idUsuario = nidUsuario ; 
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteBancoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteBancoPorId (in nidBanco varchar(20))
BEGIN
delete from  banco where idAdministrador =nidBanco;
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteCuentaPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteCuentaPorId (in  nnumeroCuenta	varchar(20))
BEGIN
delete from  cuenta where numCuenta =nnumeroCuenta;
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteDeudaPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteDeudaPorId (in  nidDeuda	varchar(20))
begin
delete from  deuda where idDeuda =nidDeuda;
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteGastoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteGastoPorId (in nidGasto	varchar(20))
BEGIN
delete from  gasto where idGasto =nidGasto;
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteIngresoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteIngresoPorId (in nidIngresos	varchar(20))
BEGIN
delete from  ingreso where idIngreso =nidIngresos;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deletePresupuestoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deletePresupuestoPorId (in nidPresupuesto	varchar(20))
BEGIN
delete from  presupuesto where idPresupuesto =nidPresupuesto;
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteRespaldoPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteRespaldoPorId (in nidRespaldo varchar(20))
BEGIN
delete from  respaldo where idRespaldo = nidRespaldo;
END$$
DELIMITER ;


USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_deleteUsuarioPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_deleteUsuarioPorId (in nidUsuario	varchar(20))
BEGIN
delete from  usuario where idUsuario = nidUsuario;
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_DefinirPresupuesto`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_DefinirPresupuesto (in nidP varchar(20), in  nplazo varchar(40),in  ncantidad double)
BEGIN
insert into presupuesto (plazo, monto)
values  (nplazo, ncantidad);
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_AñadirDeuda`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_AñadirDeuda (in nnombre varchar(40), in nmonto double, in nmesesDiferido int, in PagoMensual	int )
BEGIN
insert into deuda (nombre , monto, mesesDiferido, PagoMensual)
values (nnombre ,nmonto, nmesesDiferido, nPagoMensual);
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_ModificarGasto`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_ModificarGasto (in nidGasto int,in nmontoGasto	double, in nnombregasto	varchar(40) )
BEGIN
update gasto
set monto = nmontoGasto and descripcion = nnombregasto
where idGasto = nidGasto; 
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_AdministrarNuevoUsuario`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_AdministrarNuevoUsuario (in nidUsuario varchar(20), in numct INTEGER, in nnombre varchar(40),in ncedula varchar(10),in ncorreo	varchar(40),in nedad int)
BEGIN
insert into Usuario (idUsuario,numCuenta,nombre,cedula,correo,edad)
values (nidUsuario,numct,nnombre,ncedula,nedad,ncorreo,nsexo);
END$$
DELIMITER ;

USE `G6P2_app_finanzas`;
DROP procedure IF EXISTS `sp_AdiministrarEliminarUsuarioPorId`;
DELIMITER $$
USE `G6P2_app_finanzas`$$
CREATE PROCEDURE sp_AdiministrarEliminarUsuarioPorId (in nidUsuario	int)
BEGIN
delete from  usuario where idUsuario = nidUsuario;
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
CREATE PROCEDURE sp_RespaldarTransaccionesPorFecha ( in nidRespaldo varchar(20), in nidUsuario varchar(15), in nnumCt INTEGER, in nfechaInicio date,in nfechaFin date,in nubicacionRespaldo varchar(10))
BEGIN
insert into respaldo  (idRespaldo, idUsuario, numCuenta, fechaInicio, fechaFin, ubicacionRespaldo)
values   (nidRespaldo, nidUsuario, nnumCt, nfechaInicio, nfechaFin, nubicacionRespaldo);
END$$
DELIMITER ;