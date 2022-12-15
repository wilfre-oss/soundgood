insert into lesson_types
VALUES
	('group'),
	('ensamble'),
	('individual');

insert into address (street, zip, city)
values
	('Porter', '59840', 'Launceston'),
	('Myrtle', '60332', 'Mayorga'),
	('Farragut', '48293', 'Huanshi'),
	('Bunker Hill', '93054', 'Nakhon Pathom'),
	('Spaight', '09447', 'Shidu'),
	('Basil', '48174', 'Çepan'),
	('Knutson', '65666', 'Bhawana'),
	('Packers', '21240', 'Xaysetha'),
	('Lunder', '14192', 'Volksrust'),
	('Lunder', '05155', 'Sifangxi'),
	('Welch', '76515', 'Olyka'),
	('Sommers', '72652', 'Alistráti'),
	('Mesta', '79734', 'Baranów'),
	('P.O. Box 995, 565 Phasellus Rd.','95568','Trollhättan'),
	('266-1848 Vitae Street','86048','Vetlanda'),
	('P.O. Box 339, 8284 Aliquet, Av.','35771','Norrköping');

insert into person (person_number, first_name, last_name, phone, email, address)
values
	('19861024-2631', 'Aladdin','Webster','in.magna.phasellus@icloud.edu','038-227-6381',1),
	('19510827-0520', 'Jarrod','White','enim.sed@yahoo.net','070-407-3397',2),
	('19780531-7398', 'Veronica','Townsend','sit@google.couk','087-099-9677',3),
	('19980816-5808', 'Steel','Chambers','pellentesque.tincidunt.tempus@aol.couk','032-006-3154',4),
	('19720416-6339', 'Aline','Craig','vulputate@yahoo.com','008-326-7152',5),
	('20000502-5978', 'Matthew','Schneider','tortor@hotmail.org','045-233-9967',6),
	('19771221-9455', 'Elvis','Mcdowell','lectus.pede.ultrices@aol.org','023-605-5371',7),
	('19770912-5863', 'Halee','Ashley','pharetra.nibh.aliquam@icloud.edu','070-677-4850',8),
	('19360815-8543', 'Yoshio','Dyer','ipsum.dolor@google.couk','075-448-5113',9),
	('19860321-0462', 'Allegra','Dalton','tincidunt.nunc@yahoo.edu','096-666-5704',10),
	('19281108-8927', 'Upton','Griffin','amet@yahoo.edu','058-293-0194',11),
	('19401204-7330', 'Christine','Rivera','ornare.lectus.ante@google.net','086-228-1267',12),
	('19670813-4249', 'Ian','Head','tempor.lorem@icloud.com','056-114-9777',13),
	('19811122-1571','Alec','Stevens','parturient@outlook.couk','093-837-6403',14),
	('19650712-9895','Orson','Bennett','luctus@protonmail.org','082-397-6168',15),
	('19770605-6665','Daniel','Guzman','duis.ac@icloud.ca','026-372-8513',16),
	('20080522-1892','Lee','Key','sollicitudin.commodo@icloud.edu','014-432-3381',14),
	('20060116-7794','Emmanuel','Stanton','sed@icloud.edu','068-221-0382',15),
	('20070729-5713','Ulric','Bender','netus.et@icloud.org','014-540-2612',16);
	
INSERT INTO student (person_id)
VALUES 
	(1),
	(2),
	(3),
	(4),
	(5),
	(6),
	(7),
	(8),
	(9),
	(10),
	(17),
	(18),
	(19);

insert into instructor (person_id, employee_id)
VALUES 
	(11,'14137'),
	(12,'58482'),
	(13,'31436');

insert into contact_person (person_id, student_id)
values
	(14, 11),
	(15, 12),
	(16, 13);
	
INSERT INTO price_scheme (lesson_type, beginner_price, intermediate_price, advanced_price)
VALUES
	('group', 100, 150, 200),
	('ensamble', 100, 150, 200),
	('individual', 200, 300, 400);
	
insert into instrument_types (instrument)
values 
	('piano'),
	('guitar'),
	('violin'),
	('drums'),
	('bass_guitar'),
	('saxophone'),
	('flute'),
	('clarinet'),
	('cello'),
	('trumpet'),
	('voice');

insert into siblings (student_id, sibling_id)
values 
	(1, 2),
	(1, 3),
	(2, 1),
	(3, 1),
	(2, 3),
	(3, 2),
	(5, 9),
	(9, 5);

insert into instrument (type, brand, model, rental_fee) 
values 
	('violin', 'Hauck-Nolan', 'Nitro', 140),
	('piano', 'Balistreri Group', 'S-Class', 289),
	('clarinet', 'Daugherty, Brown and Buckridge', 'MX-5', 127),
	('bass_guitar', 'Armstrong, Bradtke and Koelpin', 'Ram 1500', 277),
	('drums', 'Johnson-Kub', 'Pathfinder', 102),
	('guitar', 'Christiansen LLC', 'F250', 125),
	('trumpet', 'Lang Inc', 'Milan', 295),
	('flute', 'Champlin Inc', 'Acadia', 163),
	('cello', 'Kessler and Sons', 'TT', 155),
	('violin', 'Connelly Inc', 'LeBaron', 200),
	('guitar', 'Cronin-Schuster', 'C30', 243),
	('clarinet', 'Swift-Walker', 'Safari', 286),
	('guitar', 'Breitenberg-Feeney', '944', 134),
	('trumpet', 'Champlin, Gibson and Pouros', 'F150', 291),
	('clarinet', 'Pollich-Blick', 'Mustang', 273),
	('bass_guitar', 'Leuschke, Fisher and Wyman', 'Corolla', 256),
	('drums', 'Schulist and Sons', 'Sonoma Club Coupe', 235),
	('guitar', 'Shanahan, Johnston and King', 'Ram', 253),
	('violin', 'Price-O''Hara', 'Savana 2500', 278),
	('clarinet', 'Stanton Group', 'S80', 192);
	
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'bass_guitar', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'cello', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'saxophone', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'cello', 3);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'cello', 3);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'bass_guitar', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'piano', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'piano', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'violin', 3);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'guitar', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'cello', 3);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'flute', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'saxophone', 3);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'flute', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'saxophone', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'violin', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'guitar', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'violin', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'flute', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'cello', 3);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'voice', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'drums', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'saxophone', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'saxophone', 3);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'guitar', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'violin', 3);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'piano', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'voice', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'trumpet', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'piano', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'trumpet', 3);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'violin', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'trumpet', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'clarinet', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'cello', 3);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'clarinet', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'piano', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'drums', 3);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'clarinet', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'cello', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'drums', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'clarinet', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'saxophone', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('advanced', 'bass_guitar', 3);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'piano', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'cello', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'flute', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'bass_guitar', 1);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('intermediate', 'saxophone', 2);
insert into individual_lesson (skill_level, instrument_type, instructor_id) values ('beginner', 'violin', 2);

insert into time_slot (start_time, end_time) values ('2022-04-03 23:05:02', '2022-04-03 23:05:02');
insert into time_slot (start_time, end_time) values ('2022-12-22 05:52:39', '2022-12-22 05:52:39');
insert into time_slot (start_time, end_time) values ('2021-12-28 00:44:38', '2021-12-28 00:44:38');
insert into time_slot (start_time, end_time) values ('2022-09-13 08:18:36', '2022-09-13 08:18:36');
insert into time_slot (start_time, end_time) values ('2022-04-30 18:30:33', '2022-04-30 18:30:33');
insert into time_slot (start_time, end_time) values ('2022-05-06 18:39:02', '2022-05-06 18:39:02');
insert into time_slot (start_time, end_time) values ('2022-10-01 11:01:36', '2022-10-01 11:01:36');
insert into time_slot (start_time, end_time) values ('2022-07-29 06:32:58', '2022-07-29 06:32:58');
insert into time_slot (start_time, end_time) values ('2022-03-15 01:53:12', '2022-03-15 01:53:12');
insert into time_slot (start_time, end_time) values ('2022-06-24 22:52:48', '2022-06-24 22:52:48');
insert into time_slot (start_time, end_time) values ('2022-01-13 08:23:04', '2022-01-13 08:23:04');
insert into time_slot (start_time, end_time) values ('2022-07-27 09:34:50', '2022-07-27 09:34:50');
insert into time_slot (start_time, end_time) values ('2022-12-04 13:19:22', '2022-12-04 13:19:22');
insert into time_slot (start_time, end_time) values ('2022-02-07 21:46:40', '2022-02-07 21:46:40');
insert into time_slot (start_time, end_time) values ('2022-04-18 05:22:15', '2022-04-18 05:22:15');
insert into time_slot (start_time, end_time) values ('2021-12-23 05:02:02', '2021-12-23 05:02:02');
insert into time_slot (start_time, end_time) values ('2021-12-24 20:06:38', '2021-12-24 20:06:38');
insert into time_slot (start_time, end_time) values ('2022-07-01 13:22:11', '2022-07-01 13:22:11');
insert into time_slot (start_time, end_time) values ('2022-11-23 15:40:55', '2022-11-23 15:40:55');
insert into time_slot (start_time, end_time) values ('2022-02-11 22:34:06', '2022-02-11 22:34:06');
insert into time_slot (start_time, end_time) values ('2022-02-01 19:45:41', '2022-02-01 19:45:41');
insert into time_slot (start_time, end_time) values ('2022-10-05 13:21:52', '2022-10-05 13:21:52');
insert into time_slot (start_time, end_time) values ('2022-06-26 23:53:28', '2022-06-26 23:53:28');
insert into time_slot (start_time, end_time) values ('2022-12-11 22:50:45', '2022-12-11 22:50:45');
insert into time_slot (start_time, end_time) values ('2022-02-10 21:18:04', '2022-02-10 21:18:04');
insert into time_slot (start_time, end_time) values ('2022-12-08 16:30:32', '2022-12-08 16:30:32');
insert into time_slot (start_time, end_time) values ('2022-12-11 06:35:47', '2022-12-11 06:35:47');
insert into time_slot (start_time, end_time) values ('2022-08-24 20:39:23', '2022-08-24 20:39:23');
insert into time_slot (start_time, end_time) values ('2022-04-22 15:51:58', '2022-04-22 15:51:58');
insert into time_slot (start_time, end_time) values ('2022-10-29 22:52:33', '2022-10-29 22:52:33');
insert into time_slot (start_time, end_time) values ('2022-03-11 16:50:32', '2022-03-11 16:50:32');
insert into time_slot (start_time, end_time) values ('2022-04-11 12:07:27', '2022-04-11 12:07:27');
insert into time_slot (start_time, end_time) values ('2022-04-25 18:14:22', '2022-04-25 18:14:22');
insert into time_slot (start_time, end_time) values ('2022-02-12 08:42:59', '2022-02-12 08:42:59');
insert into time_slot (start_time, end_time) values ('2022-03-07 15:33:18', '2022-03-07 15:33:18');
insert into time_slot (start_time, end_time) values ('2022-02-13 18:12:49', '2022-02-13 18:12:49');
insert into time_slot (start_time, end_time) values ('2022-05-16 12:56:09', '2022-05-16 12:56:09');
insert into time_slot (start_time, end_time) values ('2022-07-07 14:34:35', '2022-07-07 14:34:35');
insert into time_slot (start_time, end_time) values ('2022-05-05 01:16:51', '2022-05-05 01:16:51');
insert into time_slot (start_time, end_time) values ('2022-08-18 23:17:41', '2022-08-18 23:17:41');
insert into time_slot (start_time, end_time) values ('2022-04-20 10:19:34', '2022-04-20 10:19:34');
insert into time_slot (start_time, end_time) values ('2022-11-14 05:31:53', '2022-11-14 05:31:53');
insert into time_slot (start_time, end_time) values ('2022-01-07 03:13:03', '2022-01-07 03:13:03');
insert into time_slot (start_time, end_time) values ('2022-07-11 07:17:01', '2022-07-11 07:17:01');
insert into time_slot (start_time, end_time) values ('2022-10-31 16:13:13', '2022-10-31 16:13:13');
insert into time_slot (start_time, end_time) values ('2022-05-12 07:35:21', '2022-05-12 07:35:21');
insert into time_slot (start_time, end_time) values ('2022-10-29 00:46:52', '2022-10-29 00:46:52');
insert into time_slot (start_time, end_time) values ('2021-12-24 00:24:18', '2021-12-24 00:24:18');
insert into time_slot (start_time, end_time) values ('2022-11-25 09:09:17', '2022-11-25 09:09:17');
insert into time_slot (start_time, end_time) values ('2022-10-21 01:50:26', '2022-10-21 01:50:26');

insert into booking (booking_number, student_id, lesson_id, time_id) values ('34-8308', 12, 7, 47);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('80-8740', 6, 12, 22);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('62-1650', 4, 18, 26);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('95-2455', 6, 26, 37);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('64-1433', 1, 48, 49);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('51-7328', 13, 40, 20);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('77-0049', 12, 47, 18);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('14-8452', 5, 26, 15);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('34-4729', 2, 29, 33);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('40-5888', 6, 10, 42);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('17-1851', 2, 48, 26);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('10-6828', 10, 28, 31);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('83-8098', 5, 10, 46);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('21-2857', 1, 49, 40);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('21-0873', 3, 23, 38);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('03-8327', 3, 24, 40);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('18-4306', 2, 42, 33);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('82-4579', 8, 37, 38);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('89-4358', 9, 34, 20);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('03-2335', 10, 40, 26);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('70-8453', 8, 5, 2);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('42-3118', 11, 43, 19);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('07-4347', 8, 2, 25);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('17-7437', 1, 12, 20);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('81-4465', 3, 49, 35);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('85-0425', 7, 2, 45);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('66-7682', 7, 18, 40);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('74-0673', 4, 32, 24);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('23-2294', 13, 7, 18);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('43-2492', 6, 46, 22);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('66-3401', 8, 20, 44);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('72-8896', 9, 43, 38);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('86-4178', 8, 40, 19);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('85-9859', 8, 34, 38);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('99-6601', 6, 36, 28);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('22-0923', 10, 44, 28);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('81-2219', 2, 5, 3);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('09-1518', 5, 27, 44);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('75-9702', 3, 28, 17);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('07-6308', 4, 15, 12);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('75-6823', 9, 47, 8);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('16-1317', 13, 13, 9);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('25-1198', 6, 30, 48);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('30-1318', 10, 26, 45);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('77-8795', 4, 36, 38);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('87-9212', 6, 36, 40);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('59-1544', 1, 47, 30);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('73-5036', 11, 35, 19);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('25-5995', 3, 49, 40);
insert into booking (booking_number, student_id, lesson_id, time_id) values ('10-9520', 5, 17, 11);

insert into time_slot (start_time, end_time) values ('2022-10-21 20:59:23', '2022-10-21 20:59:23');
insert into time_slot (start_time, end_time) values ('2022-04-26 18:49:47', '2022-04-26 18:49:47');
insert into time_slot (start_time, end_time) values ('2022-06-25 16:40:38', '2022-06-25 16:40:38');
insert into time_slot (start_time, end_time) values ('2022-08-09 15:35:04', '2022-08-09 15:35:04');
insert into time_slot (start_time, end_time) values ('2022-11-28 10:40:55', '2022-11-28 10:40:55');
insert into time_slot (start_time, end_time) values ('2022-05-14 05:26:47', '2022-05-14 05:26:47');
insert into time_slot (start_time, end_time) values ('2022-10-14 12:21:42', '2022-10-14 12:21:42');
insert into time_slot (start_time, end_time) values ('2022-08-23 05:00:20', '2022-08-23 05:00:20');
insert into time_slot (start_time, end_time) values ('2022-10-31 12:53:13', '2022-10-31 12:53:13');
insert into time_slot (start_time, end_time) values ('2022-03-31 18:14:32', '2022-03-31 18:14:32');
insert into time_slot (start_time, end_time) values ('2022-01-19 17:48:41', '2022-01-19 17:48:41');
insert into time_slot (start_time, end_time) values ('2022-07-22 16:19:07', '2022-07-22 16:19:07');
insert into time_slot (start_time, end_time) values ('2022-03-17 19:50:26', '2022-03-17 19:50:26');
insert into time_slot (start_time, end_time) values ('2022-11-13 16:19:00', '2022-11-13 16:19:00');
insert into time_slot (start_time, end_time) values ('2022-06-20 17:58:48', '2022-06-20 17:58:48');
insert into time_slot (start_time, end_time) values ('2022-10-01 20:11:19', '2022-10-01 20:11:19');
insert into time_slot (start_time, end_time) values ('2022-05-16 00:20:25', '2022-05-16 00:20:25');
insert into time_slot (start_time, end_time) values ('2021-12-26 22:24:35', '2021-12-26 22:24:35');
insert into time_slot (start_time, end_time) values ('2022-12-23 23:37:11', '2022-12-23 23:37:11');
insert into time_slot (start_time, end_time) values ('2022-05-09 02:45:56', '2022-05-09 02:45:56');
insert into time_slot (start_time, end_time) values ('2023-01-01 02:53:21', '2023-01-01 02:53:21');
insert into time_slot (start_time, end_time) values ('2022-09-04 23:33:13', '2022-09-04 23:33:13');
insert into time_slot (start_time, end_time) values ('2022-11-27 14:56:07', '2022-11-27 14:56:07');
insert into time_slot (start_time, end_time) values ('2022-04-05 19:23:50', '2022-04-05 19:23:50');
insert into time_slot (start_time, end_time) values ('2022-07-03 07:08:45', '2022-07-03 07:08:45');
insert into time_slot (start_time, end_time) values ('2022-02-04 10:35:10', '2022-02-04 10:35:10');
insert into time_slot (start_time, end_time) values ('2022-10-01 17:52:14', '2022-10-01 17:52:14');
insert into time_slot (start_time, end_time) values ('2022-09-10 03:36:47', '2022-09-10 03:36:47');
insert into time_slot (start_time, end_time) values ('2022-03-25 12:47:08', '2022-03-25 12:47:08');
insert into time_slot (start_time, end_time) values ('2022-01-22 00:02:37', '2022-01-22 00:02:37');
insert into time_slot (start_time, end_time) values ('2022-06-13 04:57:33', '2022-06-13 04:57:33');
insert into time_slot (start_time, end_time) values ('2022-07-06 04:06:58', '2022-07-06 04:06:58');
insert into time_slot (start_time, end_time) values ('2022-01-26 07:55:04', '2022-01-26 07:55:04');
insert into time_slot (start_time, end_time) values ('2022-11-21 14:32:43', '2022-11-21 14:32:43');
insert into time_slot (start_time, end_time) values ('2022-09-19 02:52:20', '2022-09-19 02:52:20');
insert into time_slot (start_time, end_time) values ('2022-10-02 02:44:23', '2022-10-02 02:44:23');
insert into time_slot (start_time, end_time) values ('2022-03-25 20:50:47', '2022-03-25 20:50:47');
insert into time_slot (start_time, end_time) values ('2022-03-11 20:45:04', '2022-03-11 20:45:04');
insert into time_slot (start_time, end_time) values ('2022-06-21 06:37:39', '2022-06-21 06:37:39');
insert into time_slot (start_time, end_time) values ('2022-04-11 02:39:45', '2022-04-11 02:39:45');
insert into time_slot (start_time, end_time) values ('2022-03-07 04:37:13', '2022-03-07 04:37:13');
insert into time_slot (start_time, end_time) values ('2022-05-26 17:52:06', '2022-05-26 17:52:06');
insert into time_slot (start_time, end_time) values ('2022-01-18 19:59:01', '2022-01-18 19:59:01');
insert into time_slot (start_time, end_time) values ('2022-03-29 01:10:49', '2022-03-29 01:10:49');
insert into time_slot (start_time, end_time) values ('2023-01-08 19:36:49', '2023-01-08 19:36:49');
insert into time_slot (start_time, end_time) values ('2022-07-17 01:25:12', '2022-07-17 01:25:12');
insert into time_slot (start_time, end_time) values ('2022-06-02 10:56:30', '2022-06-02 10:56:30');
insert into time_slot (start_time, end_time) values ('2022-04-30 20:01:58', '2022-04-30 20:01:58');
insert into time_slot (start_time, end_time) values ('2022-10-27 06:11:30', '2022-10-27 06:11:30');
insert into time_slot (start_time, end_time) values ('2021-12-29 14:58:35', '2021-12-29 14:58:35');
insert into time_slot (start_time, end_time) values ('2022-10-21 08:51:16', '2022-10-21 08:51:16');
insert into time_slot (start_time, end_time) values ('2022-07-07 11:55:57', '2022-07-07 11:55:57');
insert into time_slot (start_time, end_time) values ('2022-08-19 21:55:54', '2022-08-19 21:55:54');
insert into time_slot (start_time, end_time) values ('2022-12-21 03:34:53', '2022-12-21 03:34:53');
insert into time_slot (start_time, end_time) values ('2022-03-26 08:55:06', '2022-03-26 08:55:06');
insert into time_slot (start_time, end_time) values ('2022-11-07 11:43:43', '2022-11-07 11:43:43');
insert into time_slot (start_time, end_time) values ('2022-04-11 12:43:59', '2022-04-11 12:43:59');
insert into time_slot (start_time, end_time) values ('2022-10-10 03:54:09', '2022-10-10 03:54:09');
insert into time_slot (start_time, end_time) values ('2022-11-26 10:49:22', '2022-11-26 10:49:22');
insert into time_slot (start_time, end_time) values ('2022-09-26 04:21:34', '2022-09-26 04:21:34');
insert into time_slot (start_time, end_time) values ('2022-01-11 18:26:27', '2022-01-11 18:26:27');
insert into time_slot (start_time, end_time) values ('2022-06-12 07:33:49', '2022-06-12 07:33:49');
insert into time_slot (start_time, end_time) values ('2022-12-15 10:11:49', '2022-12-15 10:11:49');
insert into time_slot (start_time, end_time) values ('2022-01-16 10:58:46', '2022-01-16 10:58:46');
insert into time_slot (start_time, end_time) values ('2022-02-27 12:52:24', '2022-02-27 12:52:24');
insert into time_slot (start_time, end_time) values ('2022-10-14 04:43:40', '2022-10-14 04:43:40');
insert into time_slot (start_time, end_time) values ('2022-11-07 22:32:58', '2022-11-07 22:32:58');
insert into time_slot (start_time, end_time) values ('2022-01-01 21:46:12', '2022-01-01 21:46:12');
insert into time_slot (start_time, end_time) values ('2021-12-18 04:27:03', '2021-12-18 04:27:03');
insert into time_slot (start_time, end_time) values ('2022-03-17 13:56:11', '2022-03-17 13:56:11');
insert into time_slot (start_time, end_time) values ('2022-10-17 09:30:37', '2022-10-17 09:30:37');
insert into time_slot (start_time, end_time) values ('2022-05-03 04:59:23', '2022-05-03 04:59:23');
insert into time_slot (start_time, end_time) values ('2022-08-30 23:35:10', '2022-08-30 23:35:10');
insert into time_slot (start_time, end_time) values ('2022-07-01 02:42:54', '2022-07-01 02:42:54');
insert into time_slot (start_time, end_time) values ('2022-12-30 08:59:36', '2022-12-30 08:59:36');
insert into time_slot (start_time, end_time) values ('2022-05-20 18:05:25', '2022-05-20 18:05:25');
insert into time_slot (start_time, end_time) values ('2021-12-26 17:33:52', '2021-12-26 17:33:52');
insert into time_slot (start_time, end_time) values ('2022-04-21 20:21:42', '2022-04-21 20:21:42');
insert into time_slot (start_time, end_time) values ('2022-04-11 08:40:09', '2022-04-11 08:40:09');
insert into time_slot (start_time, end_time) values ('2023-01-10 07:41:31', '2023-01-10 07:41:31');
insert into time_slot (start_time, end_time) values ('2021-12-09 09:07:47', '2021-12-09 09:07:47');
insert into time_slot (start_time, end_time) values ('2022-11-15 10:13:14', '2022-11-15 10:13:14');
insert into time_slot (start_time, end_time) values ('2022-06-19 04:15:00', '2022-06-19 04:15:00');
insert into time_slot (start_time, end_time) values ('2022-11-26 01:46:57', '2022-11-26 01:46:57');
insert into time_slot (start_time, end_time) values ('2022-09-22 08:13:08', '2022-09-22 08:13:08');
insert into time_slot (start_time, end_time) values ('2022-06-30 07:11:09', '2022-06-30 07:11:09');
insert into time_slot (start_time, end_time) values ('2022-09-11 15:07:35', '2022-09-11 15:07:35');
insert into time_slot (start_time, end_time) values ('2022-11-21 08:01:20', '2022-11-21 08:01:20');
insert into time_slot (start_time, end_time) values ('2022-12-08 18:48:31', '2022-12-08 18:48:31');
insert into time_slot (start_time, end_time) values ('2021-12-17 22:41:44', '2021-12-17 22:41:44');
insert into time_slot (start_time, end_time) values ('2022-06-06 11:07:33', '2022-06-06 11:07:33');
insert into time_slot (start_time, end_time) values ('2022-12-21 12:18:00', '2022-12-21 12:18:00');
insert into time_slot (start_time, end_time) values ('2022-10-14 04:30:48', '2022-10-14 04:30:48');
insert into time_slot (start_time, end_time) values ('2022-03-12 03:06:41', '2022-03-12 03:06:41');
insert into time_slot (start_time, end_time) values ('2022-06-22 02:37:12', '2022-06-22 02:37:12');
insert into time_slot (start_time, end_time) values ('2022-11-22 09:14:46', '2022-11-22 09:14:46');
insert into time_slot (start_time, end_time) values ('2022-06-21 18:15:10', '2022-06-21 18:15:10');
insert into time_slot (start_time, end_time) values ('2023-01-04 09:55:59', '2023-01-04 09:55:59');
insert into time_slot (start_time, end_time) values ('2022-07-09 03:29:19', '2022-07-09 03:29:19');
insert into time_slot (start_time, end_time) values ('2022-02-02 07:21:46', '2022-02-02 07:21:46');
insert into time_slot (start_time, end_time) values ('2022-08-15 22:24:39', '2022-08-15 22:24:39');
insert into time_slot (start_time, end_time) values ('2021-12-18 15:04:24', '2021-12-18 15:04:24');
insert into time_slot (start_time, end_time) values ('2022-12-27 13:18:24', '2022-12-27 13:18:24');
insert into time_slot (start_time, end_time) values ('2022-05-09 08:35:03', '2022-05-09 08:35:03');
insert into time_slot (start_time, end_time) values ('2022-05-02 05:59:02', '2022-05-02 05:59:02');
insert into time_slot (start_time, end_time) values ('2022-09-11 06:55:27', '2022-09-11 06:55:27');
insert into time_slot (start_time, end_time) values ('2022-07-15 22:04:45', '2022-07-15 22:04:45');
insert into time_slot (start_time, end_time) values ('2022-02-01 06:45:19', '2022-02-01 06:45:19');
insert into time_slot (start_time, end_time) values ('2022-09-08 06:01:56', '2022-09-08 06:01:56');
insert into time_slot (start_time, end_time) values ('2022-10-11 08:54:38', '2022-10-11 08:54:38');
insert into time_slot (start_time, end_time) values ('2022-04-26 11:53:51', '2022-04-26 11:53:51');
insert into time_slot (start_time, end_time) values ('2022-03-28 20:19:59', '2022-03-28 20:19:59');
insert into time_slot (start_time, end_time) values ('2023-01-09 02:43:56', '2023-01-09 02:43:56');
insert into time_slot (start_time, end_time) values ('2021-12-29 19:26:32', '2021-12-29 19:26:32');
insert into time_slot (start_time, end_time) values ('2022-07-26 12:58:13', '2022-07-26 12:58:13');
insert into time_slot (start_time, end_time) values ('2022-08-27 04:35:07', '2022-08-27 04:35:07');
insert into time_slot (start_time, end_time) values ('2022-11-21 21:28:40', '2022-11-21 21:28:40');
insert into time_slot (start_time, end_time) values ('2022-09-20 02:10:55', '2022-09-20 02:10:55');
insert into time_slot (start_time, end_time) values ('2022-07-17 03:01:22', '2022-07-17 03:01:22');
insert into time_slot (start_time, end_time) values ('2022-04-11 21:10:06', '2022-04-11 21:10:06');
insert into time_slot (start_time, end_time) values ('2022-08-23 12:18:50', '2022-08-23 12:18:50');
insert into time_slot (start_time, end_time) values ('2021-12-13 08:19:16', '2021-12-13 08:19:16');
insert into time_slot (start_time, end_time) values ('2022-07-10 20:38:57', '2022-07-10 20:38:57');
insert into time_slot (start_time, end_time) values ('2022-02-23 18:04:52', '2022-02-23 18:04:52');
insert into time_slot (start_time, end_time) values ('2021-12-13 21:55:18', '2021-12-13 21:55:18');
insert into time_slot (start_time, end_time) values ('2022-12-27 08:14:44', '2022-12-27 08:14:44');
insert into time_slot (start_time, end_time) values ('2022-03-06 02:36:48', '2022-03-06 02:36:48');
insert into time_slot (start_time, end_time) values ('2022-05-26 07:07:37', '2022-05-26 07:07:37');
insert into time_slot (start_time, end_time) values ('2022-07-28 07:32:41', '2022-07-28 07:32:41');
insert into time_slot (start_time, end_time) values ('2022-09-08 00:43:02', '2022-09-08 00:43:02');
insert into time_slot (start_time, end_time) values ('2022-03-09 21:57:05', '2022-03-09 21:57:05');
insert into time_slot (start_time, end_time) values ('2022-07-31 22:49:04', '2022-07-31 22:49:04');
insert into time_slot (start_time, end_time) values ('2022-11-28 09:05:53', '2022-11-28 09:05:53');
insert into time_slot (start_time, end_time) values ('2022-03-27 08:58:32', '2022-03-27 08:58:32');
insert into time_slot (start_time, end_time) values ('2022-07-09 14:24:45', '2022-07-09 14:24:45');
insert into time_slot (start_time, end_time) values ('2022-01-14 02:52:44', '2022-01-14 02:52:44');
insert into time_slot (start_time, end_time) values ('2022-11-18 13:28:51', '2022-11-18 13:28:51');
insert into time_slot (start_time, end_time) values ('2022-01-28 02:25:53', '2022-01-28 02:25:53');
insert into time_slot (start_time, end_time) values ('2022-04-17 00:20:40', '2022-04-17 00:20:40');
insert into time_slot (start_time, end_time) values ('2022-05-09 06:46:45', '2022-05-09 06:46:45');
insert into time_slot (start_time, end_time) values ('2022-10-20 16:46:34', '2022-10-20 16:46:34');
insert into time_slot (start_time, end_time) values ('2022-03-18 07:51:49', '2022-03-18 07:51:49');
insert into time_slot (start_time, end_time) values ('2022-05-26 18:55:56', '2022-05-26 18:55:56');
insert into time_slot (start_time, end_time) values ('2022-07-18 15:29:25', '2022-07-18 15:29:25');
insert into time_slot (start_time, end_time) values ('2022-12-10 10:55:21', '2022-12-10 10:55:21');
insert into time_slot (start_time, end_time) values ('2022-09-06 12:09:58', '2022-09-06 12:09:58');
insert into time_slot (start_time, end_time) values ('2022-05-17 13:22:09', '2022-05-17 13:22:09');
insert into time_slot (start_time, end_time) values ('2022-01-01 09:05:40', '2022-01-01 09:05:40');
insert into time_slot (start_time, end_time) values ('2022-03-27 01:22:26', '2022-03-27 01:22:26');
insert into time_slot (start_time, end_time) values ('2022-08-23 15:41:20', '2022-08-23 15:41:20');
insert into time_slot (start_time, end_time) values ('2022-01-12 09:36:29', '2022-01-12 09:36:29');
insert into time_slot (start_time, end_time) values ('2022-11-27 09:08:21', '2022-11-27 09:08:21');
insert into time_slot (start_time, end_time) values ('2022-09-29 06:51:59', '2022-09-29 06:51:59');
insert into time_slot (start_time, end_time) values ('2021-12-20 22:22:59', '2021-12-20 22:22:59');
insert into time_slot (start_time, end_time) values ('2022-08-04 03:17:33', '2022-08-04 03:17:33');
insert into time_slot (start_time, end_time) values ('2022-06-23 23:23:55', '2022-06-23 23:23:55');
insert into time_slot (start_time, end_time) values ('2022-09-15 12:53:47', '2022-09-15 12:53:47');
insert into time_slot (start_time, end_time) values ('2022-11-12 10:10:05', '2022-11-12 10:10:05');
insert into time_slot (start_time, end_time) values ('2022-06-14 12:10:48', '2022-06-14 12:10:48');
insert into time_slot (start_time, end_time) values ('2021-12-30 15:54:05', '2021-12-30 15:54:05');
insert into time_slot (start_time, end_time) values ('2022-05-11 18:47:18', '2022-05-11 18:47:18');
insert into time_slot (start_time, end_time) values ('2022-03-06 15:38:15', '2022-03-06 15:38:15');
insert into time_slot (start_time, end_time) values ('2022-07-01 19:35:12', '2022-07-01 19:35:12');
insert into time_slot (start_time, end_time) values ('2022-03-28 14:23:01', '2022-03-28 14:23:01');
insert into time_slot (start_time, end_time) values ('2022-02-18 11:37:04', '2022-02-18 11:37:04');
insert into time_slot (start_time, end_time) values ('2022-09-16 22:46:54', '2022-09-16 22:46:54');
insert into time_slot (start_time, end_time) values ('2022-05-12 05:04:54', '2022-05-12 05:04:54');
insert into time_slot (start_time, end_time) values ('2022-08-16 15:38:48', '2022-08-16 15:38:48');
insert into time_slot (start_time, end_time) values ('2022-10-09 02:33:34', '2022-10-09 02:33:34');
insert into time_slot (start_time, end_time) values ('2022-05-20 14:14:25', '2022-05-20 14:14:25');
insert into time_slot (start_time, end_time) values ('2022-02-18 07:20:44', '2022-02-18 07:20:44');
insert into time_slot (start_time, end_time) values ('2021-12-15 20:03:27', '2021-12-15 20:03:27');
insert into time_slot (start_time, end_time) values ('2022-11-30 17:56:58', '2022-11-30 17:56:58');
insert into time_slot (start_time, end_time) values ('2022-08-19 17:17:38', '2022-08-19 17:17:38');
insert into time_slot (start_time, end_time) values ('2022-04-25 23:05:43', '2022-04-25 23:05:43');
insert into time_slot (start_time, end_time) values ('2022-04-08 23:36:12', '2022-04-08 23:36:12');
insert into time_slot (start_time, end_time) values ('2022-08-30 02:26:28', '2022-08-30 02:26:28');
insert into time_slot (start_time, end_time) values ('2022-01-03 17:03:40', '2022-01-03 17:03:40');
insert into time_slot (start_time, end_time) values ('2022-01-30 16:33:02', '2022-01-30 16:33:02');
insert into time_slot (start_time, end_time) values ('2022-07-27 04:56:07', '2022-07-27 04:56:07');
insert into time_slot (start_time, end_time) values ('2022-03-15 06:48:17', '2022-03-15 06:48:17');
insert into time_slot (start_time, end_time) values ('2021-12-28 05:10:03', '2021-12-28 05:10:03');
insert into time_slot (start_time, end_time) values ('2022-02-02 22:39:07', '2022-02-02 22:39:07');
insert into time_slot (start_time, end_time) values ('2022-06-11 15:02:56', '2022-06-11 15:02:56');
insert into time_slot (start_time, end_time) values ('2022-04-21 20:09:31', '2022-04-21 20:09:31');
insert into time_slot (start_time, end_time) values ('2022-02-28 01:06:50', '2022-02-28 01:06:50');
insert into time_slot (start_time, end_time) values ('2022-08-30 01:09:56', '2022-08-30 01:09:56');
insert into time_slot (start_time, end_time) values ('2022-08-23 01:46:26', '2022-08-23 01:46:26');
insert into time_slot (start_time, end_time) values ('2022-06-01 04:47:39', '2022-06-01 04:47:39');
insert into time_slot (start_time, end_time) values ('2022-11-22 20:56:54', '2022-11-22 20:56:54');
insert into time_slot (start_time, end_time) values ('2022-02-13 08:34:58', '2022-02-13 08:34:58');
insert into time_slot (start_time, end_time) values ('2022-01-04 06:16:26', '2022-01-04 06:16:26');
insert into time_slot (start_time, end_time) values ('2022-05-03 01:55:25', '2022-05-03 01:55:25');
insert into time_slot (start_time, end_time) values ('2022-07-04 05:43:20', '2022-07-04 05:43:20');
insert into time_slot (start_time, end_time) values ('2022-09-12 23:41:20', '2022-09-12 23:41:20');
insert into time_slot (start_time, end_time) values ('2022-10-01 11:31:30', '2022-10-01 11:31:30');
insert into time_slot (start_time, end_time) values ('2022-02-21 10:05:45', '2022-02-21 10:05:45');
insert into time_slot (start_time, end_time) values ('2022-10-16 07:05:34', '2022-10-16 07:05:34');
insert into time_slot (start_time, end_time) values ('2022-10-23 20:02:05', '2022-10-23 20:02:05');
insert into time_slot (start_time, end_time) values ('2022-12-02 01:32:23', '2022-12-02 01:32:23');
insert into time_slot (start_time, end_time) values ('2023-01-08 22:27:16', '2023-01-08 22:27:16');
insert into time_slot (start_time, end_time) values ('2022-07-28 10:21:42', '2022-07-28 10:21:42');
insert into time_slot (start_time, end_time) values ('2022-05-14 01:24:42', '2022-05-14 01:24:42');
insert into time_slot (start_time, end_time) values ('2022-08-08 15:34:12', '2022-08-08 15:34:12');
insert into time_slot (start_time, end_time) values ('2022-03-16 12:05:58', '2022-03-16 12:05:58');
insert into time_slot (start_time, end_time) values ('2022-01-31 12:15:13', '2022-01-31 12:15:13');
insert into time_slot (start_time, end_time) values ('2022-05-03 15:36:31', '2022-05-03 15:36:31');
insert into time_slot (start_time, end_time) values ('2021-12-13 00:43:09', '2021-12-13 00:43:09');
insert into time_slot (start_time, end_time) values ('2022-11-03 04:26:12', '2022-11-03 04:26:12');
insert into time_slot (start_time, end_time) values ('2022-07-14 08:49:07', '2022-07-14 08:49:07');
insert into time_slot (start_time, end_time) values ('2022-08-12 08:13:33', '2022-08-12 08:13:33');
insert into time_slot (start_time, end_time) values ('2022-10-28 06:10:47', '2022-10-28 06:10:47');
insert into time_slot (start_time, end_time) values ('2022-06-29 09:32:26', '2022-06-29 09:32:26');
insert into time_slot (start_time, end_time) values ('2021-12-24 21:53:29', '2021-12-24 21:53:29');
insert into time_slot (start_time, end_time) values ('2022-05-21 00:30:38', '2022-05-21 00:30:38');
insert into time_slot (start_time, end_time) values ('2022-09-28 12:10:19', '2022-09-28 12:10:19');
insert into time_slot (start_time, end_time) values ('2022-02-21 15:37:40', '2022-02-21 15:37:40');
insert into time_slot (start_time, end_time) values ('2022-12-11 22:05:24', '2022-12-11 22:05:24');
insert into time_slot (start_time, end_time) values ('2022-06-23 18:08:57', '2022-06-23 18:08:57');
insert into time_slot (start_time, end_time) values ('2022-06-10 15:15:06', '2022-06-10 15:15:06');
insert into time_slot (start_time, end_time) values ('2022-04-16 07:19:56', '2022-04-16 07:19:56');
insert into time_slot (start_time, end_time) values ('2022-10-13 14:18:55', '2022-10-13 14:18:55');
insert into time_slot (start_time, end_time) values ('2022-07-24 17:57:32', '2022-07-24 17:57:32');
insert into time_slot (start_time, end_time) values ('2022-07-22 18:07:02', '2022-07-22 18:07:02');
insert into time_slot (start_time, end_time) values ('2022-05-17 17:57:09', '2022-05-17 17:57:09');
insert into time_slot (start_time, end_time) values ('2022-06-24 01:31:43', '2022-06-24 01:31:43');
insert into time_slot (start_time, end_time) values ('2022-08-04 08:11:50', '2022-08-04 08:11:50');
insert into time_slot (start_time, end_time) values ('2022-06-26 08:08:49', '2022-06-26 08:08:49');
insert into time_slot (start_time, end_time) values ('2023-01-03 18:14:03', '2023-01-03 18:14:03');
insert into time_slot (start_time, end_time) values ('2022-07-09 07:28:18', '2022-07-09 07:28:18');
insert into time_slot (start_time, end_time) values ('2022-10-10 04:59:39', '2022-10-10 04:59:39');
insert into time_slot (start_time, end_time) values ('2022-09-18 12:57:15', '2022-09-18 12:57:15');
insert into time_slot (start_time, end_time) values ('2022-08-11 23:21:27', '2022-08-11 23:21:27');
insert into time_slot (start_time, end_time) values ('2022-12-30 10:06:47', '2022-12-30 10:06:47');
insert into time_slot (start_time, end_time) values ('2022-09-24 20:18:55', '2022-09-24 20:18:55');
insert into time_slot (start_time, end_time) values ('2022-03-15 23:31:32', '2022-03-15 23:31:32');
insert into time_slot (start_time, end_time) values ('2021-12-14 20:45:29', '2021-12-14 20:45:29');
insert into time_slot (start_time, end_time) values ('2022-06-19 14:02:23', '2022-06-19 14:02:23');
insert into time_slot (start_time, end_time) values ('2022-04-25 01:37:31', '2022-04-25 01:37:31');
insert into time_slot (start_time, end_time) values ('2022-04-21 09:13:11', '2022-04-21 09:13:11');
insert into time_slot (start_time, end_time) values ('2022-07-29 16:52:34', '2022-07-29 16:52:34');
insert into time_slot (start_time, end_time) values ('2022-09-18 01:52:35', '2022-09-18 01:52:35');
insert into time_slot (start_time, end_time) values ('2022-01-01 18:03:09', '2022-01-01 18:03:09');
insert into time_slot (start_time, end_time) values ('2022-01-13 23:34:27', '2022-01-13 23:34:27');
insert into time_slot (start_time, end_time) values ('2022-04-10 21:18:38', '2022-04-10 21:18:38');
insert into time_slot (start_time, end_time) values ('2021-12-16 22:15:52', '2021-12-16 22:15:52');
insert into time_slot (start_time, end_time) values ('2022-04-24 05:38:42', '2022-04-24 05:38:42');
insert into time_slot (start_time, end_time) values ('2022-12-04 22:58:41', '2022-12-04 22:58:41');
insert into time_slot (start_time, end_time) values ('2023-01-08 14:04:40', '2023-01-08 14:04:40');
insert into time_slot (start_time, end_time) values ('2022-11-17 18:13:59', '2022-11-17 18:13:59');

insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 16, 21, 119, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 12, 26, 250, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 15, 24, 155, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 16, 27, 197, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 12, 24, 260, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 19, 20, 194, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 16, 21, 155, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 10, 24, 231, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 10, 22, 112, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 17, 30, 115, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 19, 30, 191, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 15, 24, 278, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 18, 22, 110, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 11, 29, 135, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 16, 20, 74, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 14, 21, 145, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 18, 28, 132, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 19, 20, 102, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 14, 24, 64, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 12, 22, 101, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 11, 25, 63, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 15, 27, 274, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 10, 30, 295, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 10, 20, 180, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 14, 28, 266, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 11, 27, 183, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 20, 27, 213, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 16, 27, 208, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 19, 24, 154, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 20, 26, 295, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 15, 29, 223, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 11, 30, 235, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 19, 29, 73, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 14, 29, 215, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 12, 20, 258, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 20, 23, 87, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 12, 27, 214, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 16, 20, 223, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 16, 25, 87, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 16, 21, 201, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 13, 21, 127, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 18, 28, 172, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 14, 25, 185, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 15, 24, 220, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 17, 27, 237, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 16, 22, 82, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 10, 30, 130, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 19, 21, 164, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 11, 26, 271, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 11, 30, 195, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 17, 24, 258, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 19, 23, 205, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 15, 28, 106, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 13, 29, 230, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 12, 24, 182, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 18, 24, 90, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 13, 28, 134, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 17, 28, 79, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 15, 30, 222, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 20, 22, 250, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 13, 24, 118, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 12, 22, 167, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 19, 23, 150, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 14, 29, 88, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 18, 20, 123, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 15, 20, 91, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 19, 26, 54, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 13, 29, 147, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 12, 21, 222, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 11, 23, 67, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 16, 28, 183, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 11, 30, 222, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 12, 26, 221, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 19, 29, 173, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 17, 30, 127, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 17, 25, 124, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 14, 29, 72, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 13, 23, 64, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 19, 20, 59, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 13, 23, 291, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 15, 24, 253, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 18, 26, 203, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 17, 27, 130, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 14, 27, 123, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 11, 26, 58, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 11, 21, 112, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 10, 26, 82, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 17, 20, 220, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 10, 21, 298, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 10, 23, 125, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 13, 25, 86, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 13, 20, 132, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 16, 21, 232, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 15, 21, 223, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 10, 26, 85, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 14, 26, 133, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 13, 28, 263, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 16, 21, 52, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 12, 29, 56, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 10, 29, 113, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 15, 20, 171, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 19, 22, 273, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 19, 29, 232, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 17, 20, 180, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 15, 25, 261, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 10, 22, 281, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 19, 28, 253, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 11, 25, 101, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 20, 25, 234, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 16, 30, 56, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 14, 25, 74, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 20, 21, 175, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 11, 22, 232, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 20, 25, 191, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 14, 26, 145, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 17, 29, 276, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 20, 23, 150, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 15, 30, 65, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 19, 20, 116, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 16, 30, 222, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 12, 27, 190, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 15, 27, 203, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 11, 28, 260, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 18, 25, 132, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 12, 28, 199, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 20, 23, 53, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 11, 25, 80, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 15, 28, 232, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 20, 21, 117, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 10, 30, 162, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 14, 27, 142, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 20, 30, 99, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 16, 25, 240, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 13, 25, 201, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 18, 25, 112, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 14, 22, 285, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 10, 29, 254, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 19, 22, 220, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 20, 25, 250, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 20, 23, 212, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 11, 30, 281, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 15, 25, 224, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 18, 22, 129, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 16, 20, 242, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 20, 20, 167, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 11, 29, 173, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 10, 28, 172, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 19, 24, 267, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 16, 24, 107, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 12, 28, 176, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 13, 23, 236, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 10, 26, 198, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 18, 30, 126, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 13, 21, 219, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 14, 24, 225, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 19, 21, 129, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 13, 20, 160, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 15, 30, 231, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 20, 30, 144, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 11, 25, 162, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 20, 29, 118, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 14, 20, 115, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 16, 22, 180, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 12, 20, 277, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 18, 22, 67, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 10, 25, 209, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 19, 27, 193, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 12, 24, 51, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 20, 30, 118, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 12, 30, 160, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 19, 22, 237, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 18, 29, 187, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 16, 23, 117, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 13, 28, 186, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 12, 29, 221, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 16, 24, 133, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 12, 22, 220, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 18, 26, 277, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 10, 22, 74, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 18, 22, 224, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 13, 30, 209, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 19, 27, 225, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 12, 27, 122, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 10, 27, 258, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 11, 30, 153, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 13, 25, 280, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 16, 21, 259, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 11, 21, 169, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 11, 22, 212, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 11, 30, 94, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 15, 20, 99, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 15, 22, 255, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 18, 20, 91, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 12, 27, 63, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 10, 27, 166, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 16, 26, 167, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 17, 22, 139, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 20, 28, 151, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 13, 27, 126, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 19, 25, 60, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 17, 21, 246, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 14, 26, 291, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 18, 24, 288, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 18, 24, 183, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 17, 28, 94, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 17, 21, 202, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 19, 28, 66, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 11, 30, 160, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 17, 26, 93, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 10, 24, 172, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 17, 30, 239, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 13, 29, 296, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 17, 29, 129, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 15, 25, 58, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 18, 29, 69, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 14, 25, 71, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 17, 30, 247, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 16, 27, 291, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 14, 26, 179, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 11, 20, 98, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 11, 28, 119, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 10, 28, 254, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 18, 25, 174, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 17, 20, 72, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 19, 24, 242, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 19, 24, 248, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 18, 26, 176, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 10, 29, 120, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 17, 21, 152, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 19, 24, 220, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 14, 26, 168, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 17, 24, 185, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 19, 26, 300, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 15, 30, 63, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 12, 20, 221, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 14, 27, 131, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 12, 23, 208, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 18, 21, 233, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 14, 23, 172, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 14, 26, 200, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'ensamble', 10, 21, 79, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 18, 27, 188, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('beginner', 'group', 18, 29, 54, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'group', 14, 27, 84, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'group', 12, 28, 104, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 12, 20, 299, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 16, 20, 250, 3);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 16, 25, 150, 2);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('intermediate', 'ensamble', 10, 20, 119, 1);
insert into lesson (skill_level, lesson_type, min_students, max_students, time_id, instructor_id) values ('advanced', 'ensamble', 10, 22, 300, 1);
