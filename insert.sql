INSERT INTO Client
VALUES (1001,'Haipeng','Cui', '12/04/1983', 'M','BC','Vancouver','Vanness','3660','V5H6R7');
INSERT INTO Client
VALUES (1002,'Bob','Wong', '12/01/1981', 'M','BC','Vancouver','Tea','1234','V5H333');
INSERT INTO Client
VALUES (1003,'Agan','Ji', '09/01/1979', 'F','AB','Asgard','King','1235','66666');
INSERT INTO Client
VALUES (1004,'Xiang','Song', '07/14/1990', 'F','BC','Vancouver','Tea','6660','V5H333');

INSERT INTO Nurse
VALUES (2001,1234,'Shuo','Cui', '1/04/1983', 'M','BC','Vancouver','Vanness','1234','AAA555');
INSERT INTO Nurse
VALUES (2002,5678,'Bob','Sony', '04/01/1981', 'F','BC','Burnaby','Rose','3002','V5H555');
INSERT INTO Nurse
VALUES (2003,2234,'Hoo','Chen', '09/01/1979', 'F','BC','Asgard','Sea','2222','9K2009');
INSERT INTO Nurse
VALUES (2004,2235,'Bob','Frank', '10/23/1966', 'M','BC','Vancouver','Sea','2222','9K2009');
INSERT INTO Nurse
VALUES (2005,2236,'Lei','Lee', '05/12/1975', 'F','BC','Asgard','Sea','2222','9K2009');

INSERT INTO Contract
VALUES (50001,'The client cannot eat food',1001);
INSERT INTO Contract
VALUES (50002,'The client feels cold',1001);
INSERT INTO Contract
VALUES (50003,'The client feels cold',1002);
INSERT INTO Contract
VALUES (50004,'The client feels hot',1002);
INSERT INTO Contract
VALUES (50005,'The client feels sleepy',1003);
INSERT INTO Contract
VALUES (50006,'The client feels tired',1004);

INSERT INTO PreferedSchedule
VALUES ('9:00AM','12:00AM','Mo');
INSERT INTO PreferedSchedule
VALUES ('9:00AM','12:00AM','Tu');
INSERT INTO PreferedSchedule
VALUES ('9:00AM','12:00AM','We');
INSERT INTO PreferedSchedule
VALUES ('9:00AM','12:00AM','Th');
INSERT INTO PreferedSchedule
VALUES ('9:00AM','12:00AM','Fr');

INSERT INTO Contract_Schedule
VALUES (50001,'9:00AM','12:00AM','Mo');
INSERT INTO Contract_Schedule
VALUES (50001,'9:00AM','12:00AM','Tu');
INSERT INTO Contract_Schedule
VALUES (50002,'9:00AM','12:00AM','Mo');
INSERT INTO Contract_Schedule
VALUES (50003,'9:00AM','12:00AM','We');
INSERT INTO Contract_Schedule
VALUES (50004,'9:00AM','12:00AM','Fr');
INSERT INTO Contract_Schedule
VALUES (50005,'9:00AM','12:00AM','Th');
INSERT INTO Contract_Schedule
VALUES (50006,'9:00AM','12:00AM','Th');

INSERT INTO Contract_Nurse
VALUES (50001,2001);
INSERT INTO Contract_Nurse
VALUES (50002,2001);
INSERT INTO Contract_Nurse
VALUES (50003,2001);
INSERT INTO Contract_Nurse
VALUES (50004,2002);
INSERT INTO Contract_Nurse
VALUES (50005,2002);
INSERT INTO Contract_Nurse
VALUES (50006,2003);


INSERT INTO Client_Illness
VALUES (1001,'heart pain');
INSERT INTO Client_Illness
VALUES (1001,'diabetes');
INSERT INTO Client_Illness
VALUES (1002,'diabetes');
INSERT INTO Client_Illness
VALUES (1003,'stroke');
INSERT INTO Client_Illness
VALUES (1004,'heart pain');

INSERT INTO VisitRecord
VALUES (9001,50001,Null,'7/04/2019',2,'Regular','Client is getting worse');
INSERT INTO VisitRecord
VALUES (9002,50001,2003,'7/06/2019',2,'Regular','Client is getting worse');
INSERT INTO VisitRecord
VALUES (9003,50002,2003,'7/06/2019',2,'Regular','Client is getting worse');
INSERT INTO VisitRecord
VALUES (9004,50003,Null,'7/07/2019',2,'Regular','Client is getting better');
INSERT INTO VisitRecord
VALUES (9005,50004,Null,'7/08/2019',2,'Regular','Client is getting worse');
INSERT INTO VisitRecord
VALUES (9006,50005,Null,'7/09/2019',2,'Regular','Client is getting worse');
INSERT INTO VisitRecord
VALUES (9007,50006,Null,'7/10/2019',2,'Addition','Client is getting better');

INSERT INTO EmergencyContact
VALUES (1001,'Tian','Li');
INSERT INTO EmergencyContact
VALUES (1001,'Di','Li');
INSERT INTO EmergencyContact
VALUES (1002,'Fei','Wang');
INSERT INTO EmergencyContact
VALUES (1003,'Chengwu','Jin');
INSERT INTO EmergencyContact
VALUES (1004,'Meimei','Han');

INSERT INTO Client_Phone
VALUES (1001,'7788690832');
INSERT INTO Client_Phone
VALUES (1001,'7788850829');
INSERT INTO Client_Phone
VALUES (1002,'6047185993');
INSERT INTO Client_Phone
VALUES (1003,'778456789');
INSERT INTO Client_Phone
VALUES (1004,'7788850832');

INSERT INTO Emergency_Phone
VALUES (1001,'Tian','Li','778456321');
INSERT INTO Emergency_Phone
VALUES (1001,'Di','Li','604456123');
INSERT INTO Emergency_Phone
VALUES (1002,'Fei','Wang','604777889');
INSERT INTO Emergency_Phone
VALUES (1003,'Chengwu','Jin','778225654');
INSERT INTO Emergency_Phone
VALUES (1004,'Meimei','Han','604222769');