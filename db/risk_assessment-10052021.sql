/* Create database */
create database risk_assessment;
use risk_assessment;

---
/* Create table*/
create table users(
	id int not null identity(1, 1) primary key,
	email nvarchar(50) unique not null,
	username varchar(50) unique not null,
	[password] varchar(30) not null,
	[name] nvarchar(50) not null,
	position nvarchar(100),
	created_time datetime default current_timestamp,
	modified_time datetime default current_timestamp
);

create table it_systems(
	id int not null identity(1, 1) primary key,
	[name] nvarchar(200) unique not null,
	desciption ntext not null,
	[user_id] int not null,
	created_time datetime default current_timestamp,
	modified_time datetime default current_timestamp,
	constraint FK_UserSystem foreign key ([user_id]) references users(id) on delete cascade
);

create table assets(
	id int not null identity(1, 1) primary key,
	[name] nvarchar(100) unique not null,
	desciption ntext not null,
	[system_id] int not null,
	created_time datetime default current_timestamp,
	modified_time datetime default current_timestamp,
	constraint FK_SystemAsset foreign key ([system_id]) references it_systems(id) on delete cascade
);


create table threats(
	id int not null identity(1, 1) primary key,
	[name] nvarchar(100) not null,
	[type] nvarchar(20),
	motivation nvarchar(100),
	[action] nvarchar(200)
);

create table vulnerabilities(
	id int not null identity(1, 1) primary key,
	[name] nvarchar(100) not null,
	detail ntext
);


create table likelihood_levels(
	id int not null identity(1, 1) primary key,
	[level] nvarchar(50) not null,
	score decimal(2, 1) not null
);


create table impact_levels(
	id int not null identity(1, 1) primary key,
	[level] nvarchar(50) not null,
	score int not null
);

create table risk_levels(
	id int not null identity(1, 1) primary key,
	[level] nvarchar(50) not null,
	range_min int not null,
	range_max int not null
);


create table observations(
	id int not null identity(1, 1) primary key,
	threat_id int not null,
	vulnerability_id int not null,
	likelihood_level_id int,
	impact_level_id int,
	risk_level_id int,
	created_time datetime default current_timestamp,
	modified_time datetime default current_timestamp,
	foreign key (threat_id) references threats(id) on delete cascade,
	foreign key (vulnerability_id) references vulnerabilities(id) on delete cascade,
	foreign key (likelihood_level_id) references likelihood_levels(id),
	foreign key (impact_level_id) references impact_levels(id),
	foreign key (risk_level_id) references risk_levels(id)
);

create table troubles(
	id int not null identity(1, 1) primary key,
	short_description nvarchar(100) not null,
	detail ntext,
	created_time datetime default current_timestamp,
	modified_time datetime default current_timestamp
);

-- Trigger
/* user_updateModifiedTime */
go
if exists(select name from sysobjects where name='user_updateModifiedTime' and type='TR')
drop trigger user_updateModifiedTime 
go
create trigger user_updateModifiedTime
on users for update as
update users set modified_time = CURRENT_TIMESTAMP where id in (select distinct id FROM inserted);

/* it_system_updateModifiedTime */
go
if exists(select name from sysobjects where name='it_system_updateModifiedTime' and type='TR')
drop trigger it_system_updateModifiedTime 
go
create trigger it_system_updateModifiedTime
on it_systems for update as
update it_systems set modified_time = CURRENT_TIMESTAMP where id in (select distinct id FROM inserted);

/* asset_updateModifiedTime */
go
if exists(select name from sysobjects where name='asset_updateModifiedTime' and type='TR')
drop trigger asset_updateModifiedTime 
go
create trigger asset_updateModifiedTime
on assets for update as
update assets set modified_time = CURRENT_TIMESTAMP where id in (select distinct id FROM inserted);

/* observation_updateModifiedTime */
go
if exists(select name from sysobjects where name='observation_updateModifiedTime' and type='TR')
drop trigger observation_updateModifiedTime 
go
create trigger observation_updateModifiedTime
on observations for update as
update observations set modified_time = CURRENT_TIMESTAMP where id in (select distinct id FROM inserted);


/* trouble_updateModifiedTime */
go
if exists(select name from sysobjects where name='trouble_updateModifiedTime' and type='TR')
drop trigger trouble_updateModifiedTime 
go
create trigger trouble_updateModifiedTime
on troubles for update as
update troubles set modified_time = CURRENT_TIMESTAMP where id in (select distinct id FROM inserted);


/* Insert */
insert into users(email, username, password, name) values ('hieu.pt183535@gmail.com', 'hieupham', 12345678, N'Phạm Trung Hiếu');

insert into impact_levels(level, score) values
('High', 100),
('Medium', 50),
('Low', 10);

insert into likelihood_levels(level, score) values
('High', 1.0),
('Medium', 0.5),
('Low', 0.1);

insert into risk_levels(level, range_min, range_max) values
('High', 51, 100),
('Medium', 11, 50),
('Low', 1, 10);

/* Update */
update users set position = N'Quản lý cấp cao' where username = 'hieupham';

/* Select */
truncate table users;
select * from users;






