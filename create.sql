CREATE TABLE Client (
 ClientInsuranceNumber INT,
 FName VARCHAR(15),
 LName VARCHAR(15),
 DOB DATE,
 Gender CHAR(1),
 Province CHAR(2),
 City VARCHAR(15),
 Street VARCHAR(15),
 BuildingNumber VARCHAR(15),
 ZipCode CHAR(6),
 PRIMARY KEY (ClientInsuranceNumber) 
 );
 
 CREATE TABLE Nurse (
 EID INT,
 MRNNUMBER INT,
 FName VARCHAR(15),
 LName VARCHAR(15),
 DOB DATE,
 Gender CHAR(1),
 Province CHAR(2),
 City VARCHAR(15),
 Street VARCHAR(15),
 BuildingNumber VARCHAR(15),
 ZipCode CHAR(6),
 PRIMARY KEY (EID) 
 );

CREATE TABLE Contract (
 ContractID INT,
 AdditionalDetails VARCHAR(50),
 ClientInsuranceNumber INT NOT NULL,
 PRIMARY KEY (ContractID),
 FOREIGN KEY (ClientInsuranceNumber) REFERENCES Client(ClientInsuranceNumber) ON DELETE SET NULL
 );

CREATE TABLE PreferedSchedule(
  StartTime VARCHAR(10),
  EndTime VARCHAR(10),
  WeekDays VARCHAR(10),
  PRIMARY KEY (StartTime, EndTime, WeekDays)
);

CREATE TABLE VisitRecord (
 RecordID INT,
 ContractID INT NOT NULL,
 SubsituteEID INT,
 VisitDate DATE NOT NULL,
 Hours INT,
 TypeOfService VARCHAR(50),
 IllnessDescription VARCHAR(50),
 PRIMARY KEY (RecordID),
 FOREIGN KEY (SubsituteEID) REFERENCES Nurse(EID) ON DELETE SET NULL,
 FOREIGN KEY (ContractID) REFERENCES Contract(ContractID) ON DELETE SET NULL
 );
 
 CREATE TABLE EmergencyContact (
 ClientInsuranceNumber INT,
 FName VARCHAR2(15),
 LName VARCHAR2(15),
 PRIMARY KEY (ClientInsuranceNumber,LName,FName),
 FOREIGN KEY (ClientInsuranceNumber) REFERENCES Client(ClientInsuranceNumber)
 );
 
 CREATE TABLE Client_Phone (
 ClientInsuranceNumber INT,
 PhoneNumber VARCHAR2(15),
 PRIMARY KEY (ClientInsuranceNumber,PhoneNumber),
 FOREIGN KEY (ClientInsuranceNumber) REFERENCES Client(ClientInsuranceNumber)
 );
 
 CREATE TABLE Emergency_Phone (
 ClientInsuranceNumber INT,
 FName VARCHAR2(15),
 LName VARCHAR2(15),
 PhoneNumber VARCHAR2(15),
 PRIMARY KEY (ClientInsuranceNumber,FName,LName,PhoneNumber),
 FOREIGN KEY (ClientInsuranceNumber,FName,LName) REFERENCES EmergencyContact(ClientInsuranceNumber,FName,LName) 
 );
 
 CREATE TABLE Client_Illness (
 ClientInsuranceNumber INT,
 Illness VARCHAR2(50),
 PRIMARY KEY (ClientInsuranceNumber,Illness),
 FOREIGN KEY (ClientInsuranceNumber) REFERENCES Client(ClientInsuranceNumber) 
 );
 
 CREATE TABLE Contract_Schedule(
 ContractID INT,
 StartTime VARCHAR(10),
 EndTime VARCHAR(10),
 WeekDays VARCHAR(10),
 PRIMARY KEY (ContractID,StartTime,EndTime,WeekDays),
 FOREIGN KEY (ContractID) REFERENCES Contract(ContractID),
 FOREIGN KEY (StartTime,EndTime,WeekDays) REFERENCES PreferedSchedule(StartTime,EndTime,WeekDays)
 );
 
 CREATE TABLE Contract_Nurse (
 ContractID INT,
 EID INT,
 PRIMARY KEY(ContractID,EID),
 FOREIGN KEY(ContractID) REFERENCES Contract(ContractID),
 FOREIGN KEY (EID) REFERENCES Nurse(EID)
);