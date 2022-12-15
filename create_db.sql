create table skill_levels (
	skill varchar(50) PRIMARY KEY
);

insert into skill_levels(skill)
	values 
	('beginner'),
	('intermediate'),
	('advanced');

create table instrument_types (
	instrument varchar(50) PRIMARY KEY
);

create table address(
	id int generated always as identity PRIMARY KEY,
	street varchar(50),
	zip varchar(50),
	city varchar(50)
);

create table person (
	id int generated always as identity PRIMARY KEY,
	person_number VARCHAR(50) UNIQUE not NULL,
	first_name varchar(50),
	last_name varchar(50),
	phone VARCHAR(50),
	email VARCHAR(50),
	address int references address
);

create table student(
	id int generated always as identity PRIMARY KEY,
	person_id int references person on delete cascade
);

create table instructor (
	id int generated always as identity PRIMARY KEY,
	employee_id varchar unique,
	person_id int references person not null
);

create table contact_person(
	person_id int references person on delete cascade,
	student_id int references student on delete cascade
);
alter table contact_person 
add constraint PK_contact_person
primary key (person_id, student_id);

create table siblings(
	student_id int references student on delete cascade,
	sibling_id int references student on delete cascade
);
alter table siblings
add constraint PK_siblings
primary key (student_id, sibling_id);

create table instrument_skill (
	student_id int references student on delete CASCADE,
	instrument_type varchar references instrument_types,
	skill_level varchar references skill_levels not null
);
alter table instrument_skill
add constraint PK_instrument_skill
primary key (student_id, instrument_type);

create table lesson_types(
	type varchar primary key
);

create table price_scheme (
	lesson_type varchar references lesson_types on delete cascade,
	beginner_price decimal (10, 2),
	intermediate_price decimal (10, 2),
	advanced_price decimal (10, 2)
);
alter table price_scheme
add constraint PK_price_scheme primary key (lesson_type);

create table instrument (
	id int generated always as identity primary key,
	type varchar references instrument_types,
	brand varchar,
	model varchar,
	rental_fee decimal(10,2)
);

create table rental (
	id int generated always as identity primary key,
	student_id int references student on delete cascade,
	instrument_id int references instrument on delete cascade,
	start_time timestamp,
	end_time timestamp
);

create table individual_lesson (
	id int generated always as identity primary key,
	skill_level varchar references skill_levels,
	instrument_type varchar references instrument_types,
	instructor_id int references instructor
);

create table time_slot (
	id int generated always as identity primary key,
	start_time timestamp,
	end_time timestamp
);

create table booking (
	id int generated always as identity primary key,
	booking_number varchar,
	student_id int references student,
	lesson_id int references individual_lesson,
	time_id int references time_slot
);

create table lesson(
	id int generated always as identity primary key,
	lesson_type varchar references lesson_types,
	min_students int,
	max_students int,
	skill_level varchar,
	time_id int references time_slot,
	instructor_id int references instructor
);


