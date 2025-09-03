create table MOVIE (
	ID uniqueidentifier constraint PK_dbo_MOVIE primary key,
	TITLE nvarchar(128) not null,
	DIRECTOR nvarchar(128) not null,
	GENRE nvarchar(64) not null,
	DURATION int not null,
	RATING real not null,
	PHOTO varbinary(max) not null
)