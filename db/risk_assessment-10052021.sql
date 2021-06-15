﻿/* Create database */
create database risk_assessment2;
use risk_assessment2;

---
/* Create table*/
create table users(
	id int not null identity(1, 1) primary key,
	email nvarchar(50) unique not null,
	username varchar(50) unique not null,
	password varchar(30) not null,
	name nvarchar(50) not null,
	phone char(12),
	organization nvarchar(100),
	position nvarchar(100),
	created_time datetime default current_timestamp,
	modified_time datetime default current_timestamp
);

create table systems(
	id int not null identity(1, 1) primary key,
	name nvarchar(200) unique not null,
	desciption ntext not null,
	created_time datetime default current_timestamp,
	modified_time datetime default current_timestamp
);

create table system_image(
	id int not null identity(1, 1) primary key,
	system_id int not null,
	image_link text not null,
	foreign key (system_id) references systems(id) on delete cascade
);

create table user_system(
	id int not null identity(1, 1) primary key,
	user_id int not null,
	system_id int not null,
	foreign key (system_id) references systems(id) on delete cascade,
	foreign key (user_id) references users(id) on delete cascade
);

create table assets(
	id int not null identity(1, 1) primary key,
	name nvarchar(100) unique not null,
	desciption ntext not null,
	system_id int not null,
	created_time datetime default current_timestamp,
	modified_time datetime default current_timestamp,
	foreign key (system_id) references systems(id) on delete cascade
);

create table asset_image(
	id int not null identity(1, 1) primary key,
	asset_id int not null,
	image_link text not null,
	foreign key (asset_id) references assets(id) on delete cascade
);


create table likelihood_levels(
	id int not null identity(1, 1) primary key,
	[level] nvarchar(50) not null,
	score int not null,
	color char(7) not null
);


create table impact_levels(
	id int not null identity(1, 1) primary key,
	[level] nvarchar(50) not null,
	score int not null,
	color char(7) not null
);

create table risk_levels(
	id int not null identity(1, 1) primary key,
	[level] nvarchar(50) not null,
	range_min int not null,
	range_max int not null,
	color char(7) not null
);


create table risks(
	id int not null identity(1, 1) primary key,
	short_description nvarchar(100) not null,
	flaw ntext not null,
	threat nvarchar(200) not null,
	threat_type int not null,
	solution ntext,
	likelihood_level_id int,
	impact_level_id int,
	risk_level_id int,
	created_time datetime default current_timestamp,
	modified_time datetime default current_timestamp,
	foreign key (likelihood_level_id) references likelihood_levels(id),
	foreign key (impact_level_id) references impact_levels(id),
	foreign key (risk_level_id) references risk_levels(id)
);

create table risk_asset(
	id int not null identity(1, 1) primary key,
	risk_id int not null,
	asset_id int not null,
	foreign key (risk_id) references risks(id) on delete cascade,
	foreign key (asset_id) references assets(id) on delete cascade,
)

create table troubles(
	id int not null identity(1, 1) primary key,
	short_description nvarchar(200) not null,
	detail ntext not null,
	status int not null,
	time_happen datetime default current_timestamp,
	created_time datetime default current_timestamp,
	modified_time datetime default current_timestamp
);

create table trouble_risk(
	id int not null identity(1, 1) primary key,
	trouble_id int not null,
	risk_id int not null,
	foreign key (trouble_id) references troubles(id) on delete cascade,
	foreign key (risk_id) references risks(id) on delete cascade
);

create table trouble_asset(
	id int not null identity(1, 1) primary key,
	trouble_id int not null,
	asset_id int not null,
	foreign key (trouble_id) references troubles(id) on delete cascade,
	foreign key (asset_id) references assets(id) on delete cascade
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
if exists(select name from sysobjects where name='system_updateModifiedTime' and type='TR')
drop trigger system_updateModifiedTime 
go
create trigger system_updateModifiedTime
on systems for update as
update systems set modified_time = CURRENT_TIMESTAMP where id in (select distinct id FROM inserted);

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
if exists(select name from sysobjects where name='risk_updateModifiedTime' and type='TR')
drop trigger observation_updateModifiedTime 
go
create trigger observation_updateModifiedTime
on risks for update as
update risks set modified_time = CURRENT_TIMESTAMP where id in (select distinct id FROM inserted);


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

insert into impact_levels(level, score, color) values
(N'Cao', 100, '#000000'),
(N'Trung bình', 50, '#000000'),
(N'Thấp', 10, '#000000'),
(N'Không đáng kể', 0, '#000000');

insert into likelihood_levels(level, score, color) values
(N'Cao', 100, '#000000'),
(N'Trung bình', 50, '#000000'),
(N'Thấp', 10, '#000000'),
(N'Không đáng kể', 0, '#000000');

insert into risk_levels(level, range_min, range_max, color) values
(N'Cao', 51, 100, '#000000'),
(N'Trung bình', 11, 50, '#000000'),
(N'Thấp', 1, 10, '#000000'),
(N'Không đáng kể', 0, 0, '#000000');

/* Update */
update users set position = N'Quản lý cấp cao' where username = 'hieupham';

/* Select */
truncate table users;
select * from users;






