CREATE VIEW vw_alunos_turma AS
SELECT
    m.idMatricula,
    a.idAluno,
    a.nome AS nomeAluno,
    t.idTurma,
    t.nomeTurma,
    c.tituloCurso,
    n.nota
FROM
    matricula m
JOIN alunos a ON m.idAluno = a.idAluno
JOIN turmas t ON m.idTurma = t.idTurma
JOIN nota n ON m.idAluno = n.idAluno AND m.idTurma = n.idTurma
JOIN cursos c ON n.idCurso = c.idCurso;

CREATE VIEW vw_mensalidades_pagas AS
SELECT
    m.idMensalidade,
    a.idAluno,
    a.nome AS nomeAluno,
    m.valor,
    m.dataDeVencimento
FROM
    mensalidade m
JOIN alunos a ON m.idAluno = a.idAluno;

CREATE VIEW vw_despesas_departamento AS
SELECT
    r.idDespesa,
    d.idDepartamento,
    d.nomeDepartamento,
    r.valor,
    r.descricao
FROM
    registro_despesa r
JOIN departamento d ON r.idDepartamento = d.idDepartamento;

