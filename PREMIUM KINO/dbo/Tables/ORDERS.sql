create table ORDERS (
	ID uniqueidentifier constraint PK_dbo_ORDERS primary key,
	ID_USER uniqueidentifier constraint FK_dbo_ORDERS_dbo_USERS foreign key references USERS(ID) not null,
	ID_SCHEDULE uniqueidentifier constraint FK_dbo_ORDERS_dbo_SCHEDULE foreign key references SCHEDULE(ID) not null,
	NUMBER_OF_SEATS int not null,
	ORDER_STATUS varchar(32) not null
)