
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" text NOT NULL);
INSERT INTO "schema_migrations" VALUES('20160501233929');
CREATE TABLE "users" ("id" SERIAL PRIMARY KEY NOT NULL, "email" text DEFAULT '' NOT NULL, "encrypted_password" text DEFAULT '' NOT NULL, "reset_password_token" text, "reset_password_sent_at" timestamp, "remember_created_at" timestamp, "sign_in_count" INTEGER DEFAULT 0 NOT NULL, "current_sign_in_at" timestamp, "last_sign_in_at" timestamp, "current_sign_in_ip" text, "last_sign_in_ip" text, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "dob" date, "fname" text, "lname" text, "gender" text, "body_weight" decimal, "admin" boolean DEFAULT 'f', "measure" text, "level" text);
INSERT INTO "users" VALUES(1,'jess@jessrudolph.com','$2a$10$XK/H2ezneYuqgQkdolmWN.7Y4Or2f/iM1VFebrB/oD6cHroSwCZPG','5d82c4e408f18a6beb6732f93fe68c68febc4760c64220d68e2bc887780ecc31','2016-05-02 20:40:13.849245',NULL,15,'2016-05-09 23:04:31.869480','2016-05-09 19:55:13.360586','127.0.0.1','127.0.0.1','2016-03-28 23:30:29.525363','2016-05-09 23:04:31.871064','1985-03-30','Jess','Admin User','Female',140,'t','lbs','Beginner');
INSERT INTO "users" VALUES(2,'jam.rudolph@gmail.com','$2a$10$88h/5irB6XpXzvSmX.7mOeD8NePDX1/idaWaP8p58Jp0RXgzlQ/a.',NULL,NULL,NULL,36,'2016-07-28 22:34:36.967794','2016-05-09 21:50:07.203440','127.0.0.1','127.0.0.1','2016-03-28 23:31:48.428282','2016-07-28 22:34:36.969358','1989-06-15','Jess','Rudolph','Female',140,'f','lbs','Intermediate');
INSERT INTO "users" VALUES(8,'john.proctor@gmail.com','$2a$10$z0kWYwvFLOGZhxufyLgNNOuAqEmy/mBEwSRnbGyDeSbQxt8SCr0Q2',NULL,NULL,NULL,1,'2016-03-31 14:03:38.157162','2016-03-31 14:03:38.157162','127.0.0.1','127.0.0.1','2016-03-31 14:03:38.148659','2016-03-31 14:03:38.158012','1985-09-13','John','Proctor','Male',215,'f','lbs','Intermediate');
INSERT INTO "users" VALUES(14,'james@gmail.com','$2a$10$TgUo7XzuJGu.c.44BvSO9ucXCfqVnmU.x6uR1t.fGmefeUW23Jw3y',NULL,NULL,NULL,1,'2016-05-01 16:42:12.268903','2016-05-01 16:42:12.268903','127.0.0.1','127.0.0.1','2016-05-01 16:42:12.258084','2016-05-01 16:42:12.269697','2007-05-01','James','W','Male',215,'f','lbs','Advanced');
CREATE TABLE "routines" ("id" SERIAL PRIMARY KEY NOT NULL, "name" text, "description" text, "user_id" integer, "created_at" timestamp, "updated_at" timestamp);
INSERT INTO "routines" VALUES(2,'Lower Body','',1,'2016-02-08 00:02:10.138466','2016-02-08 00:02:10.138466');
INSERT INTO "routines" VALUES(3,'Upper Body','Here is my description',1,'2016-02-08 15:51:27.072871','2016-03-13 16:14:00.359889');
INSERT INTO "routines" VALUES(5,'Lower Body','Here is my routine description.',2,'2016-02-10 23:05:29.887423','2016-03-16 14:31:21.370488');
INSERT INTO "routines" VALUES(8,'A-Day','',1,'2016-02-11 03:16:41.658577','2016-02-11 03:17:50.496078');
INSERT INTO "routines" VALUES(19,'Upper Body','',2,'2016-04-02 18:01:31.916127','2016-04-02 18:01:31.916127');
INSERT INTO "routines" VALUES(30,'A-Day','',2,'2016-05-09 19:51:16.843819','2016-05-09 19:51:16.843819');
CREATE TABLE "sample_exercises" ("id" SERIAL PRIMARY KEY NOT NULL, "name" text, "created_at" timestamp, "updated_at" timestamp);
INSERT INTO "sample_exercises" VALUES(1,'Squat','2016-01-30 21:20:11.077125','2016-01-30 21:20:11.077125');
INSERT INTO "sample_exercises" VALUES(2,'Deadlift','2016-01-30 21:20:11.085887','2016-01-30 21:20:11.085887');
INSERT INTO "sample_exercises" VALUES(3,'Chest Press - Barbell','2016-01-30 21:20:11.089146','2016-01-30 21:20:11.089146');
INSERT INTO "sample_exercises" VALUES(5,'Leg Press','2016-01-30 21:20:11.094983','2016-01-30 21:20:11.094983');
INSERT INTO "sample_exercises" VALUES(6,'Leg Extension (Individual)','2016-01-30 21:20:11.097854','2016-01-30 21:20:11.097854');
INSERT INTO "sample_exercises" VALUES(7,'Leg Extension (Together)','2016-01-30 21:20:11.100910','2016-01-30 21:20:11.085887');
INSERT INTO "sample_exercises" VALUES(8,'Leg Curl (Individual)','2016-01-30 21:20:11.103654','2016-01-30 21:20:11.103654');
INSERT INTO "sample_exercises" VALUES(9,'Leg Curl (Together)','2016-01-30 21:20:11.106469','2016-01-30 21:20:11.106469');
INSERT INTO "sample_exercises" VALUES(10,'Calf Raise - Standing','2016-01-30 21:20:11.110049','2016-01-30 21:20:11.110049');
INSERT INTO "sample_exercises" VALUES(11,'Row - Bent Over','2016-01-30 21:20:11.114375','2016-01-30 21:20:11.114375');
INSERT INTO "sample_exercises" VALUES(12,'Bicep Curls - Dumbbell (Individual)','2016-01-30 21:20:11.117639','2016-01-30 21:20:11.117639');
INSERT INTO "sample_exercises" VALUES(13,'Bicep Curls - Barbell (Together)','2016-01-30 21:20:11.121084','2016-01-30 21:20:11.121084');
INSERT INTO "sample_exercises" VALUES(14,'Chest Fly (Dumbbells)','2016-01-30 21:20:11.123945','2016-01-30 21:20:11.123945');
INSERT INTO "sample_exercises" VALUES(15,'Chest Fly (Machine)','2016-01-30 21:20:11.126962','2016-01-30 21:20:11.126962');
INSERT INTO "sample_exercises" VALUES(17,'Chest Press (Machine)','2016-01-30 21:20:11.135365','2016-01-30 21:20:11.135365');
INSERT INTO "sample_exercises" VALUES(18,'Arm Raises - Front Raises','2016-01-30 21:20:11.139341','2016-01-30 21:20:11.139341');
INSERT INTO "sample_exercises" VALUES(19,'Arm Raises - Lateral','2016-01-30 21:20:11.143157','2016-01-30 21:20:11.143157');
INSERT INTO "sample_exercises" VALUES(20,'Row - Rear Delt','2016-01-30 21:20:11.147379','2016-01-30 21:20:11.147379');
INSERT INTO "sample_exercises" VALUES(21,'Chest Reverse Fly','2016-01-30 21:20:11.151369','2016-01-30 21:20:11.151369');
INSERT INTO "sample_exercises" VALUES(22,'Rows - Seated','2016-01-30 21:20:11.154895','2016-01-30 21:20:11.154895');
INSERT INTO "sample_exercises" VALUES(23,'Tricep Extension - Overhead - Dumbbell','2016-01-30 21:20:11.158894','2016-01-30 21:20:11.158894');
INSERT INTO "sample_exercises" VALUES(24,'Tricep Extension - Barbell','2016-01-30 21:20:11.161809','2016-01-30 21:20:11.161809');
INSERT INTO "sample_exercises" VALUES(25,'Shoulder Press - Overhead - Barbell','2016-01-30 21:20:11.165045','2016-01-30 21:20:11.165045');
INSERT INTO "sample_exercises" VALUES(26,'Shoulder Shrug','2016-01-30 21:20:11.167918','2016-01-30 21:20:11.167918');
INSERT INTO "sample_exercises" VALUES(27,'Skull Crushers','2016-01-30 21:20:11.171154','2016-01-30 21:20:11.171154');
INSERT INTO "sample_exercises" VALUES(28,'Row - Upright','2016-01-30 21:20:11.174178','2016-01-30 21:20:11.174178');
INSERT INTO "sample_exercises" VALUES(29,'Back Extension','2016-01-30 21:20:11.177344','2016-01-30 21:20:11.177344');
INSERT INTO "sample_exercises" VALUES(30,'Lat Pulldown','2016-01-30 21:20:11.180156','2016-01-30 21:20:11.180156');
INSERT INTO "sample_exercises" VALUES(31,'Lunges','2016-01-30 21:20:11.184002','2016-01-30 21:20:11.184002');
INSERT INTO "sample_exercises" VALUES(32,'Calf Press - Seated','2016-01-30 21:20:11.187750','2016-01-30 21:20:11.187750');
INSERT INTO "sample_exercises" VALUES(33,'Hip Adductor','2016-01-30 21:20:11.191434','2016-01-30 21:20:11.191434');
INSERT INTO "sample_exercises" VALUES(34,'Shoulder Fly','2016-01-30 21:20:11.195211','2016-01-30 21:20:11.195211');
INSERT INTO "sample_exercises" VALUES(35,'Hammer Curls','2016-01-30 21:20:11.198758','2016-01-30 21:20:11.198758');
INSERT INTO "sample_exercises" VALUES(36,'Row - Kneeling','2016-01-30 21:20:11.202509','2016-01-30 21:20:11.202509');
INSERT INTO "sample_exercises" VALUES(37,'Dumbbell Pullover','2016-01-30 21:20:11.206683','2016-01-30 21:20:11.206683');
INSERT INTO "sample_exercises" VALUES(38,'Power Clean','2016-03-27 23:45:44.805273','2016-03-27 23:45:44.805273');
INSERT INTO "sample_exercises" VALUES(39,'Clean and Press','2016-03-27 23:45:44.817613','2016-03-27 23:45:44.817613');
INSERT INTO "sample_exercises" VALUES(40,'Pull Ups','2016-03-27 23:45:44.822967','2016-03-27 23:45:44.822967');
INSERT INTO "sample_exercises" VALUES(41,'Tricep Dips','2016-05-04 18:02:57.375349','2016-05-04 18:02:57.375349');
INSERT INTO "sample_exercises" VALUES(42,'Tricep Extension (Machine)','2016-05-04 18:02:57.386648','2016-05-04 18:02:57.386648');
INSERT INTO "sample_exercises" VALUES(43,'Hip Abductor','2016-05-04 18:02:57.392929','2016-05-04 18:02:57.392929');
INSERT INTO "sample_exercises" VALUES(44,'Tricep Kickbacks - Dumbbell','2016-05-04 18:02:57.398081','2016-05-04 18:02:57.398081');
CREATE TABLE "exercises" ("id" SERIAL PRIMARY KEY NOT NULL, "notes" text, "created_at" timestamp, "updated_at" timestamp, "user_id" integer, "routine_id" integer, "sample_exercise_id" integer);
INSERT INTO "exercises" VALUES(1,'','2016-02-09 23:54:44.014910','2016-02-10 22:56:05.835907',2,4,13);
INSERT INTO "exercises" VALUES(2,'','2016-02-10 00:28:02.892413','2016-04-28 00:46:11.404583',2,19,18);
INSERT INTO "exercises" VALUES(4,'','2016-02-10 23:06:03.198481','2016-02-10 23:06:03.198481',2,NULL,2);
INSERT INTO "exercises" VALUES(7,'','2016-02-10 23:15:09.266962','2016-04-02 18:29:08.384260',2,19,14);
INSERT INTO "exercises" VALUES(9,'','2016-02-10 23:18:16.331909','2016-04-03 19:19:16.451531',2,NULL,33);
INSERT INTO "exercises" VALUES(10,'','2016-02-10 23:19:32.240799','2016-05-09 14:18:48.974945',2,NULL,10);
INSERT INTO "exercises" VALUES(11,'','2016-02-10 23:22:08.883842','2016-04-03 19:19:33.803213',2,5,1);
INSERT INTO "exercises" VALUES(12,'Take shoulders out of ears','2016-02-10 23:52:28.216424','2016-04-02 18:28:52.439906',2,19,30);
INSERT INTO "exercises" VALUES(13,'','2016-02-11 02:39:05.049082','2016-04-02 18:29:00.890724',2,19,11);
INSERT INTO "exercises" VALUES(14,'Don''t use your back!!','2016-02-11 03:12:32.913132','2016-03-13 21:53:28.466559',1,3,25);
INSERT INTO "exercises" VALUES(15,'','2016-02-11 03:28:31.020626','2016-03-15 20:15:23.152145',1,3,1);
INSERT INTO "exercises" VALUES(16,'','2016-02-12 14:32:43.368616','2016-02-12 17:36:37.930732',1,3,15);
INSERT INTO "exercises" VALUES(18,'','2016-02-12 18:02:33.427854','2016-03-13 22:04:01.630469',1,3,11);
INSERT INTO "exercises" VALUES(19,'','2016-03-01 23:11:04.797349','2016-03-02 22:30:06.001476',1,3,14);
INSERT INTO "exercises" VALUES(24,'','2016-03-02 14:45:20.967001','2016-03-02 22:29:25.858715',1,3,36);
INSERT INTO "exercises" VALUES(26,'','2016-03-02 14:47:26.699461','2016-03-13 22:12:54.358391',1,2,8);
INSERT INTO "exercises" VALUES(41,'','2016-03-05 18:08:50.549311','2016-03-13 20:36:49.500011',1,2,31);
INSERT INTO "exercises" VALUES(43,'','2016-03-05 18:12:13.260750','2016-03-05 18:12:13.260750',1,NULL,29);
INSERT INTO "exercises" VALUES(49,'','2016-03-05 18:19:40.931930','2016-03-05 18:19:40.931930',1,NULL,27);
INSERT INTO "exercises" VALUES(51,'','2016-03-05 18:25:42.209580','2016-03-05 18:25:42.209580',1,2,32);
INSERT INTO "exercises" VALUES(52,'','2016-03-12 19:11:57.219890','2016-03-13 20:39:11.937564',1,2,5);
INSERT INTO "exercises" VALUES(53,'','2016-03-13 21:02:12.731098','2016-03-13 21:02:31.437499',1,3,3);
INSERT INTO "exercises" VALUES(54,'','2016-03-13 22:04:36.691947','2016-03-13 22:04:53.767564',1,2,2);
INSERT INTO "exercises" VALUES(56,'','2016-03-13 23:05:58.158649','2016-03-13 23:05:58.158649',1,3,20);
INSERT INTO "exercises" VALUES(57,'','2016-03-13 23:08:53.196189','2016-04-10 21:56:07.412917',1,3,13);
INSERT INTO "exercises" VALUES(58,'','2016-03-15 19:43:16.803658','2016-03-15 21:42:29.298722',1,2,6);
INSERT INTO "exercises" VALUES(59,'','2016-03-16 15:03:53.745343','2016-04-03 19:19:42.613778',2,5,31);
INSERT INTO "exercises" VALUES(68,'','2016-03-17 17:18:31.769352','2016-04-02 18:28:45.500723',2,19,21);
INSERT INTO "exercises" VALUES(69,'','2016-03-28 19:57:16.714822','2016-04-02 18:28:38.573945',2,19,17);
INSERT INTO "exercises" VALUES(70,'','2016-04-03 17:22:01.331350','2016-04-03 19:24:33.853299',2,19,40);
INSERT INTO "exercises" VALUES(72,'','2016-04-03 19:24:59.415297','2016-04-03 19:24:59.415297',2,NULL,27);
INSERT INTO "exercises" VALUES(73,'','2016-04-03 19:25:19.481013','2016-04-03 19:25:19.481013',2,19,20);
INSERT INTO "exercises" VALUES(74,'','2016-04-03 19:29:03.581069','2016-04-03 19:29:11.361380',2,19,25);
INSERT INTO "exercises" VALUES(75,'','2016-04-03 19:47:21.516631','2016-04-28 01:25:25.688006',2,NULL,32);
INSERT INTO "exercises" VALUES(83,'','2016-04-30 20:38:18.809619','2016-04-30 20:38:18.809619',13,NULL,17);
INSERT INTO "exercises" VALUES(84,'','2016-05-02 14:59:06.750303','2016-05-09 13:10:27.850748',2,19,3);
INSERT INTO "exercises" VALUES(85,'These are some notes.','2016-05-04 18:44:14.555986','2016-05-08 18:41:35.538411',1,NULL,21);
INSERT INTO "exercises" VALUES(88,'','2016-05-09 19:45:31.529490','2016-05-09 19:45:57.128178',2,NULL,41);
CREATE TABLE "exercise_entries" ("id" SERIAL PRIMARY KEY NOT NULL, "reps" integer, "sets" integer, "weight" decimal, "notes" text, "exercise_id" integer, "created_at" timestamp, "updated_at" timestamp, "user_id" integer, "measure" text, "sample_exercise_id" integer);
INSERT INTO "exercise_entries" VALUES(2,10,1,10,'',16,'2016-02-15 20:52:20.774133','2016-02-15 20:52:20.774133',1,'lbs',15);
INSERT INTO "exercise_entries" VALUES(10,5,3,45,'',15,'2016-02-16 02:00:12.188170','2016-02-16 02:00:12.188170',1,'lbs',1);
INSERT INTO "exercise_entries" VALUES(12,15,2,15,'',14,'2016-02-16 02:01:59.463969','2016-02-16 02:01:59.463969',1,'lbs',25);
INSERT INTO "exercise_entries" VALUES(13,10,3,20,'',14,'2016-03-01 01:37:55.381908','2016-04-12 01:30:06.640198',1,'lbs',25);
INSERT INTO "exercise_entries" VALUES(14,8,3,30,'',15,'2016-03-01 01:39:16.962616','2016-03-01 01:39:16.962616',1,'lbs',1);
INSERT INTO "exercise_entries" VALUES(15,5,3,15,'',16,'2016-03-02 22:33:36.657710','2016-03-02 22:33:36.657710',1,'lbs',15);
INSERT INTO "exercise_entries" VALUES(16,8,3,30,'',15,'2016-03-02 22:35:43.004844','2016-03-02 22:35:43.004844',1,'lbs',1);
INSERT INTO "exercise_entries" VALUES(17,7,3,15,'',16,'2016-03-02 22:39:53.627669','2016-03-02 22:39:53.627669',1,'lbs',15);
INSERT INTO "exercise_entries" VALUES(19,5,3,15,'',14,'2016-03-12 18:26:51.588221','2016-03-12 18:26:51.588221',1,'lbs',25);
INSERT INTO "exercise_entries" VALUES(20,6,3,50,'',43,'2016-03-12 20:49:34.268190','2016-03-12 20:49:34.268190',1,'lbs',29);
INSERT INTO "exercise_entries" VALUES(21,8,3,25,'',49,'2016-03-12 20:49:47.025576','2016-03-12 20:49:47.025576',1,'lbs',27);
INSERT INTO "exercise_entries" VALUES(25,10,3,10,'',41,'2016-03-12 20:58:26.496271','2016-03-12 20:58:26.496271',1,'lbs',31);
INSERT INTO "exercise_entries" VALUES(26,10,3,50,'',18,'2016-03-13 18:56:12.274692','2016-03-13 18:56:12.274692',1,'lbs',11);
INSERT INTO "exercise_entries" VALUES(27,10,3,15,'',14,'2016-03-13 18:59:28.891751','2016-03-13 18:59:28.891751',1,'lbs',25);
INSERT INTO "exercise_entries" VALUES(28,8,3,60,'',18,'2016-03-13 19:42:22.138030','2016-03-13 19:42:22.138030',1,'lbs',11);
INSERT INTO "exercise_entries" VALUES(29,10,3,10,'',15,'2016-03-13 19:52:36.414003','2016-03-13 19:52:36.414003',1,'lbs',1);
INSERT INTO "exercise_entries" VALUES(30,8,3,30,'',16,'2016-03-13 19:54:48.055599','2016-03-13 19:54:48.055599',1,'lbs',15);
INSERT INTO "exercise_entries" VALUES(31,5,3,10,'',18,'2016-03-13 19:57:35.970982','2016-03-13 19:57:35.970982',1,'lbs',11);
INSERT INTO "exercise_entries" VALUES(32,8,3,10,'',19,'2016-03-13 19:57:59.559827','2016-03-15 21:09:51.183401',1,'lbs',14);
INSERT INTO "exercise_entries" VALUES(33,10,3,20,'',16,'2016-03-13 19:58:16.046816','2016-03-13 19:58:16.046816',1,'lbs',15);
INSERT INTO "exercise_entries" VALUES(34,5,3,15,'

',16,'2016-03-13 19:59:59.596621','2016-03-13 19:59:59.596621',1,'lbs',15);
INSERT INTO "exercise_entries" VALUES(35,10,5,55,'',24,'2016-03-13 20:01:02.670120','2016-03-13 20:01:02.670120',1,'lbs',36);
INSERT INTO "exercise_entries" VALUES(36,10,3,15,'',19,'2016-03-13 20:04:46.653420','2016-03-15 20:50:48.400811',1,'lbs',14);
INSERT INTO "exercise_entries" VALUES(39,10,3,25,'',16,'2016-03-13 20:32:10.501798','2016-03-13 20:32:10.501798',1,'lbs',15);
INSERT INTO "exercise_entries" VALUES(40,8,3,20,'',19,'2016-03-13 20:40:38.442393','2016-04-23 19:27:01.297451',1,'lbs',14);
INSERT INTO "exercise_entries" VALUES(41,5,3,25,'',56,'2016-03-15 21:12:18.682707','2016-03-15 22:17:16.660742',1,'lbs',20);
INSERT INTO "exercise_entries" VALUES(42,8,3,15,'This is a sample note.',13,'2016-03-16 14:09:20.347962','2016-03-16 14:09:57.425459',2,'lbs',11);
INSERT INTO "exercise_entries" VALUES(43,8,3,50,'These are some notes. Some really long notes. These notes are so long. ',10,'2016-03-16 14:11:05.361933','2016-03-16 14:11:27.868155',2,'lbs',10);
INSERT INTO "exercise_entries" VALUES(44,10,3,35,'',12,'2016-03-16 14:17:45.466079','2016-03-16 14:17:45.466079',2,'lbs',30);
INSERT INTO "exercise_entries" VALUES(45,10,3,20,'',7,'2016-03-16 15:00:34.779771','2016-03-16 15:00:34.779771',2,'lbs',14);
INSERT INTO "exercise_entries" VALUES(46,5,3,50,'',13,'2016-03-16 15:02:46.775491','2016-03-16 15:02:46.775491',2,'lbs',11);
INSERT INTO "exercise_entries" VALUES(47,15,3,10,'',59,'2016-03-16 15:07:32.649167','2016-03-16 15:07:32.649167',2,'lbs',31);
INSERT INTO "exercise_entries" VALUES(48,10,3,70,'',9,'2016-03-16 15:07:59.042933','2016-03-16 15:07:59.042933',2,'lbs',33);
INSERT INTO "exercise_entries" VALUES(49,8,3,40,'',11,'2016-03-16 15:08:19.170807','2016-03-16 15:08:19.170807',2,'lbs',1);
INSERT INTO "exercise_entries" VALUES(50,10,3,5,'',2,'2016-03-16 15:10:14.895199','2016-03-16 15:10:14.895199',2,'lbs',18);
INSERT INTO "exercise_entries" VALUES(51,10,3,60,'',4,'2016-03-16 15:11:17.620135','2016-03-16 15:11:17.620135',2,'lbs',2);
INSERT INTO "exercise_entries" VALUES(52,10,3,10,'',1,'2016-03-16 15:12:09.276922','2016-03-16 15:12:09.276922',2,'lbs',13);
INSERT INTO "exercise_entries" VALUES(53,10,3,20,'',7,'2016-03-16 15:15:44.282637','2016-03-16 15:15:44.282637',2,'lbs',14);
INSERT INTO "exercise_entries" VALUES(54,8,3,70,'',9,'2016-03-17 14:55:43.544096','2016-03-17 14:55:43.544096',2,'lbs',33);
INSERT INTO "exercise_entries" VALUES(55,8,3,20,'',1,'2016-03-17 14:57:51.493945','2016-03-17 14:57:51.493945',2,'lbs',13);
INSERT INTO "exercise_entries" VALUES(56,8,3,40,'',11,'2016-03-17 14:58:34.257549','2016-03-17 14:58:34.257549',2,'lbs',1);
INSERT INTO "exercise_entries" VALUES(60,5,3,50,'',10,'2016-03-17 15:10:56.576354','2016-04-27 18:51:03.072257',2,'lbs',10);
INSERT INTO "exercise_entries" VALUES(63,10,3,50,'',4,'2016-03-17 15:19:35.423050','2016-03-17 15:19:35.423050',2,'lbs',2);
INSERT INTO "exercise_entries" VALUES(67,5,3,50,'',11,'2016-03-17 16:33:56.457172','2016-03-17 16:33:56.457172',2,'lbs',1);
INSERT INTO "exercise_entries" VALUES(74,5,3,15,'',68,'2016-03-27 17:00:58.427154','2016-03-27 17:00:58.427154',2,'lbs',21);
INSERT INTO "exercise_entries" VALUES(76,5,3,60,'',69,'2016-03-30 19:50:51.929306','2016-03-30 19:50:51.929306',2,'lbs',17);
INSERT INTO "exercise_entries" VALUES(77,5,3,10,'',57,'2016-03-30 22:50:27.205442','2016-03-30 22:50:27.205442',1,'lbs',13);
INSERT INTO "exercise_entries" VALUES(78,10,3,30,'',58,'2016-03-30 22:50:43.708175','2016-03-30 22:50:43.708175',1,'lbs',6);
INSERT INTO "exercise_entries" VALUES(79,10,3,60,'',54,'2016-03-30 22:50:56.290097','2016-03-30 22:50:56.290097',1,'lbs',2);
INSERT INTO "exercise_entries" VALUES(80,8,3,65,'',69,'2016-03-31 23:18:04.192017','2016-03-31 23:18:04.192017',2,'lbs',17);
INSERT INTO "exercise_entries" VALUES(81,10,3,10,'',59,'2016-03-31 23:20:48.238479','2016-03-31 23:20:48.238479',2,'lbs',31);
INSERT INTO "exercise_entries" VALUES(82,8,3,70,'',9,'2016-03-31 23:22:18.664858','2016-03-31 23:22:18.664858',2,'lbs',33);
INSERT INTO "exercise_entries" VALUES(84,15,3,70,'',13,'2016-03-31 23:36:15.007061','2016-03-31 23:36:15.007061',2,'lbs',11);
INSERT INTO "exercise_entries" VALUES(85,5,3,60,'',69,'2016-04-01 23:56:37.298410','2016-04-11 18:17:21.349303',2,'lbs',17);
INSERT INTO "exercise_entries" VALUES(86,8,3,70,'',4,'2016-04-02 16:29:53.087150','2016-04-02 16:29:53.087150',2,'lbs',2);
INSERT INTO "exercise_entries" VALUES(87,5,3,80,'',13,'2016-04-03 17:04:24.869974','2016-04-03 17:04:24.869974',2,'lbs',11);
INSERT INTO "exercise_entries" VALUES(88,8,3,30,'',56,'2016-04-10 17:05:22.965114','2016-04-10 17:05:22.965114',1,'lbs',20);
INSERT INTO "exercise_entries" VALUES(89,5,3,30,'',16,'2016-04-10 17:05:45.639272','2016-04-10 17:05:45.639272',1,'lbs',15);
INSERT INTO "exercise_entries" VALUES(90,8,3,70,'',24,'2016-04-10 18:21:35.629873','2016-04-10 18:21:35.629873',1,'lbs',36);
INSERT INTO "exercise_entries" VALUES(91,8,3,40,'',15,'2016-04-10 18:22:03.702491','2016-04-10 18:22:03.702491',1,'lbs',1);
INSERT INTO "exercise_entries" VALUES(92,5,3,70,'',18,'2016-04-10 18:22:56.911579','2016-04-10 18:22:56.911579',1,'lbs',11);
INSERT INTO "exercise_entries" VALUES(93,15,2,15.5,'',41,'2016-04-10 18:35:42.336990','2016-04-10 18:35:42.336990',1,'lbs',31);
INSERT INTO "exercise_entries" VALUES(96,10,3,35,'',58,'2016-04-10 18:37:30.544015','2016-04-10 18:37:30.544015',1,'lbs',6);
INSERT INTO "exercise_entries" VALUES(97,8,3,30,'',14,'2016-04-10 18:39:56.229166','2016-04-10 18:39:56.229166',1,'lbs',25);
INSERT INTO "exercise_entries" VALUES(99,10,3,90,'',52,'2016-04-10 21:46:00.532842','2016-04-10 21:46:00.532842',1,'lbs',5);
INSERT INTO "exercise_entries" VALUES(100,8,3,70,'',69,'2016-04-11 18:15:08.771947','2016-04-11 18:15:08.771947',2,'lbs',17);
INSERT INTO "exercise_entries" VALUES(102,10,3,15,'',59,'2016-04-11 20:03:58.443948','2016-04-11 20:03:58.443948',2,'lbs',31);
INSERT INTO "exercise_entries" VALUES(103,10,3,75,'',4,'2016-04-11 20:06:13.671710','2016-04-11 20:06:13.671710',2,'lbs',2);
INSERT INTO "exercise_entries" VALUES(104,8,3,30,'',1,'2016-04-12 01:13:00.465556','2016-04-12 01:13:00.465556',2,'lbs',13);
INSERT INTO "exercise_entries" VALUES(105,8,3,30,'',26,'2016-04-13 23:56:07.534454','2016-04-13 23:56:07.534454',1,'lbs',8);
INSERT INTO "exercise_entries" VALUES(106,8,3,75,'',24,'2016-04-13 23:57:19.373784','2016-04-13 23:57:19.373784',1,'lbs',36);
INSERT INTO "exercise_entries" VALUES(107,10,3,35,'',14,'2016-04-23 19:22:35.439532','2016-04-23 19:22:35.439532',1,'lbs',25);
INSERT INTO "exercise_entries" VALUES(108,10,3,15,'',57,'2016-04-23 19:22:52.157595','2016-04-23 19:22:52.157595',1,'lbs',13);
INSERT INTO "exercise_entries" VALUES(109,10,3,35,'',56,'2016-04-23 19:23:09.542775','2016-04-23 19:23:09.542775',1,'lbs',20);
INSERT INTO "exercise_entries" VALUES(110,10,3,65,'',54,'2016-04-23 19:23:40.715994','2016-04-23 19:23:40.715994',1,'lbs',2);
INSERT INTO "exercise_entries" VALUES(111,8,3,30,'',53,'2016-04-23 19:24:00.893259','2016-04-23 19:24:00.893259',1,'lbs',3);
INSERT INTO "exercise_entries" VALUES(112,10,3,100,'',52,'2016-04-23 19:24:17.693483','2016-04-23 19:24:17.693483',1,'lbs',5);
INSERT INTO "exercise_entries" VALUES(113,7,3,50,'',51,'2016-04-23 19:25:01.650736','2016-04-23 19:25:01.650736',1,'lbs',32);
INSERT INTO "exercise_entries" VALUES(114,8,3,30,'',49,'2016-04-23 19:25:12.615406','2016-04-23 19:25:12.615406',1,'lbs',27);
INSERT INTO "exercise_entries" VALUES(115,10,3,55,'',43,'2016-04-23 19:25:30.172353','2016-04-23 19:25:30.172353',1,'lbs',29);
INSERT INTO "exercise_entries" VALUES(116,8,3,20,'',41,'2016-04-23 19:25:44.787139','2016-04-23 19:25:44.787139',1,'lbs',31);
INSERT INTO "exercise_entries" VALUES(117,8,3,35,'',26,'2016-04-23 19:26:09.079114','2016-04-23 19:26:09.079114',1,'lbs',8);
INSERT INTO "exercise_entries" VALUES(118,10,3,80,'',24,'2016-04-23 19:26:20.316775','2016-04-23 19:26:20.316775',1,'lbs',36);
INSERT INTO "exercise_entries" VALUES(119,10,3,25,'',19,'2016-04-23 19:27:33.551924','2016-04-23 19:27:33.551924',1,'lbs',14);
INSERT INTO "exercise_entries" VALUES(120,8,3,45,'',15,'2016-04-23 19:27:48.026065','2016-04-23 19:27:48.026065',1,'lbs',1);
INSERT INTO "exercise_entries" VALUES(121,8,3,40,'',14,'2016-04-23 19:28:03.995288','2016-04-23 19:28:03.995288',1,'lbs',25);
INSERT INTO "exercise_entries" VALUES(122,10,3,35,'',1,'2016-04-27 18:49:10.477345','2016-04-27 18:49:10.477345',2,'lbs',13);
INSERT INTO "exercise_entries" VALUES(123,8,3,10,'',2,'2016-04-27 18:49:23.599737','2016-04-27 18:49:23.599737',2,'lbs',18);
INSERT INTO "exercise_entries" VALUES(124,8,3,80,'',4,'2016-04-27 18:49:40.408902','2016-04-27 18:49:40.408902',2,'lbs',2);
INSERT INTO "exercise_entries" VALUES(125,8,3,25,'',7,'2016-04-27 18:50:01.952284','2016-04-27 18:50:01.952284',2,'lbs',14);
INSERT INTO "exercise_entries" VALUES(126,8,3,75,'',9,'2016-04-27 18:50:42.141403','2016-04-27 18:50:42.141403',2,'lbs',33);
INSERT INTO "exercise_entries" VALUES(127,8,3,55,'',10,'2016-04-27 18:51:26.165059','2016-04-27 18:51:26.165059',2,'lbs',10);
INSERT INTO "exercise_entries" VALUES(128,10,3,55,'',11,'2016-04-27 18:51:57.884093','2016-04-27 18:51:57.884093',2,'lbs',1);
INSERT INTO "exercise_entries" VALUES(129,8,3,40,'',12,'2016-04-27 18:52:09.688192','2016-04-27 18:52:09.688192',2,'lbs',30);
INSERT INTO "exercise_entries" VALUES(130,8,3,85,'',13,'2016-04-27 18:52:21.177347','2016-04-27 18:52:21.177347',2,'lbs',11);
INSERT INTO "exercise_entries" VALUES(131,8,3,20,'',59,'2016-04-27 18:52:32.757549','2016-04-27 18:52:32.757549',2,'lbs',31);
INSERT INTO "exercise_entries" VALUES(132,8,3,25,'',59,'2016-04-27 18:52:51.962930','2016-04-27 18:52:51.962930',2,'lbs',31);
INSERT INTO "exercise_entries" VALUES(133,8,3,20,'',68,'2016-04-27 18:53:10.166833','2016-04-27 18:53:10.166833',2,'lbs',21);
INSERT INTO "exercise_entries" VALUES(134,8,3,75,'',69,'2016-04-27 18:53:24.489985','2016-04-27 18:53:24.489985',2,'lbs',17);
INSERT INTO "exercise_entries" VALUES(135,8,3,50,'',70,'2016-04-27 18:53:35.747666','2016-04-27 18:53:35.747666',2,'lbs',40);
INSERT INTO "exercise_entries" VALUES(136,8,3,25,'',72,'2016-04-27 18:53:48.104902','2016-04-27 18:53:48.104902',2,'lbs',27);
INSERT INTO "exercise_entries" VALUES(137,8,3,20,'',74,'2016-04-27 18:54:14.209005','2016-04-27 18:54:14.209005',2,'lbs',25);
INSERT INTO "exercise_entries" VALUES(138,8,3,10,'',75,'2016-04-27 18:56:26.876430','2016-04-27 18:56:26.876430',2,'lbs',32);
INSERT INTO "exercise_entries" VALUES(145,10,3,15,'',73,'2016-04-28 01:02:34.085970','2016-04-28 01:02:34.085970',2,'lbs',20);
INSERT INTO "exercise_entries" VALUES(146,8,3,40,'',75,'2016-04-29 20:24:56.834013','2016-04-29 20:24:56.834013',2,'lbs',32);
INSERT INTO "exercise_entries" VALUES(153,10,3,15,'',84,'2016-05-02 14:59:16.200042','2016-05-02 14:59:16.200042',2,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(154,10,3,15,'',84,'2016-05-02 20:10:31.608018','2016-05-02 20:10:31.608018',2,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(155,10,3,15,'',85,'2016-05-04 18:44:38.863541','2016-05-04 18:44:38.863541',1,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(156,10,3,20,'',85,'2016-05-04 18:44:59.074051','2016-05-04 18:44:59.074051',1,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(157,8,3,40,'',56,'2016-05-04 21:56:57.159436','2016-05-04 21:56:57.159436',1,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(159,10,3,25,'',85,'2016-05-08 14:46:16.312722','2016-05-08 14:46:16.312722',1,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(160,8,3,70,'',54,'2016-05-08 14:49:13.032827','2016-05-08 14:49:13.032827',1,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(161,10,3,75,'',54,'2016-05-08 14:50:06.675418','2016-05-08 14:50:06.675418',1,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(162,8,3,30,'',85,'2016-05-08 14:52:49.535061','2016-05-08 14:52:49.535061',1,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(163,8,3,30,'',19,'2016-05-08 14:55:08.180312','2016-05-08 14:55:08.180312',1,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(164,8,3,40,'',26,'2016-05-08 18:43:08.119063','2016-05-08 18:43:08.119063',1,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(165,8,3,55,'These are some notes',70,'2016-05-08 20:35:35.973503','2016-05-08 20:35:35.973503',2,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(166,8,3,75,'',9,'2016-05-09 13:05:55.966525','2016-05-09 13:05:55.966525',2,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(167,8,3,75,'',10,'2016-05-09 13:13:45.147793','2016-05-09 13:13:45.147793',2,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(168,8,3,55,'',11,'2016-05-09 19:49:03.971381','2016-05-09 19:49:03.971381',2,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(169,8,3,25,'',59,'2016-05-09 19:49:22.431245','2016-05-09 19:49:22.431245',2,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(170,8,3,15,'',2,'2016-05-09 22:13:29.022442','2016-05-09 22:13:29.022442',2,'lbs',NULL);
INSERT INTO "exercise_entries" VALUES(171,8,3,30.5,'',7,'2016-05-09 22:14:02.864427','2016-05-09 22:14:35.083085',2,'lbs',NULL);
CREATE TABLE "muscle_measures" ("id" SERIAL PRIMARY KEY NOT NULL, "created_at" timestamp, "updated_at" timestamp, "user_id" integer, "unit" text, "name" text, "measurement" decimal);
INSERT INTO "muscle_measures" VALUES(13,'2016-05-02 00:43:29.799973','2016-05-02 00:43:29.799973',2,'in','Left Bicep',10);
INSERT INTO "muscle_measures" VALUES(14,'2016-05-02 00:48:42.798379','2016-05-02 00:48:42.798379',2,'in','Right Bicep',10.5);
INSERT INTO "muscle_measures" VALUES(15,'2016-05-02 00:51:10.506847','2016-05-02 00:51:10.506847',2,'in','Left Thigh',24.5);
INSERT INTO "muscle_measures" VALUES(16,'2016-05-02 00:51:19.622597','2016-05-02 00:51:19.622597',2,'in','Right Thigh',26);
INSERT INTO "muscle_measures" VALUES(17,'2016-05-02 00:58:07.595332','2016-05-02 00:58:07.595332',2,'in','Left Bicep',11);
INSERT INTO "muscle_measures" VALUES(18,'2016-05-02 00:58:25.080032','2016-05-02 00:58:25.080032',2,'in','Right Bicep',12);
INSERT INTO "muscle_measures" VALUES(19,'2016-05-02 01:20:40.133243','2016-05-02 01:20:40.133243',2,'in','Right Thigh',28);
INSERT INTO "muscle_measures" VALUES(20,'2016-05-02 01:20:57.187796','2016-05-02 01:20:57.187796',2,'in','Left Thigh',26);
INSERT INTO "muscle_measures" VALUES(21,'2016-05-02 01:33:40.252389','2016-05-02 01:50:31.009681',2,'in','Left Bicep',12);
INSERT INTO "muscle_measures" VALUES(22,'2016-05-02 01:37:36.528917','2016-05-02 01:50:39.520605',2,'in','Left Bicep',14);
INSERT INTO "muscle_measures" VALUES(23,'2016-05-08 15:18:46.435034','2016-05-08 15:18:46.435034',1,'in','Left Bicep',10);
INSERT INTO "muscle_measures" VALUES(24,'2016-05-08 15:18:56.879714','2016-05-08 15:18:56.879714',1,'in','Right Bicep',10.25);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE INDEX "index_routines_on_user_id" ON "routines" ("user_id");
CREATE INDEX "index_exercises_on_user_id" ON "exercises" ("user_id");
CREATE INDEX "index_exercises_on_routine_id" ON "exercises" ("routine_id");
CREATE INDEX "index_exercises_on_sample_exercise_id" ON "exercises" ("sample_exercise_id");
CREATE INDEX "index_exercise_entries_on_exercise_id" ON "exercise_entries" ("exercise_id");
CREATE INDEX "index_exercise_entries_on_user_id" ON "exercise_entries" ("user_id");
CREATE INDEX "index_exercise_entries_on_sample_exercise_id" ON "exercise_entries" ("sample_exercise_id");
CREATE INDEX "index_muscle_measures_on_user_id" ON "muscle_measures" ("user_id");
COMMIT;
