PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20120927235921');
INSERT INTO "schema_migrations" VALUES('20121002141711');
INSERT INTO "schema_migrations" VALUES('20121031225624');
INSERT INTO "schema_migrations" VALUES('20130530200819');
INSERT INTO "schema_migrations" VALUES('20130619203409');
INSERT INTO "schema_migrations" VALUES('20130620001009');
INSERT INTO "schema_migrations" VALUES('20130620004451');
INSERT INTO "schema_migrations" VALUES('20130620005252');
INSERT INTO "schema_migrations" VALUES('20130620213725');
INSERT INTO "schema_migrations" VALUES('20130620214331');
INSERT INTO "schema_migrations" VALUES('20130620222705');
INSERT INTO "schema_migrations" VALUES('20130626173839');
INSERT INTO "schema_migrations" VALUES('20130626233905');
INSERT INTO "schema_migrations" VALUES('20130627005030');
INSERT INTO "schema_migrations" VALUES('20130710194822');
INSERT INTO "schema_migrations" VALUES('20130711220642');
INSERT INTO "schema_migrations" VALUES('20130711221605');
INSERT INTO "schema_migrations" VALUES('20130711225905');
INSERT INTO "schema_migrations" VALUES('20130712224145');
INSERT INTO "schema_migrations" VALUES('20130712224835');
INSERT INTO "schema_migrations" VALUES('20130717235109');
INSERT INTO "schema_migrations" VALUES('20130717235335');
INSERT INTO "schema_migrations" VALUES('20130718000312');
INSERT INTO "schema_migrations" VALUES('20130718011007');
INSERT INTO "schema_migrations" VALUES('20130723000100');
INSERT INTO "schema_migrations" VALUES('20130723191209');
INSERT INTO "schema_migrations" VALUES('20130725002422');
INSERT INTO "schema_migrations" VALUES('20130730201606');
INSERT INTO "schema_migrations" VALUES('20130802194037');
INSERT INTO "schema_migrations" VALUES('20130904211407');
CREATE TABLE "teams" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "sets_played" integer, "wins" integer, "losses" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "teams" VALUES(8,'Mario Karters',0,0,0,'2013-06-19 23:14:13.935980','2013-09-05 23:04:38.061887');
INSERT INTO "teams" VALUES(9,'Jabbonga',NULL,NULL,NULL,'2013-06-27 00:38:58.220711','2013-06-27 00:38:58.220711');
INSERT INTO "teams" VALUES(10,'Generations',NULL,NULL,NULL,'2013-07-13 00:20:03.806840','2013-09-05 23:05:26.257021');
INSERT INTO "teams" VALUES(11,'Fireballers',NULL,NULL,NULL,'2013-07-18 19:57:58.610409','2013-09-16 17:29:50.143416');
INSERT INTO "teams" VALUES(12,'Chvas',NULL,NULL,NULL,'2013-07-18 19:59:52.701409','2013-09-05 23:06:53.051316');
INSERT INTO "teams" VALUES(13,'In Your Face',NULL,NULL,NULL,'2013-07-18 20:00:59.596147','2013-09-05 23:07:33.349405');
INSERT INTO "teams" VALUES(14,'Pancakes',NULL,NULL,NULL,'2013-07-18 20:03:22.187482','2013-09-05 23:08:16.745847');
INSERT INTO "teams" VALUES(15,'Spike',NULL,NULL,NULL,'2013-07-18 20:03:48.686185','2013-09-05 23:09:03.043429');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar(255) DEFAULT '' NOT NULL, "encrypted_password" varchar(255) DEFAULT '' NOT NULL, "reset_password_token" varchar(255), "reset_password_sent_at" datetime, "remember_created_at" datetime, "sign_in_count" integer DEFAULT 0, "current_sign_in_at" datetime, "last_sign_in_at" datetime, "current_sign_in_ip" varchar(255), "last_sign_in_ip" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "first_name" varchar(255), "last_name" varchar(255), "display_name" varchar(255));
INSERT INTO "users" VALUES(1,'michael.taliao@gmail.com','$2a$10$55oVSHxJllI2fn7hzaUjKuQc7LwelYxcsbWFlIpcT5y.C5y1YscWu',NULL,NULL,NULL,9,'2013-07-19 19:03:45.226420','2013-07-01 20:55:44.223549','127.0.0.1','127.0.0.1','2013-06-19 22:46:58.270253','2013-07-19 19:03:45.229146',NULL,NULL,NULL);
INSERT INTO "users" VALUES(2,'mikko@test.com','$2a$10$L5CuXS5Eck1XrL7ezLoYkeOPsM7z9RQY0Oo65sWTdjU.M41qwnCfC',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-06-27 00:08:45.730453','2013-06-27 00:08:45.730453',NULL,NULL,NULL);
INSERT INTO "users" VALUES(3,'user1@test.com','$2a$10$UlfjZmoutbeFfJtYapjuwuvztBU31f8KFI.1JH3/fFQofa3i2Y9rO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-06-27 00:24:57.353657','2013-06-27 00:24:57.353657',NULL,NULL,NULL);
INSERT INTO "users" VALUES(4,'user2@test.com','$2a$10$V4AHlQeRdDzVOOJTZWRN4OeqTpKtfG/UcfYipzsPGfElvflrElvrO',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-06-27 00:24:57.758148','2013-06-27 00:24:57.758148',NULL,NULL,NULL);
INSERT INTO "users" VALUES(5,'user3@test.com','$2a$10$Seyfpgx6d9REtfe2S2e9keXxrITdc8tL1mp21NFeCtlV58J6GxSWK',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-06-27 00:24:58.155303','2013-06-27 00:24:58.155303',NULL,NULL,NULL);
INSERT INTO "users" VALUES(6,'user4@test.com','$2a$10$m1zc46ZZWsPR03f7buJWb.U/MoKTi88d6Rx7DfEb0C4B6yjbelONS',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-06-27 00:24:58.581559','2013-06-27 00:24:58.581559',NULL,NULL,NULL);
INSERT INTO "users" VALUES(7,'user5@test.com','$2a$10$rDifMUE1F0b4o95UNpc2/ONdBMjForbZA22RYnXPZGdsapwyuqUt6',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-06-27 00:24:59.056425','2013-06-27 00:24:59.056425',NULL,NULL,NULL);
INSERT INTO "users" VALUES(8,'user6@test.com','$2a$10$2bpcAgFEkUcqsSeS/YP3IO7D09RHFP1u1kPD7/ocFXYBtwOb3hNOm',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-06-27 00:24:59.456592','2013-06-27 00:24:59.456592',NULL,NULL,NULL);
INSERT INTO "users" VALUES(9,'user7@test.com','$2a$10$edsKjMqxEBoCUkkBo1XLj.9f7M2KKIj9ZOhxkHgKuXgWTb9Gvdaei',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-06-27 00:24:59.853841','2013-06-27 00:24:59.853841',NULL,NULL,NULL);
INSERT INTO "users" VALUES(10,'user8@test.com','$2a$10$AQpQHWtmvKbndmg5GbbTT.bB0fpdyrJKjkYk4cSCZSo3Z98sWdaR2',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-06-27 00:25:00.257106','2013-06-27 00:25:00.257106',NULL,NULL,NULL);
INSERT INTO "users" VALUES(11,'user9@test.com','$2a$10$1uRS3L4KJfMqBhbenXkXseMeR9mim4J5Iy2Uz/zjxe3tqfAOPQsJe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-06-27 00:25:00.658410','2013-06-27 00:25:00.658410',NULL,NULL,NULL);
INSERT INTO "users" VALUES(12,'user10@test.com','$2a$10$je844MK/ObO6f6JqrXnl/OMEHgUjwDCzmGGvLg9iBkcFGRB5jFjES',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2013-06-27 00:25:01.054316','2013-06-27 00:25:01.054316',NULL,NULL,NULL);
CREATE TABLE "timeslots" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "season_id" int);
INSERT INTO "timeslots" VALUES(1,'7:00pm','2013-06-20 00:58:22.520585','2013-07-30 20:35:34.663835',2);
INSERT INTO "timeslots" VALUES(2,'8:00pm','2013-07-30 20:35:55.761537','2013-07-30 20:39:24.147792',2);
INSERT INTO "timeslots" VALUES(3,'7:00pm','2013-09-09 20:59:47.738012','2013-09-09 21:01:32.130633',3);
INSERT INTO "timeslots" VALUES(4,'8:00pm','2013-09-09 21:01:47.929495','2013-09-09 21:02:36.926721',3);
CREATE TABLE "seasons" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "start" date, "end" date, "frequency" varchar(255), "number_of_courts" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "league_name" varchar(255), "number_of_timeslots" int);
INSERT INTO "seasons" VALUES(1,'Spring','2013-03-16','2013-05-28','Wednesday',1,'2013-06-27 00:26:24.779903','2013-07-10 20:02:44.360433','Meeks Volleybal',NULL);
INSERT INTO "seasons" VALUES(2,'Summer','2013-05-28','2013-08-06','Tuesday',2,'2013-06-27 00:37:07.225465','2013-08-01 01:35:23.713087','Oz Park',2);
INSERT INTO "seasons" VALUES(3,'Fall','2013-09-17','2013-12-03','Tuesday',2,'2013-07-01 19:40:57.435338','2013-09-16 17:27:10.353742','Oz Park',2);
CREATE TABLE "season_team_users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "season_team_id" integer, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "season_team_users" VALUES(1,12,1,'2013-07-13 00:30:08.478035','2013-07-13 00:34:03.648981');
INSERT INTO "season_team_users" VALUES(2,11,2,'2013-07-16 19:40:06.713015','2013-07-16 19:45:28.191226');
INSERT INTO "season_team_users" VALUES(3,11,3,'2013-07-16 19:46:08.288282','2013-07-16 19:48:27.580060');
INSERT INTO "season_team_users" VALUES(4,12,4,'2013-07-16 19:48:57.977516','2013-07-16 19:50:27.872040');
INSERT INTO "season_team_users" VALUES(5,12,5,'2013-07-16 19:51:57.067674','2013-07-16 19:55:28.753596');
INSERT INTO "season_team_users" VALUES(6,12,6,'2013-07-16 19:58:14.943786','2013-07-16 20:00:47.834101');
INSERT INTO "season_team_users" VALUES(7,13,7,'2013-07-16 20:01:34.331058','2013-07-16 20:04:53.518803');
INSERT INTO "season_team_users" VALUES(8,13,8,'2013-07-16 20:05:05.017958','2013-07-16 20:11:25.094206');
INSERT INTO "season_team_users" VALUES(9,13,9,'2013-07-16 20:15:50.478405','2013-07-16 20:18:16.469206');
INSERT INTO "season_team_users" VALUES(10,1,10,'2013-07-16 20:22:10.055499','2013-07-16 20:27:16.735773');
INSERT INTO "season_team_users" VALUES(11,1,1,'2013-07-16 20:27:43.934076','2013-07-16 20:29:45.626332');
INSERT INTO "season_team_users" VALUES(12,1,2,'2013-07-16 20:30:42.223532','2013-07-16 20:32:05.217676');
INSERT INTO "season_team_users" VALUES(13,10,4,'2013-07-16 20:32:22.117634','2013-07-16 20:35:15.205965');
INSERT INTO "season_team_users" VALUES(14,10,5,'2013-07-16 20:36:09.002713','2013-07-16 20:37:32.898748');
INSERT INTO "season_team_users" VALUES(15,10,11,'2013-07-16 20:37:42.198193','2013-07-16 20:39:23.690530');
INSERT INTO "season_team_users" VALUES(16,14,11,'2013-07-16 20:46:47.263457','2013-07-16 20:54:19.336008');
INSERT INTO "season_team_users" VALUES(17,14,12,'2013-07-16 21:13:10.992277','2013-07-16 21:15:44.283393');
INSERT INTO "season_team_users" VALUES(18,14,9,'2013-07-16 21:16:45.079240','2013-07-16 21:18:32.373445');
INSERT INTO "season_team_users" VALUES(19,15,4,'2013-07-16 21:18:41.572146','2013-07-16 21:19:47.667577');
INSERT INTO "season_team_users" VALUES(20,15,5,'2013-07-16 21:19:54.468177','2013-07-16 21:21:16.362332');
INSERT INTO "season_team_users" VALUES(21,15,6,'2013-07-16 21:21:34.862203','2013-07-16 21:22:38.857819');
CREATE TABLE "season_teams" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "season_id" integer, "team_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "season_teams" VALUES(1,3,8,'2013-06-27 01:04:27.730408','2013-09-05 23:23:02.196112');
INSERT INTO "season_teams" VALUES(10,2,9,'2013-06-27 01:43:55.693487','2013-06-27 01:43:55.693487');
INSERT INTO "season_teams" VALUES(11,1,8,'2013-07-13 00:11:11.380615','2013-07-13 00:18:44.107918');
INSERT INTO "season_teams" VALUES(12,1,10,'2013-07-13 00:25:56.580214','2013-07-13 00:29:23.966704');
INSERT INTO "season_teams" VALUES(13,1,9,'2013-07-16 19:33:53.035512','2013-07-16 19:36:15.925064');
INSERT INTO "season_teams" VALUES(14,3,10,'2013-07-16 20:44:01.174131','2013-07-16 20:45:25.568009');
INSERT INTO "season_teams" VALUES(15,3,9,'2013-07-16 20:45:35.767741','2013-07-16 20:46:38.264201');
INSERT INTO "season_teams" VALUES(16,2,10,'2013-07-22 23:22:34.774155','2013-07-22 23:23:54.967077');
INSERT INTO "season_teams" VALUES(17,2,11,'2013-07-22 23:24:02.167584','2013-07-22 23:24:54.563876');
INSERT INTO "season_teams" VALUES(18,2,12,'2013-07-22 23:24:59.962682','2013-07-22 23:25:37.060530');
INSERT INTO "season_teams" VALUES(19,2,13,'2013-07-22 23:25:43.160272','2013-07-22 23:26:39.656343');
INSERT INTO "season_teams" VALUES(20,2,14,'2013-07-22 23:27:01.155411','2013-07-22 23:27:46.852390');
INSERT INTO "season_teams" VALUES(21,2,15,'2013-07-22 23:30:03.744459','2013-07-22 23:32:32.835418');
INSERT INTO "season_teams" VALUES(22,12,NULL,'2013-09-06 19:08:32.803977','2013-09-06 19:10:16.197289');
INSERT INTO "season_teams" VALUES(23,3,13,'2013-09-06 19:10:29.396284','2013-09-06 19:11:28.691899');
INSERT INTO "season_teams" VALUES(24,3,12,'2013-09-06 19:11:39.492346','2013-09-06 19:21:54.654935');
INSERT INTO "season_teams" VALUES(25,3,11,'2013-09-06 19:14:26.481739','2013-09-06 19:15:29.578129');
CREATE TABLE "games" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "match_id" integer, "teamA_score" integer, "teamB_score" integer, "sequence_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "matches" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "date" datetime, "court" integer, "timeslot_id" integer, "winner" integer, "season_id" integer, "season_home_team_id" integer, "season_away_team_id" integer, "game_id" int);
INSERT INTO "matches" VALUES(709,'2013-09-16 17:41:01.439803','2013-09-16 17:42:55.260302','---
- 2013-09-17
- 3
- 1
- 3
',1,3,NULL,3,1,24,NULL);
INSERT INTO "matches" VALUES(710,'2013-09-16 17:41:01.455995','2013-09-16 17:42:55.294499','---
- 2013-09-17
- 3
- 2
- 3
',2,3,NULL,3,25,23,NULL);
INSERT INTO "matches" VALUES(711,'2013-09-16 17:41:01.502749','2013-09-16 17:42:55.302018','---
- 2013-09-17
- 4
- 1
- 3
',1,4,NULL,3,14,15,NULL);
INSERT INTO "matches" VALUES(712,'2013-09-16 17:41:01.508162','2013-09-16 17:42:55.310296','---
- 2013-09-17
- 4
- 2
- 3
',2,4,NULL,3,1,23,NULL);
INSERT INTO "matches" VALUES(713,'2013-09-16 17:41:01.605141','2013-09-16 17:42:55.394983','---
- 2013-09-24
- 3
- 1
- 3
',1,3,NULL,3,24,15,NULL);
INSERT INTO "matches" VALUES(714,'2013-09-16 17:41:01.610322','2013-09-16 17:42:55.402537','---
- 2013-09-24
- 3
- 2
- 3
',2,3,NULL,3,25,14,NULL);
INSERT INTO "matches" VALUES(715,'2013-09-16 17:41:01.703312','2013-09-16 17:42:55.410298','---
- 2013-09-24
- 4
- 1
- 3
',1,4,NULL,3,1,15,NULL);
INSERT INTO "matches" VALUES(716,'2013-09-16 17:41:01.708835','2013-09-16 17:42:55.494895','---
- 2013-09-24
- 4
- 2
- 3
',2,4,NULL,3,23,14,NULL);
INSERT INTO "matches" VALUES(717,'2013-09-16 17:41:01.803661','2013-09-16 17:42:55.502424','---
- 2013-10-01
- 3
- 1
- 3
',1,3,NULL,3,24,25,NULL);
INSERT INTO "matches" VALUES(718,'2013-09-16 17:41:01.808953','2013-09-16 17:42:55.512095','---
- 2013-10-01
- 3
- 2
- 3
',2,3,NULL,3,1,14,NULL);
INSERT INTO "matches" VALUES(719,'2013-09-16 17:41:01.903299','2013-09-16 17:42:55.595250','---
- 2013-10-01
- 4
- 1
- 3
',1,4,NULL,3,15,25,NULL);
INSERT INTO "matches" VALUES(720,'2013-09-16 17:41:01.908620','2013-09-16 17:42:55.602829','---
- 2013-10-01
- 4
- 2
- 3
',2,4,NULL,3,23,24,NULL);
INSERT INTO "matches" VALUES(721,'2013-09-16 17:41:02.003598','2013-09-16 17:42:55.610770','---
- 2013-10-08
- 3
- 1
- 3
',1,3,NULL,3,1,25,NULL);
INSERT INTO "matches" VALUES(722,'2013-09-16 17:41:02.008839','2013-09-16 17:42:55.695466','---
- 2013-10-08
- 3
- 2
- 3
',2,3,NULL,3,14,24,NULL);
INSERT INTO "matches" VALUES(723,'2013-09-16 17:41:02.102946','2013-09-16 17:42:55.703172','---
- 2013-10-08
- 4
- 1
- 3
',1,4,NULL,3,15,23,NULL);
INSERT INTO "matches" VALUES(724,'2013-09-16 17:41:02.108083','2013-09-16 17:42:55.754266','---
- 2013-10-08
- 4
- 2
- 3
',2,4,NULL,3,1,24,NULL);
INSERT INTO "matches" VALUES(725,'2013-09-16 17:41:02.204015','2013-09-16 17:42:55.794497','---
- 2013-10-15
- 3
- 1
- 3
',1,3,NULL,3,25,23,NULL);
INSERT INTO "matches" VALUES(726,'2013-09-16 17:41:02.209111','2013-09-16 17:42:55.800577','---
- 2013-10-15
- 3
- 2
- 3
',2,3,NULL,3,14,15,NULL);
INSERT INTO "matches" VALUES(727,'2013-09-16 17:41:02.303398','2013-09-16 17:42:55.806038','---
- 2013-10-15
- 4
- 1
- 3
',1,4,NULL,3,1,23,NULL);
INSERT INTO "matches" VALUES(728,'2013-09-16 17:41:02.308403','2013-09-16 17:42:55.894208','---
- 2013-10-15
- 4
- 2
- 3
',2,4,NULL,3,24,15,NULL);
INSERT INTO "matches" VALUES(729,'2013-09-16 17:41:02.413909','2013-09-16 17:42:55.900619','---
- 2013-10-22
- 3
- 1
- 3
',1,3,NULL,3,25,14,NULL);
INSERT INTO "matches" VALUES(730,'2013-09-16 17:41:02.420349','2013-09-16 17:42:55.905710','---
- 2013-10-22
- 3
- 2
- 3
',2,3,NULL,3,1,15,NULL);
INSERT INTO "matches" VALUES(731,'2013-09-16 17:41:02.503352','2013-09-16 17:42:55.994440','---
- 2013-10-22
- 4
- 1
- 3
',1,4,NULL,3,23,14,NULL);
INSERT INTO "matches" VALUES(732,'2013-09-16 17:41:02.508297','2013-09-16 17:42:56.000449','---
- 2013-10-22
- 4
- 2
- 3
',2,4,NULL,3,24,25,NULL);
INSERT INTO "matches" VALUES(733,'2013-09-16 17:41:02.618968','2013-09-16 17:42:56.006389','---
- 2013-10-29
- 3
- 1
- 3
',1,3,NULL,3,1,14,NULL);
INSERT INTO "matches" VALUES(734,'2013-09-16 17:41:02.623609','2013-09-16 17:42:56.095101','---
- 2013-10-29
- 3
- 2
- 3
',2,3,NULL,3,15,25,NULL);
INSERT INTO "matches" VALUES(735,'2013-09-16 17:41:02.703163','2013-09-16 17:42:56.101420','---
- 2013-10-29
- 4
- 1
- 3
',1,4,NULL,3,23,24,NULL);
INSERT INTO "matches" VALUES(736,'2013-09-16 17:41:02.708699','2013-09-16 17:42:56.107032','---
- 2013-10-29
- 4
- 2
- 3
',2,4,NULL,3,1,25,NULL);
INSERT INTO "matches" VALUES(737,'2013-09-16 17:41:02.802894','2013-09-16 17:42:56.194340','---
- 2013-11-05
- 3
- 1
- 3
',1,3,NULL,3,14,24,NULL);
INSERT INTO "matches" VALUES(738,'2013-09-16 17:41:02.808279','2013-09-16 17:42:56.201022','---
- 2013-11-05
- 3
- 2
- 3
',2,3,NULL,3,15,23,NULL);
INSERT INTO "matches" VALUES(739,'2013-09-16 17:41:02.903113','2013-09-16 17:42:56.206600','---
- 2013-11-05
- 4
- 1
- 3
',1,4,NULL,3,1,24,NULL);
INSERT INTO "matches" VALUES(740,'2013-09-16 17:41:02.908289','2013-09-16 17:42:56.294255','---
- 2013-11-05
- 4
- 2
- 3
',2,4,NULL,3,25,23,NULL);
INSERT INTO "matches" VALUES(741,'2013-09-16 17:41:03.002936','2013-09-16 17:42:56.300609','---
- 2013-11-12
- 3
- 1
- 3
',1,3,NULL,3,14,15,NULL);
INSERT INTO "matches" VALUES(742,'2013-09-16 17:41:03.008021','2013-09-16 17:42:56.305796','---
- 2013-11-12
- 3
- 2
- 3
',2,3,NULL,3,1,23,NULL);
INSERT INTO "matches" VALUES(743,'2013-09-16 17:41:03.102818','2013-09-16 17:42:56.393963','---
- 2013-11-12
- 4
- 1
- 3
',1,4,NULL,3,24,15,NULL);
INSERT INTO "matches" VALUES(744,'2013-09-16 17:41:03.108072','2013-09-16 17:42:56.400984','---
- 2013-11-12
- 4
- 2
- 3
',2,4,NULL,3,25,14,NULL);
INSERT INTO "matches" VALUES(745,'2013-09-16 17:41:03.202887','2013-09-16 17:42:56.406064','---
- 2013-11-19
- 3
- 1
- 3
',1,3,NULL,3,1,15,NULL);
INSERT INTO "matches" VALUES(746,'2013-09-16 17:41:03.207940','2013-09-16 17:42:56.494550','---
- 2013-11-19
- 3
- 2
- 3
',2,3,NULL,3,23,14,NULL);
INSERT INTO "matches" VALUES(747,'2013-09-16 17:41:03.302898','2013-09-16 17:42:56.500937','---
- 2013-11-19
- 4
- 1
- 3
',1,4,NULL,3,24,25,NULL);
INSERT INTO "matches" VALUES(748,'2013-09-16 17:41:03.308097','2013-09-16 17:42:56.506273','---
- 2013-11-19
- 4
- 2
- 3
',2,4,NULL,3,1,14,NULL);
INSERT INTO "matches" VALUES(749,'2013-09-16 17:41:03.402927','2013-09-16 17:42:56.594328','---
- 2013-11-26
- 3
- 1
- 3
',1,3,NULL,3,15,25,NULL);
INSERT INTO "matches" VALUES(750,'2013-09-16 17:41:03.408355','2013-09-16 17:42:56.600610','---
- 2013-11-26
- 3
- 2
- 3
',2,3,NULL,3,23,24,NULL);
INSERT INTO "matches" VALUES(751,'2013-09-16 17:41:03.502809','2013-09-16 17:42:56.605893','---
- 2013-11-26
- 4
- 1
- 3
',1,4,NULL,3,1,25,NULL);
INSERT INTO "matches" VALUES(752,'2013-09-16 17:41:03.508022','2013-09-16 17:42:56.693997','---
- 2013-11-26
- 4
- 2
- 3
',2,4,NULL,3,14,24,NULL);
INSERT INTO "matches" VALUES(753,'2013-09-16 17:41:03.603389','2013-09-16 17:42:56.700104','---
- 2013-12-03
- 3
- 1
- 3
',1,3,NULL,3,15,23,NULL);
INSERT INTO "matches" VALUES(754,'2013-09-16 17:41:03.609396','2013-09-16 17:42:56.705665','---
- 2013-12-03
- 3
- 2
- 3
',2,3,NULL,3,1,24,NULL);
INSERT INTO "matches" VALUES(755,'2013-09-16 17:41:03.702849','2013-09-16 17:42:56.794171','---
- 2013-12-03
- 4
- 1
- 3
',1,4,NULL,3,25,23,NULL);
INSERT INTO "matches" VALUES(756,'2013-09-16 17:41:03.708435','2013-09-16 17:42:56.800250','---
- 2013-12-03
- 4
- 2
- 3
',2,4,NULL,3,14,15,NULL);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('teams',15);
INSERT INTO "sqlite_sequence" VALUES('users',12);
INSERT INTO "sqlite_sequence" VALUES('timeslots',4);
INSERT INTO "sqlite_sequence" VALUES('seasons',7);
INSERT INTO "sqlite_sequence" VALUES('season_teams',26);
INSERT INTO "sqlite_sequence" VALUES('season_team_users',21);
INSERT INTO "sqlite_sequence" VALUES('matches',756);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
COMMIT;