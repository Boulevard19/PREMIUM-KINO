create table SCHEDULE (
	ID uniqueidentifier constraint PK_dbo_SCHEDULE primary key,
	ID_MOVIE uniqueidentifier constraint FK_dbo_MOVIE foreign key references MOVIE(ID) not null,
	AVIABLE_SEATS int not null,
	DATETIME datetime2(7) not null
)