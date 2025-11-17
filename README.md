# Senac 2025 2 PI Grupo7

# 📘 Projeto Integrador Senac 2025

Este é um projeto desenhado e executado a várias mãos.  

O Projeto Integrador Senac 2025 é uma solução desenvolvida em equipe para simular o funcionamento de um sistema acadêmico real. O objetivo principal é construir um banco de dados completo e um protótipo funcional de site, permitindo a gestão de estudantes, disciplinas e notas de forma simples. Seu objetivo é criar um **banco de dados** e também um **protótipo de site**, capaz de realizar operações de:

- Inserção de notas de alunos
- Exclusão de registros
- Visualização de notas
- Organização de dados escolares de uma instituição fictícia

---
[`/diagramas`](https://github.com/Ph03n3x/Senac-2025-2-PI-Grupo7/tree/main/diagramas)

## 📸 Demonstração
<<<<<<< HEAD
A página de Login foi projetada para oferecer uma experiência simples, intuitiva e segura ao usuário. Ela funciona como a porta de entrada do sistema, garantindo que apenas usuários autorizados acessem as funcionalidades de consulta e gerenciamento de notas.
![Login](./prototipo/Desktop.png)
=======

>>>>>>> 1c45db45de2e05275fa08b6c63a843b7de06c818
---
[`/prototipo`](https://github.com/Ph03n3x/Senac-2025-2-PI-Grupo7/tree/main/prototipo)

## 📥 Instalação

Siga os passos abaixo para instalar e rodar o banco de dados no **SQL Server**:

1. Baixe o arquivo `.sql` do repositório.
2. Abra o **SQL Server Management Studio (SSMS)**.
3. Conecte-se à sua instância do SQL Server.
4. Vá em **File > Open > File…** e selecione o arquivo do banco de dados.
5. Execute o script pressionando **F5** ou clicando em **Execute**.
6. O banco de dados será criado automaticamente com as tabelas e dados necessários.

---

## ▶️ Como Usar

Depois de executar o script, você pode utilizar alguns comandos básicos no SQL Server:
[`/modelo_dados`](https://github.com/Ph03n3x/Senac-2025-2-PI-Grupo7/tree/main/modelo_dados)
### ➕ Inserir uma nova nota
```sql
INSERT INTO Notas (AlunoID, Disciplina, Nota)
VALUES (1, 'Matemática', 8.5);
