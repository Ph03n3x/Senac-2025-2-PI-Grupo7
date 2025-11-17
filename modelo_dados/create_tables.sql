
use [PTI Senac]

-- ============================================================
-- SCRIPT DE CRIAÇÃO DE TABELAS - DIAGRAMA DE CLASSE
-- Banco: Microsoft SQL Server
-- ============================================================

-- ======================================
-- TABELA: Pessoa Fisica
-- ======================================
CREATE TABLE PessoaFisica (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(150) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    Senha NVARCHAR(255) NOT NULL,
    DataNascimento DATE NULL,
    RG NVARCHAR(20) NULL,
    CPF NVARCHAR(14) UNIQUE NULL,
    Telefone NVARCHAR(20) NULL,
    CEP NVARCHAR(10) NULL,
    Logradouro NVARCHAR(150) NULL,
    Bairro NVARCHAR(100) NULL,
    Complemento NVARCHAR(100) NULL,
    Municipio NVARCHAR(100) NULL,
    Pais NVARCHAR(50) NULL,
    Estado NVARCHAR(50) NULL
);
GO

-- ======================================
-- TABELA: Professor (herda de Pessoa Fisica)
-- ======================================
CREATE TABLE Professor (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PessoaFisicaId INT NOT NULL,
    IdLattes NVARCHAR(50) NULL,
    Departamento NVARCHAR(100) NULL,
    CONSTRAINT FK_Professor_PessoaFisica
        FOREIGN KEY (PessoaFisicaId)
        REFERENCES PessoaFisica(Id)
        ON DELETE CASCADE
);
GO

-- ======================================
-- TABELA: Aluno (herda de Pessoa Fisica)
-- ======================================
CREATE TABLE Aluno (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PessoaFisicaId INT NOT NULL,
    Matricula NVARCHAR(50) NOT NULL UNIQUE,
    Curso NVARCHAR(100) NULL,
    CONSTRAINT FK_Aluno_PessoaFisica
        FOREIGN KEY (PessoaFisicaId)
        REFERENCES PessoaFisica(Id)
        ON DELETE CASCADE
);
GO

-- ======================================
-- TABELA: Pessoa Juridica
-- ======================================
CREATE TABLE PessoaJuridica (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    RazaoSocial NVARCHAR(150) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    Senha NVARCHAR(255) NOT NULL,
    CNPJ NVARCHAR(18) NOT NULL UNIQUE,
    Telefone NVARCHAR(20) NULL,
    CEP NVARCHAR(10) NULL,
    Logradouro NVARCHAR(150) NULL,
    Bairro NVARCHAR(100) NULL,
    Complemento NVARCHAR(100) NULL,
    Municipio NVARCHAR(100) NULL,
    Pais NVARCHAR(50) NULL,
    Estado NVARCHAR(50) NULL
);
GO

-- ======================================
-- TABELA: Fornecedor (herda de Pessoa Juridica)
-- ======================================
CREATE TABLE Fornecedor (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PessoaJuridicaId INT NOT NULL,
    NumeroDeContrato NVARCHAR(50) NULL,
    IdInterno NVARCHAR(50) NULL,
    Material BIT NULL,
    Servico BIT NULL,
    CONSTRAINT FK_Fornecedor_PessoaJuridica
        FOREIGN KEY (PessoaJuridicaId)
        REFERENCES PessoaJuridica(Id)
        ON DELETE CASCADE
);
GO

-- ======================================
-- TABELAS DE INTERFACE / LOG DE AÇÕES
-- ======================================
CREATE TABLE LogLogin (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UsuarioEmail NVARCHAR(100) NOT NULL,
    DataLogin DATETIME DEFAULT GETDATE(),
    Acao NVARCHAR(10) CHECK (Acao IN ('login', 'logout')) NOT NULL
);
GO

CREATE TABLE LogCadastro (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    UsuarioEmail NVARCHAR(100) NOT NULL,
    Acao NVARCHAR(15) CHECK (Acao IN ('cadastrar', 'excluir')) NOT NULL,
    DataAcao DATETIME DEFAULT GETDATE()
);
GO


-- ======================================
-- TABELA: Nota
-- ======================================
CREATE TABLE Nota (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    AlunoId INT NOT NULL,
    ProfessorId INT NOT NULL,
    Curso NVARCHAR(100) NOT NULL,
    Materia NVARCHAR(100) NOT NULL,
    Valor FLOAT NOT NULL,
    CONSTRAINT FK_Nota_Aluno
        FOREIGN KEY (AlunoId)
        REFERENCES Aluno(Id),
    CONSTRAINT FK_Nota_Professor
        FOREIGN KEY (ProfessorId)
        REFERENCES Professor(Id)
);
GO


ALTER TABLE Nota DROP CONSTRAINT IF EXISTS FK_Nota_Aluno;
ALTER TABLE Nota 
ADD CONSTRAINT FK_Nota_Aluno 
FOREIGN KEY (AlunoId) REFERENCES Aluno(Id)
ON DELETE CASCADE;
GO

-- ======================================
-- TABELA: Proposta
-- ======================================
CREATE TABLE Proposta (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    FornecedorId INT NOT NULL,
    Proposta NVARCHAR(500) NOT NULL,
    Valor FLOAT NOT NULL,
    CONSTRAINT FK_Proposta_Fornecedor
        FOREIGN KEY (FornecedorId)
        REFERENCES Fornecedor(Id)
);
GO




