CREATE TABLE `Aluno` (
  `id` int PRIMARY KEY,
  `nome` varchar(40),
  `data` date,
  `cpf` int(11),
  `email` varchar(40),
  `sexo` char(1),
  `Professor_id` int
);

CREATE TABLE `Curso` (
  `id` int PRIMARY KEY,
  `turno` varchar(20),
  `disciplina` varchar(20),
  `descricao` text(500),
  `Materia_id` int
);

CREATE TABLE `Turma` (
  `id` int PRIMARY KEY,
  `inicio` date,
  `final` date,
  `turno` varchar(30),
  `professor` varchar(40),
  `carga_horaria` int,
  `Aluno_id` int
);

CREATE TABLE `Professor` (
  `id` int PRIMARY KEY,
  `nome` varchar(40),
  `cpf` int(11),
  `matricula` int(20),
  `unidade_curricular` varchar(30),
  `Curso_id` int
);

CREATE TABLE `Materia` (
  `id` int PRIMARY KEY,
  `nome` varcha(40),
  `horas` int,
  `requisitos` text(100)
);

ALTER TABLE `Curso` ADD FOREIGN KEY (`Materia_id`) REFERENCES `Materia` (`id`);

ALTER TABLE `Professor` ADD FOREIGN KEY (`Curso_id`) REFERENCES `Curso` (`id`);

ALTER TABLE `Turma` ADD FOREIGN KEY (`Aluno_id`) REFERENCES `Aluno` (`id`);

ALTER TABLE `Aluno` ADD FOREIGN KEY (`Professor_id`) REFERENCES `Professor` (`id`);
