create table toidupyramiid.gender(
	id int primary key,
	genName varchar(50) not null
);

create table toidupyramiid.activitylevel(
	id int primary key,
	actValue float not null,
	actName varchar(50) not null,
	actDesc varchar(1000)
);

create table toidupyramiid.userRoleDesc(
	id int primary key,
	name varchar(50) not null,
	roleDescription varchar(1000)
);

create table toidupyramiid.users(
	id int primary key identity,
	email varchar(50) not null,
	userPassword varchar(100) not null,
	fullName varchar(50) not null,
	birthDate date,
	gender int,
	height int,
	weight int,
	activityLevel int,
	insertDate as getdate(),
	changeDate date,
	CONSTRAINT FK_genderID 
		FOREIGN KEY (gender)
		REFERENCES toidupyramiid.gender (id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT fk_activityID
		FOREIGN KEY (activityLevel)
		REFERENCES toidupyramiid.activityLevel (id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);
/*
create table toidupyramiid.userRelationships(
	customerUserID int not null,
	consultantUserID int not null,
	PRIMARY KEY (customerUserID, consultantUserID),
	CONSTRAINT FK_consultantUserID
		FOREIGN KEY (consultantUserID)
		REFERENCES toidupyramiid.users(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT FK_customerUserID
		FOREIGN KEY (customerUserID)
		REFERENCES toidupyramiid.users(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
);

create table toidupyramiid.userRoles(
	id int primary key identity,
	userID int not null,
	roleID int not null,
	CONSTRAINT fk_role_userID
		FOREIGN KEY (userID)
		REFERENCES toidupyramiid.users(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT fk_role_roleID
		FOREIGN KEY (roleID)
		REFERENCES toidupyramiid.userRoleDesc(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);
*/
create table toidupyramiid.prodGroups(
	id int primary key,
	name varchar(50) not null,
	unitCal int not null
);

create table toidupyramiid.prodTypes(
	id int primary key,
	name varchar(100) not null,
	prodGroup int not null,
	CONSTRAINT fk_prod_GR
		FOREIGN KEY (prodGroup)
		REFERENCES toidupyramiid.prodGroups(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);

create table toidupyramiid.products(
	id int primary key identity,
	name varchar(100) not null,
	unitVal float not null,
	unitType varchar(50) not null,
	prodType int not null,
	picLink varchar(200),
	comment varchar(1000),
	CONSTRAINT fk_prod_Ty
		FOREIGN KEY (prodType)
		REFERENCES toidupyramiid.prodTypes(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);

create table toidupyramiid.events(
	id int primary key identity,
	userID int not null,
	productID int not null,
	amount float not null,
	eventDay int not null,
	insertDate datetime,
	CONSTRAINT fk_prod_id
		FOREIGN KEY (productID)
		REFERENCES toidupyramiid.products(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	CONSTRAINT fk_user_id
		FOREIGN KEY (userID)
		REFERENCES toidupyramiid.users(id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
);


create table toidupyramiid.standardPyramiid(
	minCal float not null,
	maxCal float not null,
	g1min float not null,
	g1max float not null,
	g2min float not null,
	g2max float not null,
	g3min float not null,
	g3max float not null,
	g4min float not null,
	g4max float not null,
	g5min float not null,
	g5max float not null,
	g6min float not null,
	g6max float not null
);