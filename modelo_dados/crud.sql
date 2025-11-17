Use [PTI Senac]

-- ============================================================
-- SCRIPT DE INSERÇÃO DE DADOS EXEMPLO - SQL SERVER
-- ============================================================

-- ======================================
-- PESSOA FÍSICA
-- ======================================

INSERT INTO PessoaFisica (Nome, Email, Senha, DataNascimento, RG, CPF, Telefone, CEP, Logradouro, Bairro, Complemento, Municipio, Pais, Estado)
VALUES
('Ana Souza', 'ana.souza@example.com', 'senha123', '1999-03-12', '1234567', '111.111.111-11', '11988887777', '01001-000', 'Rua A', 'Centro', NULL, 'São Paulo', 'Brasil', 'SP'),
('Bruno Lima', 'bruno.lima@example.com', 'senha123', '1998-05-22', '2345678', '222.222.222-22', '21999998888', '20040-002', 'Rua B', 'Copacabana', NULL, 'Rio de Janeiro', 'Brasil', 'RJ'),
('Carla Mendes', 'carla.mendes@example.com', 'senha123', '2000-07-10', '3456789', '333.333.333-33', '31988887766', '30130-000', 'Rua C', 'Savassi', NULL, 'Belo Horizonte', 'Brasil', 'MG'),
('Diego Santos', 'diego.santos@example.com', 'senha123', '1997-01-18', '4567890', '444.444.444-44', '41977776655', '80010-100', 'Rua D', 'Batel', NULL, 'Curitiba', 'Brasil', 'PR'),
('Eduarda Alves', 'edu.alves@example.com', 'senha123', '2001-09-05', '5678901', '555.555.555-55', '51966665544', '90010-000', 'Rua E', 'Moinhos', NULL, 'Porto Alegre', 'Brasil', 'RS'),

('Fabio Teles', 'fabio.teles@example.com', 'senha123', '1998-02-14', '6789012', '666.666.666-66', '62955554433', '70040-010', 'Rua F', 'Asa Sul', NULL, 'Brasília', 'Brasil', 'DF'),
('Gabriela Rocha', 'gabi.rocha@example.com', 'senha123', '1999-11-30', '7890123', '777.777.777-77', '71944443322', '72000-000', 'Rua G', 'Taguatinga', NULL, 'Brasília', 'Brasil', 'DF'),
('Henrique Dias', 'henrique.dias@example.com', 'senha123', '2000-12-12', '8901234', '888.888.888-88', '81933332211', '50030-000', 'Rua H', 'Boa Viagem', NULL, 'Recife', 'Brasil', 'PE'),
('Isabela Torres', 'isa.torres@example.com', 'senha123', '1997-04-20', '9012345', '999.999.999-99', '91922221100', '66000-100', 'Rua I', 'Nazaré', NULL, 'Belém', 'Brasil', 'PA'),
('João Pedro', 'joao.pedro@example.com', 'senha123', '1998-06-15', '0123456', '101.101.101-10', '11911112222', '04001-001', 'Rua J', 'Moema', NULL, 'São Paulo', 'Brasil', 'SP'),

('Karen Silva', 'karen.silva@example.com', 'senha123', '2001-03-09', '1122334', '121.121.121-12', '21922223333', '22041-001', 'Rua K', 'Ipanema', NULL, 'Rio de Janeiro', 'Brasil', 'RJ'),
('Lucas Ferreira', 'lucas.ferreira@example.com', 'senha123', '1999-08-25', '2233445', '131.131.131-13', '31933334444', '30140-010', 'Rua L', 'Funcionários', NULL, 'Belo Horizonte', 'Brasil', 'MG'),
('Mariana Prado', 'mariana.prado@example.com', 'senha123', '1998-10-10', '3344556', '141.141.141-14', '41944445555', '80020-200', 'Rua M', 'Centro', NULL, 'Curitiba', 'Brasil', 'PR'),
('Nathan Ribeiro', 'nathan.ribeiro@example.com', 'senha123', '1997-09-19', '4455667', '151.151.151-15', '51955556666', '90020-000', 'Rua N', 'Centro', NULL, 'Porto Alegre', 'Brasil', 'RS'),
('Olivia Martins', 'olivia.martins@example.com', 'senha123', '2000-11-01', '5566778', '161.161.161-16', '62966667777', '70050-020', 'Rua O', 'Setor Sul', NULL, 'Goiânia', 'Brasil', 'GO'),

('Paulo Akira', 'paulo.akira@example.com', 'senha123', '1980-05-14', '6677889', '171.171.171-17', '11977778888', '01310-000', 'Av Paulista', 'Bela Vista', NULL, 'São Paulo', 'Brasil', 'SP'),
('Renata Xavier', 'renata.xavier@example.com', 'senha123', '1975-09-21', '7788990', '181.181.181-18', '21988889999', '20031-100', 'Rua da Quitanda', 'Centro', NULL, 'Rio de Janeiro', 'Brasil', 'RJ'),
('Sérgio Moraes', 'sergio.moraes@example.com', 'senha123', '1982-12-03', '8899001', '191.191.191-19', '31911112233', '30120-010', 'Av Afonso Pena', 'Centro', NULL, 'Belo Horizonte', 'Brasil', 'MG'),
('Tatiana Lopes', 'tatiana.lopes@example.com', 'senha123', '1987-02-08', '9900112', '202.202.202-20', '41922223344', '80030-050', 'Rua XV', 'Centro', NULL, 'Curitiba', 'Brasil', 'PR'),
('Ulisses Farias', 'ulisses.farias@example.com', 'senha123', '1985-07-29', '1001122', '212.212.212-21', '51933334455', '90030-000', 'Rua da Praia', 'Centro', NULL, 'Porto Alegre', 'Brasil', 'RS');
GO

-- ======================================
-- PROFESSOR (herda de Pessoa Fisica)
-- ======================================

INSERT INTO Professor (PessoaFisicaId, IdLattes, Departamento)
VALUES
(16, 'LATTES1001', 'Engenharia'),
(17, 'LATTES1002', 'Direito'),
(18, 'LATTES1003', 'Computação'),
(19, 'LATTES1004', 'Matemática'),
(20, 'LATTES1005', 'Administração');
GO

-- ======================================
-- ALUNO (herda de Pessoa Fisica)
-- ======================================

INSERT INTO Aluno (PessoaFisicaId, Matricula, Curso)
VALUES
(1, 'MAT2024001', 'Engenharia'),
(2, 'MAT2024002', 'Direito'),
(3, 'MAT2024003', 'Medicina'),
(4, 'MAT2024004', 'Administração'),
(5, 'MAT2024005', 'Sistemas de Informação'),
(6, 'MAT2024006', 'Engenharia Civil'),
(7, 'MAT2024007', 'Psicologia'),
(8, 'MAT2024008', 'Arquitetura'),
(9, 'MAT2024009', 'Biologia'),
(10, 'MAT2024010', 'Matemática'),
(11, 'MAT2024011', 'História'),
(12, 'MAT2024012', 'Farmácia'),
(13, 'MAT2024013', 'Física'),
(14, 'MAT2024014', 'Publicidade'),
(15, 'MAT2024015', 'Geografia');
GO

-- ======================================
-- PESSOA JURÍDICA
-- ======================================

INSERT INTO PessoaJuridica
(RazaoSocial, Email, Senha, CNPJ, Telefone, CEP, Logradouro, Bairro, Complemento, Municipio, Pais, Estado)
VALUES
('Tech Solutions LTDA', 'contato@techsolutions.com', 'senha123', '12.345.678/0001-10', '1133334444', '01001-000', 'Av Paulista, 1000', 'Bela Vista', NULL, 'São Paulo', 'Brasil', 'SP'),
('Global Food Distribuidora', 'vendas@globalfood.com', 'senha123', '23.456.789/0001-20', '2133334444', '20040-000', 'Rua do Mercado, 55', 'Centro', NULL, 'Rio de Janeiro', 'Brasil', 'RJ'),
('Construtora Alpha SA', 'admin@alpha.com', 'senha123', '34.567.890/0001-30', '3133334444', '30120-000', 'Rua Minas Gerais, 45', 'Funcionários', NULL, 'Belo Horizonte', 'Brasil', 'MG'),
('Hospital Vida e Saúde', 'suporte@vidaesaude.org', 'senha123', '45.678.901/0001-40', '4133334444', '80010-000', 'Rua das Flores, 200', 'Centro', NULL, 'Curitiba', 'Brasil', 'PR'),
('Editora Futuro LTDA', 'contato@futuroeditora.com', 'senha123', '56.789.012/0001-50', '5133334444', '90010-000', 'Av Independência, 400', 'Centro', NULL, 'Porto Alegre', 'Brasil', 'RS');
GO

-- ======================================
-- FORNECEDOR (herda de Pessoa Juridica)
-- ======================================

INSERT INTO Fornecedor (PessoaJuridicaId, NumeroDeContrato, IdInterno, Material, Servico)
VALUES
(1, 'CT-2024-001', 'F001', 1, 0),
(2, 'CT-2024-002', 'F002', 1, 1),
(3, 'CT-2024-003', 'F003', 0, 1),
(4, 'CT-2024-004', 'F004', 1, 0),
(5, 'CT-2024-005', 'F005', 0, 1);

-- ======================================
-- NOTA
-- ======================================

INSERT INTO Nota (AlunoId, ProfessorId, Curso, Materia, Valor) VALUES
(1, 1, 'Engenharia', 'Cálculo I', 8.5),
(1, 2, 'Engenharia', 'Física I', 7.8),
(1, 3, 'Engenharia', 'Programação', 9.1);

INSERT INTO Nota VALUES
(2, 2, 'Direito', 'Direito Civil I', 8.2),
(2, 3, 'Direito', 'Direito Penal I', 7.9),
(2, 4, 'Direito', 'Filosofia Jurídica', 9.0);

INSERT INTO Nota VALUES
(3, 3, 'Medicina', 'Anatomia', 8.7),
(3, 4, 'Medicina', 'Biologia Celular', 7.5),
(3, 5, 'Medicina', 'Bioquímica', 9.3);

INSERT INTO Nota VALUES
(4, 4, 'Administração', 'Introdução à Administração', 8.0),
(4, 5, 'Administração', 'Contabilidade I', 7.6),
(4, 1, 'Administração', 'Economia I', 8.9);

INSERT INTO Nota VALUES
(5, 5, 'Sistemas de Informação', 'Algoritmos', 9.4),
(5, 1, 'Sistemas de Informação', 'Banco de Dados I', 8.7),
(5, 2, 'Sistemas de Informação', 'Estruturas de Dados', 7.8);

INSERT INTO Nota VALUES
(6, 1, 'Engenharia Civil', 'Topografia', 8.3),
(6, 2, 'Engenharia Civil', 'Mecânica dos Solos', 7.7),
(6, 3, 'Engenharia Civil', 'Materiais de Construção', 8.9);

INSERT INTO Nota VALUES
(7, 2, 'Psicologia', 'Psicologia Geral', 9.0),
(7, 3, 'Psicologia', 'Neurociência Básica', 8.2),
(7, 4, 'Psicologia', 'Psicologia Social', 7.5);

INSERT INTO Nota VALUES
(8, 3, 'Arquitetura', 'Desenho Técnico', 8.8),
(8, 4, 'Arquitetura', 'História da Arquitetura', 9.1),
(8, 5, 'Arquitetura', 'Projeto Arquitetônico I', 7.9);

INSERT INTO Nota VALUES
(9, 4, 'Biologia', 'Zoologia', 8.4),
(9, 5, 'Biologia', 'Botânica', 8.1),
(9, 1, 'Biologia', 'Ecologia', 9.0);

INSERT INTO Nota VALUES
(10, 5, 'Matemática', 'Álgebra Linear', 8.9),
(10, 1, 'Matemática', 'Cálculo II', 9.1),
(10, 2, 'Matemática', 'Geometria Analítica', 8.5);

INSERT INTO Nota VALUES
(11, 1, 'História', 'História Antiga', 8.2),
(11, 2, 'História', 'História Medieval', 7.9),
(11, 3, 'História', 'História do Brasil I', 8.7);

INSERT INTO Nota VALUES
(12, 2, 'Farmácia', 'Química Geral', 8.4),
(12, 3, 'Farmácia', 'Microbiologia', 8.1),
(12, 4, 'Farmácia', 'Farmacologia I', 9.2);

INSERT INTO Nota VALUES
(13, 3, 'Física', 'Física Clássica', 9.0),
(13, 4, 'Física', 'Física Moderna', 8.3),
(13, 5, 'Física', 'Matemática Aplicada', 7.8);

INSERT INTO Nota VALUES
(14, 4, 'Publicidade', 'Marketing I', 8.6),
(14, 5, 'Publicidade', 'Criação Publicitária', 7.9),
(14, 1, 'Publicidade', 'Comunicação Visual', 8.8);

INSERT INTO Nota VALUES
(15, 5, 'Geografia', 'Geografia Física', 8.3),
(15, 1, 'Geografia', 'Cartografia', 9.0),
(15, 2, 'Geografia', 'Geologia', 8.4);
GO


-- ======================================
-- PROPOSTA
-- ======================================

INSERT INTO Proposta (FornecedorId, Proposta, Valor) VALUES
(1, 'Fornecimento de equipamentos de informática – pacote básico', 12500.00),
(1, 'Atualização de servidores e infraestrutura de rede', 28900.00);

INSERT INTO Proposta (FornecedorId, Proposta, Valor) VALUES
(2, 'Fornecimento de alimentos não perecíveis para 3 meses', 18750.00),
(2, 'Serviço de entrega semanal de frutas e verduras frescas', 9200.00);

INSERT INTO Proposta (FornecedorId, Proposta, Valor) VALUES
(3, 'Execução de obra de manutenção predial – etapa 1', 45800.00),
(3, 'Reforma de salas administrativas – projeto completo', 68750.00);

INSERT INTO Proposta (FornecedorId, Proposta, Valor) VALUES
(4, 'Prestação de serviços hospitalares emergenciais', 98000.00),
(4, 'Fornecimento de equipamentos médicos – linha premium', 152300.00);

INSERT INTO Proposta (FornecedorId, Proposta, Valor) VALUES
(5, 'Produção de 300 exemplares de material didático', 5400.00),
(5, 'Serviço editorial completo para livro institucional', 12800.00);
GO
-- ======================================
-- LOG DE LOGIN
-- ======================================

INSERT INTO LogLogin (UsuarioEmail, Acao) VALUES
('ana.souza@example.com', 'login'),
('ana.souza@example.com', 'logout'),
('bruno.lima@example.com', 'login'),
('carla.mendes@example.com', 'login'),
('carla.mendes@example.com', 'logout'),
('diego.santos@example.com', 'login'),
('edu.alves@example.com', 'login'),
('fabio.teles@example.com', 'logout'),
('gabi.rocha@example.com', 'login'),
('henrique.dias@example.com', 'logout'),

('paulo.akira@example.com', 'login'),
('renata.xavier@example.com', 'login'),
('renata.xavier@example.com', 'logout'),
('sergio.moraes@example.com', 'login'),
('tatiana.lopes@example.com', 'logout'),

('contato@techsolutions.com', 'login'),
('vendas@globalfood.com', 'logout'),
('admin@alpha.com', 'login'),
('suporte@vidaesaude.org', 'logout'),
('contato@futuroeditora.com', 'login');
GO

-- ======================================
-- LOG DE CADASTRO
-- ======================================

INSERT INTO LogCadastro (UsuarioEmail, Acao) VALUES
('ana.souza@example.com', 'cadastrar'),
('bruno.lima@example.com', 'cadastrar'),
('carla.mendes@example.com', 'cadastrar'),
('diego.santos@example.com', 'cadastrar'),
('edu.alves@example.com', 'cadastrar'),

('fabio.teles@example.com', 'cadastrar'),
('gabi.rocha@example.com', 'cadastrar'),
('henrique.dias@example.com', 'cadastrar'),
('isa.torres@example.com', 'cadastrar'),
('joao.pedro@example.com', 'cadastrar'),

('karen.silva@example.com', 'excluir'),
('lucas.ferreira@example.com', 'excluir'),
('mariana.prado@example.com', 'cadastrar'),
('nathan.ribeiro@example.com', 'excluir'),
('olivia.martins@example.com', 'cadastrar'),

('contato@techsolutions.com', 'cadastrar'),
('vendas@globalfood.com', 'cadastrar'),
('admin@alpha.com', 'excluir'),
('suporte@vidaesaude.org', 'cadastrar'),
('contato@futuroeditora.com', 'excluir');
GO





-- ============================================================
-- SCRIPT DE UPDATE DE DADOS EXEMPLO - SQL SERVER
-- ============================================================

UPDATE PessoaFisica SET Nome = 'Ana Souza Martins'     WHERE Id = 1;
UPDATE PessoaFisica SET Nome = 'Bruno A. Lima'          WHERE Id = 2;
UPDATE PessoaFisica SET Nome = 'Carla M. Rodrigues'     WHERE Id = 3;
UPDATE PessoaFisica SET Nome = 'Diego S. Almeida'       WHERE Id = 4;
UPDATE PessoaFisica SET Nome = 'Eduarda P. Alves'       WHERE Id = 5;

UPDATE PessoaFisica SET Nome = 'Fabio T. Carvalho'      WHERE Id = 6;
UPDATE PessoaFisica SET Nome = 'Gabriela C. Rocha'      WHERE Id = 7;
UPDATE PessoaFisica SET Nome = 'Henrique L. Dias'       WHERE Id = 8;
UPDATE PessoaFisica SET Nome = 'Isabela T. Monteiro'    WHERE Id = 9;
UPDATE PessoaFisica SET Nome = 'João P. Moreira'        WHERE Id = 10;

UPDATE PessoaJuridica SET RazaoSocial = 'Tech Solutions Global LTDA'         WHERE Id = 1;
UPDATE PessoaJuridica SET RazaoSocial = 'Global Food Distribuidora Premium' WHERE Id = 2;
UPDATE PessoaJuridica SET RazaoSocial = 'Construtora Alpha Engenharia SA'    WHERE Id = 3;
UPDATE PessoaJuridica SET RazaoSocial = 'Hospital Vida e Saúde Plus'         WHERE Id = 4;
UPDATE PessoaJuridica SET RazaoSocial = 'Editora Futuro Avançado LTDA'       WHERE Id = 5;
GO


-- ============================================================
-- SCRIPT DE DELETE DE DADOS EXEMPLO - SQL SERVER
-- ============================================================

DELETE FROM Aluno WHERE Id = 1;
DELETE FROM Aluno WHERE Id = 2;
DELETE FROM Aluno WHERE Id = 3;
DELETE FROM Aluno WHERE Id = 4;
DELETE FROM Aluno WHERE Id = 5;
