-- Crie o banco de dados UFV Database
CREATE DATABASE IF NOT EXISTS `UFV Database`;

USE `UFV Database`;

-- Crie a tabela funcionarios
CREATE TABLE IF NOT EXISTS funcionarios (
    idFuncionario INT PRIMARY KEY,
    idDepartamento INT,
    nome VARCHAR(255),
    dataNascimento DATE,
    endereco VARCHAR(255),
    telefone VARCHAR(20),
    FOREIGN KEY (idDepartamento) REFERENCES departamentos(idDepartamento)
);

-- Crie a tabela pagamento_funcionarios
CREATE TABLE IF NOT EXISTS pagamento_funcionarios (
    idPagamento INT PRIMARY KEY,
    idFuncionario INT,
    valor DECIMAL(10, 2),
    dataPagamento DATE,
    FOREIGN KEY (idFuncionario) REFERENCES funcionarios(idFuncionario)
);

-- Crie a tabela professores
CREATE TABLE IF NOT EXISTS professores (
    idProfessor INT PRIMARY KEY,
    idFuncionario INT,
    nome VARCHAR(255),
    telefone VARCHAR(20),
    tituloProf VARCHAR(255),
    FOREIGN KEY (idFuncionario) REFERENCES funcionarios(idFuncionario)
);

-- Crie a tabela departamento
CREATE TABLE IF NOT EXISTS departamento (
    idDepartamento INT PRIMARY KEY,
    nomeDepartamento VARCHAR(255)
);

-- Crie a tabela cursos
CREATE TABLE IF NOT EXISTS cursos (
    idCurso INT PRIMARY KEY,
    tituloCurso VARCHAR(255),
    descricaoCurso TEXT,
    horarioAulas VARCHAR(50),
    requisitosCurso TEXT
);

-- Crie a tabela turmas
CREATE TABLE IF NOT EXISTS turmas (
    idTurma INT PRIMARY KEY,
    idDepartamento INT,
    idProfessor INT,
    nomeTurma VARCHAR(255),
    FOREIGN KEY (idDepartamento) REFERENCES departamento(idDepartamento),
    FOREIGN KEY (idProfessor) REFERENCES professores(idProfessor)
);

-- Crie a tabela registro_despesa
CREATE TABLE IF NOT EXISTS registro_despesa (
    idDespesa INT PRIMARY KEY,
    idDepartamento INT,
    valor DECIMAL(10, 2),
    descricao TEXT,
    FOREIGN KEY (idDepartamento) REFERENCES departamento(idDepartamento)
);

-- Crie a tabela nota
CREATE TABLE IF NOT EXISTS nota (
    idNota INT PRIMARY KEY,
    idAluno INT,
    idTurma INT,
    idCurso INT,
    nota DECIMAL(5, 2),
    data DATE,
    FOREIGN KEY (idAluno) REFERENCES alunos(idAluno),
    FOREIGN KEY (idTurma) REFERENCES turmas(idTurma),
    FOREIGN KEY (idCurso) REFERENCES cursos(idCurso)
);

-- Crie a tabela matricula
CREATE TABLE IF NOT EXISTS matricula (
    idMatricula INT PRIMARY KEY,
    idAluno INT,
    idTurma INT,
    dataMatricula DATE,
    FOREIGN KEY (idAluno) REFERENCES alunos(idAluno),
    FOREIGN KEY (idTurma) REFERENCES turmas(idTurma)
);

-- Crie a tabela alunos
CREATE TABLE IF NOT EXISTS alunos (
    idAluno INT PRIMARY KEY,
    nome VARCHAR(255),
    telefone VARCHAR(20),
    endereco VARCHAR(255),
    dataNasc DATE
);

-- Crie a tabela mensalidade
CREATE TABLE IF NOT EXISTS mensalidade (
    idMensalidade INT PRIMARY KEY,
    idAluno INT,
    valor DECIMAL(10, 2),
    dataDeVencimento DATE,
    FOREIGN KEY (idAluno) REFERENCES alunos(idAluno)
);






