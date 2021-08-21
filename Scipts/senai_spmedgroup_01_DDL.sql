CREATE DATABASE SLA
GO

USE SLA
GO

CREATE TABLE clinica(
	idClinica INT PRIMARY KEY IDENTITY,
	nomeClinica VARCHAR(40) NOT NULL,
	cnpj VARCHAR(20) NOT NULL UNIQUE,
	razaoSocial VARCHAR(40) NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	horaAbertura TIME NOT NULL,
	horaFechamento TIME NOT NULL
);
GO

CREATE TABLE tipoPermissao(
	idTipoPermissao INT PRIMARY KEY IDENTITY,
	nomeTipoPermissao VARCHAR(15)
);
GO

CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY IDENTITY,
	idTipoUsuario INT FOREIGN KEY REFERENCES tipoPermissao(idTipoPermissao),
	nome VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL UNIQUE,
	senha VARCHAR(20) NOT NULL
);
GO

CREATE TABLE especialidade(
	idEspecialidade INT PRIMARY KEY IDENTITY,
	nomeEspecialidade VARCHAR(70)
);
GO

CREATE TABLE medico(
	idMedico INT PRIMARY KEY IDENTITY,
	idEspecialidade INT FOREIGN KEY REFERENCES especialidade(idEspecialidade),
	idUsuario INT FOREIGN KEY REFERENCES usuario(idUsuario),
	idClinica INT FOREIGN KEY REFERENCES clinica(idClinica),
	crm VARCHAR(8) NOT NULL UNIQUE
);
GO

CREATE TABLE paciente(
	idPaciente INT PRIMARY KEY IDENTITY,
	idUsuario INT FOREIGN KEY REFERENCES usuario(idUsuario),
	dataNasc DATE NOT NULL,
	telefone VARCHAR(12) UNIQUE,
	rg VARCHAR(10) NOT NULL UNIQUE,
	cpf VARCHAR(11) NOT NULL UNIQUE,
	endereco VARCHAR(100) NOT NULL
);
GO

CREATE TABLE situacao(
	idSituacao INT PRIMARY KEY IDENTITY,
	descricao VARCHAR(10) NOT NULL UNIQUE
);
GO

CREATE TABLE consulta(
	idConsulta INT PRIMARY KEY IDENTITY,
	idClinica INT FOREIGN KEY REFERENCES clinica(idClinica),
	idPaciente INT FOREIGN KEY REFERENCES paciente(idPaciente),
	idMedico INT FOREIGN KEY REFERENCES medico(idMedico),
	idSituacao INT FOREIGN KEY REFERENCES situacao(idSituacao) DEFAULT(3),
	dataConsulta DATETIME
);
GO

SELECT * FROM clinica$