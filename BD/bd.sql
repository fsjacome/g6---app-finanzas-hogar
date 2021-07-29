CREATE TABLE Administrador 
	(idAdministrador	VARCHAR(20) NOT NULL,
	 nombre				VARCHAR(20) NOT NULL,
	 edad				INTEGER NOT NULL,
	 sexo				VARCHAR(1) NOT NULL,
	 PRIMARY KEY(idAdministrador));

CREATE TABLE Cuenta 
	(numeroCuenta	INTEGER NOT NULL,
	 idUsuario		VARCHAR(20) NOT NULL,
	 cedula			VARCHAR(10) NOT NULL,
	 correo			VARCHAR(40) NOT NULL,
	 PRIMARY KEY(numeroCuenta),
     FOREIGN KEY(idUsuario) REFERENCES Usuario(idUsuario));
	 
     
CREATE TABLE Deuda 
	(idDeuda		VARCHAR(20) NOT NULL,
	idAdministrador	VARCHAR(20) NOT NULL,
	numeroCuenta	INTEGER NOT NULL,
	nombre			VARCHAR(40) NOT NULL,
	monto			DOUBLE NOT NULL,
	interes			DOUBLE NOT NULL,
	mesesDiferido	INTEGER NOT NULL,
	 PRIMARY KEY(idDeuda),
     FOREIGN KEY(idAdministrador) REFERENCES administrador(idAdministrador),
     FOREIGN KEY(numeroCuenta) REFERENCES Cuenta(numeroCuenta));

CREATE TABLE Gastos
	(idGasto		VARCHAR(20) NOT NULL,
	numeroCuenta	INTEGER NOT NULL,
	nombregasto 	VARCHAR(40) NOT NULL,
	montoGasto		DOUBLE NOT NULL,
	fecha			DATE NOT NULL,
	hora			TIME NOT NULL,
	descripcion		VARCHAR(100) NOT NULL,	
	categoria		VARCHAR(30) NOT NULL,
	PRIMARY KEY(idGasto),
    FOREIGN KEY(numeroCuenta) REFERENCES Cuenta(numeroCuenta));

CREATE TABLE Ingresos
	(idIngresos		VARCHAR(20) NOT NULL,
	numeroCuenta	INTEGER NOT NULL,
	nombreIngresos	VARCHAR(40) NOT NULL,
	montoIngresos	DOUBLE NOT NULL,
	fecha			DATE NOT NULL,
	hora			TIME NOT NULL,
	descripcion		VARCHAR(100) NOT NULL,	
	categoria		VARCHAR(30) NOT NULL,
	PRIMARY KEY(idIngresos),
    FOREIGN KEY(numeroCuenta) REFERENCES Cuenta(numeroCuenta));

CREATE TABLE Presupuesto 
	(idPresupuesto	VARCHAR(20) NOT NULL,
	idAdministrador	VARCHAR(20) NOT NULL,
	numeroCuenta	INTEGER NOT NULL,
	plazo			VARCHAR(40) NOT NULL,
	cantidad		DOUBLE NOT NULL,
	descripcion		VARCHAR(100) NOT NULL,	
	PRIMARY KEY(idPresupuesto),
    FOREIGN KEY(idAdministrador) REFERENCES administrador(idAdministrador),
    FOREIGN KEY(numeroCuenta) REFERENCES Cuenta(numeroCuenta));

CREATE TABLE Respaldo 
	(idRespaldo			VARCHAR(20) NOT NULL,
	idUsuario			VARCHAR(15) NOT NULL,
	fechaInicio			DATE NOT NULL,
	fechaFin			DATE NOT NULL,
	ubicacionRespaldo	VARCHAR(10) NOT NULL,
	PRIMARY KEY(idRespaldo),
    FOREIGN KEY(idUsuario) REFERENCES Usuario(idUsuario));

CREATE TABLE Usuario 
	(idUsuario			VARCHAR(20) NOT NULL,
	idUadministrador	VARCHAR(15) NOT NULL,
	nombre				VARCHAR(40) NOT NULL,
	edad				INTEGER NOT NULL,
	sexo				VARCHAR(1) NOT NULL,
	PRIMARY KEY(idUsuario),
    FOREIGN KEY(idUadministrador) REFERENCES administrador(idAdministrador));

CREATE TABLE VisualizarBalance 
	(idbalance	VARCHAR(20) NOT NULL,
	idUsuario	VARCHAR(20) NOT NULL,
	fechaInicio	DATE NOT NULL,
	fechaFin	DATE NOT NULL,
	tipoGrafico	VARCHAR(30) NOT NULL,
	PRIMARY KEY(idbalance),
    FOREIGN KEY(idUsuario) REFERENCES Usuario(idUsuario));
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      