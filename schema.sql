CREATE TABLE Curso (
id_curso INT PRIMARY KEY,
nome_curso VARCHAR(100)
);

CREATE TABLE Professor (
id_professor INT PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100),
titulacao VARCHAR(100)
);

CREATE TABLE Aluno (
id_aluno INT PRIMARY KEY,
nome VARCHAR(100),
matricula VARCHAR(20),
email VARCHAR(100),
id_curso INT,
FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

CREATE TABLE Disciplina (
id_disciplina INT PRIMARY KEY,
nome_disciplina VARCHAR(100),
carga_horaria INT,
id_curso INT,
FOREIGN KEY (id_curso) REFERENCES Curso(id_curso)
);

CREATE TABLE Turma (
id_turma INT PRIMARY KEY,
semestre INT,
ano INT,
id_disciplina INT,
id_professor INT,
FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id_disciplina),
FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

CREATE TABLE Matricula (
id_matricula INT PRIMARY KEY,
id_aluno INT,
id_turma INT,
FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);