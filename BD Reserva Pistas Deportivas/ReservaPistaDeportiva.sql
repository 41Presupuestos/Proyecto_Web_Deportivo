Create Database BDPistaDeportiva
Go

Use BDPistaDeportiva
Go

Create Table Usuario(
Id_Usuario Int Identity Primary Key Not Null,
Nombre_Usuario Varchar(50) Not Null,
Fecha_Creacion Date,
Password Varchar(50) Not Null,
Es_Administrador Bit
)
Go

Create Table Cliente(
Id_Cliente Int Identity Primary Key Not Null,
Nombre Varchar(50),
Apellidos Varchar(50),
Movil Char(12),
Email Varchar(50),
Sexo Bit,
Fecha_Nacimiento Date,
Id_Usuario Int Not Null,
Constraint FK_UsuCli01 Foreign Key (Id_Usuario) References Usuario
)
Go

Create Table Empleado(
Id_Empleado Int Identity Primary Key Not Null,
Nombre Varchar(50),
Apellidos Varchar(50),
Movil Char(12),
Email Varchar(50),
Sexo Bit,
Fecha_Nacimiento Date,
Id_Usuario Int Not Null,
Constraint FK_EmpCli01 Foreign Key (Id_Usuario) References Usuario
)
Go

Create Table Tipo_Pista(
Id_TipoPista Int Identity Primary Key Not Null,
Nombre_Tipo Varchar(50),
Descripcion Varchar(50)
)
Go

Create Table Pista(
Id_Pista Int Identity Primary Key Not Null,
Num_Pista Int,
Id_TipoPista Int Not Null,
Estado_Pista Varchar(50),
Constraint FK_TpPst01 Foreign Key (Id_TipoPista) References Tipo_Pista
)
Go

Create Table Oferta(
Id_Oferta Int Identity Primary Key Not Null,
Descripcion Varchar(50),
Descuento Money,
Estado_Oferta Varchar(50),
Id_Pista Int Not Null,
Constraint FK_OftPst01 Foreign Key (Id_Pista) References Pista
)
Go

Create Table Tarifa(
Id_Tarifa Int Identity Primary Key Not Null,
Precio Money,
Id_Pista Int Not Null,
Constraint FK_TrfPst01 Foreign Key (Id_Pista) References Pista
)
Go

Create Table Reserva(
IdReserva Int Identity Primary Key Not Null,
Id_Pista Int Not Null,
Id_Tarifa Int Not Null,
Fache Date,
Id_Usuario Int Not Null,
Hora_Inicio Time,
Hora_Fin Time,
Constraint FK_RsvPst01 Foreign Key (Id_Pista) References Pista,
Constraint FK_RsvTrf01 Foreign Key (Id_Tarifa) References Tarifa,
Constraint FK_RsvUsu01 Foreign Key (Id_Usuario) References Usuario
)
Go