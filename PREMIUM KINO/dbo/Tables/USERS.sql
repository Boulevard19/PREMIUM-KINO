create table USERS (
	ID uniqueidentifier constraint PK_dbo_USERS primary key,
	NAME nvarchar(64) not null,
	SURNAME nvarchar(64) not null,
	LOGIN nvarchar(64) constraint UQ_dbo_USERS_LOGIN unique not null, 
	PASSWORD varchar(64) not null,
	ROLE int not null,
	EMAIL varchar(64) constraint UQ_dbo_USERS_EMAIL unique not null,
	PHONE varchar(16) constraint UQ_dbo_USERS_PHONE unique not null 
)