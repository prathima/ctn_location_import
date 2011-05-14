create table ctn_location
	(id int not null AUTO_INCREMENT,
	name varchar(100),
	address1 varchar(250),
	address2 varchar(250),
	city varchar(100),
	state varchar(100),
	zip varchar(100),
	phone varchar(100),
	email varchar(100) ,
	website varchar(100),
	about_org LONGTEXT,
	about_program_offered LONGTEXT,
	access_rights varchar(100),
	drop_infees varchar(100),
	class_workshop_fee varchar(100),
	number_of_computers integer,
	PRIMARY KEY (id));

create table ctn_languages
	(id int not null AUTO_INCREMENT,
	name varchar(100) not null,
	PRIMARY KEY (id));

create table ctn_location_languages
	(id int not null AUTO_INCREMENT,
	location_id int not null,
	languages_id int not null,
	PRIMARY KEY (id),
	FOREIGN KEY (location_id) REFERENCES ctn_location(id),
	FOREIGN KEY (languages_id) REFERENCES ctn_languages(id),
	CONSTRAINT location_languages_uk UNIQUE (location_id,languages_id));

CREATE TABLE  ctn_corg_type (
  id int(11) NOT NULL auto_increment,
  name varchar(100) NOT NULL,
  PRIMARY KEY  (id)
);
	
create table ctn_tug
	(id int  not null AUTO_INCREMENT,
	name varchar(100) not null,
	PRIMARY KEY (id));
	
create table ctn_location_tug
	(id int not null AUTO_INCREMENT,
	location_id int not null,
	tug_id int not null,
	PRIMARY KEY (id),
	FOREIGN KEY (location_id) REFERENCES ctn_location(id),
	FOREIGN KEY (tug_id) REFERENCES ctn_tug(id),
	CONSTRAINT location_tug_uk UNIQUE (location_id,tug_id));
	
create table ctn_tos
	(id int NOT NULL AUTO_INCREMENT,
	name varchar(100) not null,
	PRIMARY KEY (id));

	
create table ctn_location_tos
	(id int NOT NULL AUTO_INCREMENT,
	location_id int not null,
	tos_id int not null,
	PRIMARY KEY (id),
	FOREIGN KEY (location_id) REFERENCES ctn_location(id),
	FOREIGN KEY (tos_id) REFERENCES ctn_tos(id),
	CONSTRAINT location_tos_uk UNIQUE (location_id,tos_id));


create table ctn_other_hardware
	(id int NOT NULL AUTO_INCREMENT,
	name varchar(100) not null,
	PRIMARY KEY (id));

	
create table ctn_location_oh
	(id int NOT NULL AUTO_INCREMENT,
	location_id int not null,
	oh_id int not null,
	PRIMARY KEY (id),
	FOREIGN KEY (location_id) REFERENCES ctn_location(id),
	FOREIGN KEY (oh_id) REFERENCES ctn_other_hardware(id),
	CONSTRAINT location_oh_uk UNIQUE (location_id,oh_id));
	
create table ctn_operating_systems
	(id int not null AUTO_INCREMENT,
	name varchar(100) not null,
	PRIMARY KEY (id));
	
create table ctn_location_os
	(id int not null AUTO_INCREMENT,
	location_id int not null,
	os_id int not null,
	PRIMARY KEY (id),
	FOREIGN KEY (location_id) REFERENCES ctn_location(id),
	FOREIGN KEY (os_id) REFERENCES ctn_operating_systems(id),
	CONSTRAINT location_os_uk UNIQUE (location_id,os_id));
	
create table ctn_location_info
	(id int not null AUTO_INCREMENT,
	wheelchair_accessible boolean,
	shareable_rent boolean,
	logo varchar(450),
	picture varchar(450),
	info_date date,
	researcher varchar(100),
	complete_record LONGTEXT,
	notes LONGTEXT,
	location_id int not null,
	PRIMARY KEY (id),
	FOREIGN KEY (location_id) REFERENCES ctn_location(id));
	

select la.name, lo.name
  from location lo
  join location_languages ll on ll.location_id = lo.id
  join languages la on la.id = ll.languages_id


	


	



	
	
	
	
