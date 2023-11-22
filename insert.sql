INSERT INTO departamento (idDepartamento, nomeDepartamento)
VALUES (1, 'Departamento de Ciências da Computação');

INSERT INTO departamento (idDepartamento, nomeDepartamento)
VALUES (1, 'Departamento de Ciências da Computação');

INSERT INTO professores (idProfessor, idFuncionario, nome, telefone, tituloProf)
VALUES (1, 1, 'Prof. Maria Oliveira', '987654321', 'Doutora');

INSERT INTO cursos (idCurso, tituloCurso, descricaoCurso, horarioAulas, requisitosCurso)
VALUES (1, 'Introdução à Programação', 'Curso introdutório de programação', 'Segunda e Quarta, 18:00-20:00', 'Nenhum');

INSERT INTO turmas (idTurma, idDepartamento, idProfessor, nomeTurma)
VALUES (1, 1, 1, 'Turma A');

INSERT INTO alunos (idAluno, nome, telefone, endereco, dataNasc)
VALUES (1, 'Ana Souza', '987654321', 'Rua B, 456', '1995-05-15');

INSERT INTO matricula (idMatricula, idAluno, idTurma, dataMatricula)
VALUES (1, 1, 1, '2023-01-10');

INSERT INTO matricula (idMatricula, idAluno, idTurma, dataMatricula)
VALUES (1, 1, 1, '2023-01-10');

INSERT INTO mensalidade (idMensalidade, idAluno, valor, dataDeVencimento)
VALUES (1, 1, 500.00, '2023-03-05');

