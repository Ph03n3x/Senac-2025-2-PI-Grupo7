-- ============================================================
-- CONSULTAS DE TESTE - SQL SERVER
-- ============================================================

-- ======================================
-- 1 - Listar todas as pessoas físicas
-- ======================================
SELECT 
    Id,
    Nome,
    Email,
    CPF,
    Telefone,
    Municipio,
    Estado
FROM PessoaFisica;
GO

-- ======================================
-- 2 - Listar todos os professores com dados da pessoa física
-- ======================================
SELECT 
    pf.Id AS PessoaId,
    pf.Nome,
    pf.Email,
    pf.CPF,
    pr.IdLattes,
    pr.Departamento
FROM Professor pr
INNER JOIN PessoaFisica pf ON pr.PessoaFisicaId = pf.Id;
GO

-- ======================================
-- 3 - Listar todos os alunos com dados da pessoa física
-- ======================================
SELECT 
    pf.Id AS PessoaId,
    pf.Nome,
    pf.Email,
    pf.CPF,
    a.Matricula,
    a.Curso
FROM Aluno a
INNER JOIN PessoaFisica pf ON a.PessoaFisicaId = pf.Id;
GO

-- ======================================
-- 4 - Listar todas as pessoas jurídicas
-- ======================================
SELECT 
    Id,
    RazaoSocial,
    Email,
    CNPJ,
    Telefone,
    Municipio,
    Estado
FROM PessoaJuridica;
GO

-- ======================================
-- 5 - Listar todos os fornecedores com dados da pessoa jurídica
-- ======================================
SELECT 
    pj.Id AS PessoaJuridicaId,
    pj.RazaoSocial,
    pj.Email,
    pj.CNPJ,
    f.NumeroDeContrato,
    f.IdInterno,
    CASE WHEN f.Material = 1 THEN 'Sim' ELSE 'Não' END AS ForneceMaterial,
    CASE WHEN f.Servico = 1 THEN 'Sim' ELSE 'Não' END AS ForneceServico
FROM Fornecedor f
INNER JOIN PessoaJuridica pj ON f.PessoaJuridicaId = pj.Id;
GO

-- ======================================
-- 6 - Listar histórico de logins (ordem cronológica)
-- ======================================
SELECT 
    Id,
    UsuarioEmail,
    Acao,
    DataLogin
FROM LogLogin
ORDER BY DataLogin ASC;
GO

-- ======================================
-- 7 - Listar histórico de cadastros/exclusões
-- ======================================
SELECT 
    Id,
    UsuarioEmail,
    Acao,
    DataAcao
FROM LogCadastro
ORDER BY DataAcao ASC;
GO

-- ======================================
-- 8 - Exemplo de busca geral: listar todas as pessoas físicas e o tipo (Aluno, Professor ou Nenhum)
-- ======================================
SELECT 
    pf.Id,
    pf.Nome,
    pf.Email,
    CASE
        WHEN pr.Id IS NOT NULL THEN 'Professor'
        WHEN a.Id IS NOT NULL THEN 'Aluno'
        ELSE 'Pessoa Física'
    END AS Tipo,
    COALESCE(pr.Departamento, a.Curso, '-') AS Informacao
FROM PessoaFisica pf
LEFT JOIN Professor pr ON pr.PessoaFisicaId = pf.Id
LEFT JOIN Aluno a ON a.PessoaFisicaId = pf.Id;
GO

-- ======================================
-- 9 - Exemplo de relatório consolidado de fornecedores
-- ======================================
SELECT 
    pj.RazaoSocial AS Empresa,
    pj.Email,
    pj.CNPJ,
    f.NumeroDeContrato AS Contrato,
    CONCAT(
        CASE WHEN f.Material = 1 THEN 'Material' ELSE '' END,
        CASE WHEN f.Material = 1 AND f.Servico = 1 THEN ' e ' ELSE '' END,
        CASE WHEN f.Servico = 1 THEN 'Serviço' ELSE '' END
    ) AS TipoDeFornecimento
FROM Fornecedor f
INNER JOIN PessoaJuridica pj ON pj.Id = f.PessoaJuridicaId;
GO


-- ======================================
-- 10 - Exemplo de busca de nota
-- ======================================

SELECT * FROM Nota


-- ======================================
-- 11 - Exemplo de busca de nota com informações do aluno
-- ======================================

USE [PTI Senac]

SELECT
	pf.Nome,
	pf.CPF,
	a.Curso,
	n.Materia,
	n.Valor AS Nota
FROM Nota n
INNER JOIN Aluno a ON n.AlunoId = A.Id
INNER JOIN PessoaFisica pf ON a.PessoaFisicaId = pf.Id;

-- ======================================
-- 12 - Exemplo de busca de proposta
-- ======================================

SELECT * from Proposta


-- ======================================
-- 13 - Exemplo de busca de nota com informações do forncedor
-- ======================================

SELECT
	pj.RazaoSocial,
	pr.Proposta,
	pr.Valor
FROM Proposta pr
INNER JOIN Fornecedor f ON f.Id = pr.FornecedorId 
INNER JOIN PessoaJuridica pj ON f.PessoaJuridicaId = pj.Id


