--********************************************************************************
create sequence sq_id_tb_users START 1;
create sequence sq_codigo_tb_users START 1;

CREATE TABLE tb_users (
	ID_REG integer NOT NULL DEFAULT NEXTVAL('sq_id_tb_users')
    ,Codigo varchar(10) NOT NULL DEFAULT TRIM(TO_CHAR(NEXTVAL('sq_codigo_tb_users'),'0000000000'))
	,AUDIT_USER_INC varchar(30) NOT NULL DEFAULT current_user
	,AUDIT_DATE_INC date NOT NULL DEFAULT current_date
	,AUDIT_TIME_INC time NOT NULL DEFAULT current_time
	,AUDIT_USER_ALT varchar(30)
	,AUDIT_DATE_ALT date
	,AUDIT_TIME_ALT time
	,Bloqueado boolean NOT NULL DEFAULT false
	,Deletado boolean NOT NULL DEFAULT false

	,Nome varchar(100) NOT NULL
	,Sobrenome varchar(100)
	,Apelido varchar(100)
	,Data_Nascimento date
    ,Adminstrador boolean NOT NULL DEFAULT false
);

--********************************************************************************
create sequence sq_id_tb_events START 1;
create sequence sq_codigo_tb_events START 1;

CREATE TABLE tb_events (
	ID_REG integer NOT NULL DEFAULT NEXTVAL('sq_id_tb_events')
    ,Codigo varchar(10) NOT NULL DEFAULT TRIM(TO_CHAR(NEXTVAL('sq_codigo_tb_events'),'0000000000'))
	,AUDIT_USER_INC varchar(30) NOT NULL DEFAULT current_user
	,AUDIT_DATE_INC date NOT NULL DEFAULT current_date
	,AUDIT_TIME_INC time NOT NULL DEFAULT current_time
	,AUDIT_USER_ALT varchar(30)
	,AUDIT_DATE_ALT date
	,AUDIT_TIME_ALT time
	,Bloqueado boolean NOT NULL DEFAULT false
	,Deletado boolean NOT NULL DEFAULT false

	,descricao varchar(250) NOT NULL
    ,estado varchar(2) NOT NULL
    ,municipio varchar(120)
    ,data_hora_inicio date NOT NULL
    ,data_hora_final date NOT NULL
    ,codigo_criador varchar(10) NOT NULL
);