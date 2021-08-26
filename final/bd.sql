CREATE TABLE banco 
	(idBanco			VARCHAR(20) NOT NULL,
	 nombre				VARCHAR(20) NOT NULL,
	 PRIMARY KEY(idBanco));

CREATE TABLE cuenta 
	(numCuenta		INTEGER NOT NULL,
	 tipoCuenta     VARCHAR(20) NOT NULL,
     idBanco		VARCHAR(20) NOT NULL,
	 PRIMARY KEY(numCuenta),
     FOREIGN KEY(idBanco) REFERENCES banco(idBanco));
	 
CREATE TABLE usuario 
	(idUsuario			VARCHAR(20) NOT NULL,
	numCuenta			INTEGER NOT NULL,
	nombre				VARCHAR(40) NOT NULL,
    cedula				VARCHAR(10) NOT NULL,
	correo				VARCHAR(40) NOT NULL,
	edad				INTEGER NOT NULL,
	PRIMARY KEY(idUsuario),
    FOREIGN KEY(numCuenta) REFERENCES cuenta(numCuenta));
    
CREATE TABLE deuda 
	(idDeuda		VARCHAR(20) NOT NULL,
	idUsuario		VARCHAR(20) NOT NULL,
	monto			DOUBLE NOT NULL,
	interes			DOUBLE NOT NULL,
	plazo			INTEGER NOT NULL,
    descripcion 	VARCHAR(50) NOT NULL,
	 PRIMARY KEY(idDeuda),
     FOREIGN KEY(idUsuario) REFERENCES usuario(idUsuario));
     
CREATE TABLE presupuesto 
	(idPresupuesto		VARCHAR(20) NOT NULL,
	idUsuario		VARCHAR(20) NOT NULL,
	monto			DOUBLE NOT NULL,
	plazo			VARCHAR(10) NOT NULL,
    descripcion 	VARCHAR(50) NOT NULL,
	 PRIMARY KEY(idPresupuesto),
     FOREIGN KEY(idUsuario) REFERENCES usuario(idUsuario));
     
CREATE TABLE gasto
	(idGasto		VARCHAR(20) NOT NULL,
	idUsuario		VARCHAR(20) NOT NULL,
	monto			DOUBLE NOT NULL,
	fecha			DATE NOT NULL,
	hora			TIME NOT NULL,
	descripcion		VARCHAR(100) NOT NULL,	
	categoria		VARCHAR(30) NOT NULL,
	PRIMARY KEY(idGasto),
    FOREIGN KEY(idUsuario) REFERENCES usuario(idUsuario));

CREATE TABLE ingreso
	(idIngreso		VARCHAR(20) NOT NULL,
	idUsuario		VARCHAR(20) NOT NULL,
	monto			DOUBLE NOT NULL,
	fecha			DATE NOT NULL,
	hora			TIME NOT NULL,
	descripcion		VARCHAR(100) NOT NULL,	
	categoria		VARCHAR(30) NOT NULL,
	PRIMARY KEY(idIngreso),
    FOREIGN KEY(idUsuario) REFERENCES usuario(idUsuario));
    
CREATE TABLE respaldo 
	(idRespaldo			VARCHAR(20) NOT NULL,
	idUsuario			VARCHAR(15) NOT NULL,
    numCuenta			INTEGER NOT NULL,
	fechaInicio			DATE NOT NULL,
	fechaFin			DATE NOT NULL,
	ubicacionRespaldo	VARCHAR(10) NOT NULL,
	PRIMARY KEY(idRespaldo),
    FOREIGN KEY(idUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY(numCuenta) REFERENCES usuario(numCuenta));
    


