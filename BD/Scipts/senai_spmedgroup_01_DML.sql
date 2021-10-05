USE ThiagoSPMG
GO

INSERT INTO clinica (nomeClinica, cnpj, razaoSocial, endereco, horaAbertura, horaFechamento)
VALUES ('Clinica Possarle','86400902000130','SP Medical Groups','Av. Barão de Limeira,532,São Paulo,SP','08:00','18:00')
GO

INSERT INTO tipoUsuario (nomeTipoUsuario)
VALUES ('Administrador'), ('Médico'), ('Paciente')
GO

INSERT INTO usuario (idTipoUsuario, nome, email, senha)
VALUES (2,'Ricardo Lemos','ricardo.lemos@spmedicalgroup.com.br','ricardo123'),
(2,'Roberto Possarle','roberto.possarle@spmedicalgroup.com.br','roberto123'), 
(2,'Helena Strada','helena.souza@spmedicalgroup.com.br','helena123'),
(3,'Lígia','ligia@gmail.com','ligia123'),
(3,'Alexandre','alexandre@gmail.com','alexandre123'),
(3,'Fernando','fernando@gmail.com','fernando123'),
(3,'Henrique','henrique@gmail.com','henrique123'),
(3,'João','joao@gmail.com','joao123'),
(3,'Bruno','bruno@gmail.com','bruno123'),
(3,'Mariana','mariana@gmail.com','mariana123'),
(1,'Adm','adm@adm.com','adm123')
GO

INSERT INTO especialidade (nomeEspecialidade)
VALUES ('Acupuntura'), 
('Anestesiologia'), 
('Angiologia'), 
('Cardiologia'), 
('Cirurgia Cardiovascular'), 
('Cirurgia da Mão'), 
('Cirurgia do Aparelho Digestivo'), 
('Cirurgia Geral'), 
('Cirurgia Pediátrica'), 
('Cirurgia Plástica'), 
('Cirurgia Torácica'), 
('Cirurgia Vascular'), 
('Dermatologia'), 
('Radioterapia'), 
('Urologia'), 
('Pediatria'), 
('Psiquiatria')
GO

INSERT INTO medico (idEspecialidade, idUsuario, idClinica, crm)
VALUES (2,1,1,'54356SP'), (17,2,1,'53452SP'), (16,3,1,'65463SP')
GO

INSERT INTO paciente (idUsuario, dataNasc, telefone, rg, cpf, endereco)
VALUES (4,'1983/10/13','113456-7654','43522543-5','94839859000','Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000'),
(5,'2001/07/23','1198765-6543','32654345-7','73556944057','Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200'),
(6,'1978/10/10','1197208-4453','54636525-3','16839338002','Av. Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200'),
(7,'1985/10/13','113456-6543','54366362-5','14332654765','R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030'),
(8,'1975/08/27','117656-6377','53254444-1','91305348010','R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380'),
(9,'1972/03/21','1195436-8769','54566266-7','79799299004','Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001'),
(10,'2018/03/05',NULL,'54566266-8','13771913039','R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140')
GO

INSERT INTO situacao (descricao)
VALUES ('Realizada'), ('Cancelada'), ('Agendada')
GO

INSERT INTO consulta (idClinica, idPaciente, idMedico, idSituacao, dataConsulta)
VALUES (1,7,3,1,'20-01-2020 15:00'), 
(1,2,2,2,'06-01-2020 10:00'),
(1,3,2,1,'07-02-2020 11:00'),
(1,2,2,1,'06-02-2018 10:00'),
(1,4,1,2,'07-02-2019 11:00'),
(1,7,3,3,'08-03-2020 15:00'),
(1,4,2,3,'09-03-2020 11:00')
GO