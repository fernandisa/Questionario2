﻿CREATE TABLE CURSO (
ID_CURSO BIGINT PRIMARY KEY NOT NULL,
NOME VARCHAR(30) NOT NULL,
CURSO_AREA VARCHAR(20) NOT NULL
);


CREATE TABLE PROFESSOR (
ID_PROFESSOR BIGINT PRIMARY KEY NOT NULL,
PROF_PERIODO CHAR(6) NOT NULL,
PROF_NOME VARCHAR(50) NOT NULL
);


CREATE TABLE MONITOR (
ID_MONITOR BIGINT PRIMARY KEY NOT NULL,
MON_PERIODO CHAR(6) NOT NULL,
MON_NOME VARCHAR(50) NOT NULL
);


CREATE TABLE DISCIPLINA (
ID_DISCIPLINA BIGINT PRIMARY KEY NOT NULL,
DISC_NOME VARCHAR(20) NOT NULL,
AREA VARCHAR(20) NOT NULL,
ID_MONITOR BIGINT NOT NULL,
ID_CURSO BIGINT NOT NULL,
ID_PROFESSOR BIGINT NOT NULL,
FOREIGN KEY(ID_CURSO) REFERENCES CURSO (ID_CURSO),
FOREIGN KEY(ID_MONITOR) REFERENCES MONITOR (ID_MONITOR),
FOREIGN KEY(ID_PROFESSOR) REFERENCES PROFESSOR (ID_PROFESSOR)
);


CREATE TABLE MONI_AVAL (
ID_MONIAVAL BIGINT PRIMARY KEY NOT NULL,
MA_PERIODO CHAR(6) NOT NULL,
MA_RESPOSTA1 NUMERIC NOT NULL,
MA_RESPOSTA2 NUMERIC NOT NULL,
MA_RESPOSTA3 NUMERIC NOT NULL,
MA_RESPOSTA4 NUMERIC NOT NULL,
MA_RESPOSTA5 NUMERIC NOT NULL,
MA_RESPOSTA6 NUMERIC NOT NULL,
MA_RESPOSTA7 NUMERIC NOT NULL,
MA_RESPOSTA8 NUMERIC NOT NULL,
MA_RESPOSTA9 NUMERIC NOT NULL,
MA_RESPOSTA10 NUMERIC NOT NULL,
ID_QUESTIONARIO BIGINT NOT NULL,
ID_MONITOR BIGINT NOT NULL,
FOREIGN KEY(ID_QUESTIONARIO) REFERENCES QUESTIONARIO (ID_QUESTIONARIO),
FOREIGN KEY(ID_MONITOR) REFERENCES MONITOR (ID_MONITOR)
);


CREATE TABLE PROF_AVAL (
ID_PROFAVAL BIGINT PRIMARY KEY NOT NULL,
PA_PERIODO CHAR(6) NOT NULL,
PA_RESPOSTA1 NUMERIC NOT NULL,
PA_RESPOSTA2 NUMERIC NOT NULL,
PA_RESPOSTA3 NUMERIC NOT NULL,
PA_RESPOSTA4 NUMERIC NOT NULL,
PA_RESPOSTA5 NUMERIC NOT NULL,
PA_RESPOSTA6 NUMERIC NOT NULL,
PA_RESPOSTA7 NUMERIC NOT NULL,
PA_RESPOSTA8 NUMERIC NOT NULL,
PA_RESPOSTA9 NUMERIC NOT NULL,
PA_RESPOSTA10 NUMERIC NOT NULL,
ID_PROFESSOR BIGINT NOT NULL,
ID_QUESTIONARIO BIGINT NOT NULL,
FOREIGN KEY(ID_PROFESSOR) REFERENCES PROFESSOR (ID_PROFESSOR),
FOREIGN KEY(ID_QUESTIONARIO) REFERENCES QUESTIONARIO (ID_QUESTIONARIO)
);


CREATE TABLE QUESTIONARIO (
ID_QUESTIONARIO BIGINT PRIMARY KEY NOT NULL,
PERGUNTA1 VARCHAR(150) NOT NULL,
PERGUNTA2 VARCHAR(150) NOT NULL,
PERGUNTA3 VARCHAR(150) NOT NULL,
PERGUNTA4 VARCHAR(150) NOT NULL,
PERGUNTA5 VARCHAR(150) NOT NULL,
PERGUNTA6 VARCHAR(150) NOT NULL,
PERGUNTA7 VARCHAR(150) NOT NULL,
PERGUNTA8 VARCHAR(150) NOT NULL,
PERGUNTA9 VARCHAR(150) NOT NULL,
PERGUNTA10 VARCHAR(150) NOT NULL,
QUEST_PERIODO CHAR(6) NOT NULL
);