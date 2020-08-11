DROP TABLE DONOR CASCADE CONSTRAINTS;
DROP TABLE RECIPIENT CASCADE CONSTRAINTS;
DROP TABLE DONATION_DETAILS CASCADE CONSTRAINTS;

DROP SEQUENCE donor_sequence; 
DROP SEQUENCE recip_sequence;  
DROP SEQUENCE dondet_sequence; 

create table DONOR
(
	DID number not null primary key,
	Dname varchar2(25),
	Dage number, 
	Dgender varchar2(6),
	Dbloodgroup varchar2(10),
	Darea varchar2(30),
	Daddress varchar2(60),
	Dphonenum varchar2(20),
	Deligibility  varchar2(4)
);
	
Create sequence donor_sequence start with 1
increment by 1
minvalue 1
maxvalue 10000;
	
	
CREATE TABLE RECIPIENT (
	RID number, 
	Rname varchar2(25), 
	Rage number, 
	Rgender varchar2(6), 
	Rbloodgroup char(3), 
	Raddress varchar2(60), 
	Rphonenum varchar2(20), 
	PRIMARY KEY(RID)
); 

Create sequence recip_sequence start with 5001
increment by 1
minvalue 5001
maxvalue 10000;






CREATE TABLE DONATION_DETAILS
(
	DID number,
	donationnumber number, 
	hospital varchar2(100), 
	givenat date,
	RID number,
	heamoglobin number,
	platelets number,
    PRIMARY KEY(donationnumber)	
); 

Create sequence dondet_sequence start with 1001
increment by 1
minvalue 1001
maxvalue 10000;


insert into DONOR values(donor_sequence.nextval,'Arya',20,'Female','AB-','Winterfell','24 Northside','01710000000','Yes');
insert into DONOR values(donor_sequence.nextval,'Sansa',25,'Female','B-','Winterfell','5/4 Kings Landing','01919999999','No');
insert into DONOR values(donor_sequence.nextval,'Farial',22,'Female','A+','Hogsmeade','100 Hufflepuff, Hogwarts', '0167666666','No');
insert into DONOR values(donor_sequence.nextval,'Arony',21,'Female','AB+','Iskaton','67 BNP Office', '01275347688','Yes');
insert into DONOR values(donor_sequence.nextval,'Abir',40,'Male','B+','Mirpur-1','58 Cantonment','420420420420','No');
insert into DONOR values(donor_sequence.nextval,'Sanjana',30,'Female','A+','Rampura','24/5 DIT Road', '123123123123','No');
insert into DONOR values(donor_sequence.nextval,'Sabbir',25,'Male','B-','Mirpur','123 East of Nowhere', '54708653688','No');
insert into DONOR values(donor_sequence.nextval,'Nawar',45,'Female','A-','Tejgaon','7A05 LV Road', '705703706','Yes');
insert into DONOR values(donor_sequence.nextval,'Anindya',32,'Male','O+','Panthapath','98 South Panthapath', '989898989898','No');
insert into DONOR values(donor_sequence.nextval,'Mohua',27,'Female','O-','Farmgate','Farmgate Bridge', '006006006006','No');
insert into DONOR values(donor_sequence.nextval,'Mohia',27,'Male','O-','Farmgate','Farmgate Bridge', '006006006006','Yes');


insert into RECIPIENT values(recip_sequence.nextval, 'Abdullah', 25, 'Male', 'B+','34 Dhanmondi','0123436747'); 
insert into RECIPIENT values(recip_sequence.nextval, 'Samiha', 22, 'Female', 'AB+','6/D Basundhara','367373224');
insert into RECIPIENT values(recip_sequence.nextval, 'Rifat', 35, 'Male', 'AB-','36 Banani','45648585');
insert into RECIPIENT values(recip_sequence.nextval, 'Sabbir', 40, 'Male', 'B-','4/C Mirpur','56658585');
insert into RECIPIENT values(recip_sequence.nextval, 'Sumaya', 21, 'Female', 'O+','3-B Gulshan','23425266');
insert into RECIPIENT values(recip_sequence.nextval, 'Oishy', 27, 'Female', 'A+','3 Rampura','567567557');
insert into RECIPIENT values(recip_sequence.nextval, 'Obonti', 32, 'Female', 'A+','45 B Badda','1225366666');
insert into RECIPIENT values(recip_sequence.nextval, 'Sami', 38, 'Male', 'A-','14/D Uttara','68696968');
insert into RECIPIENT values(recip_sequence.nextval, 'Siam', 45, 'Male', 'O-','C 3 Khilgaon','3453647768');
insert into RECIPIENT values(recip_sequence.nextval, 'Nayem', 20, 'Male', 'B-','5/D Shantinagar','253647768');




insert into DONATION_DETAILS (DID, donationnumber, hospital,  givenat,RID,heamoglobin,platelets) values (1, dondet_sequence.nextval, 'Ad-Din Hospital', TO_DATE('2018-02-03','yyyy/mm/dd'),5003, 14, 55); 
insert into DONATION_DETAILS (DID, donationnumber, hospital,  givenat,RID,heamoglobin,platelets) values (2, dondet_sequence.nextval, 'Shahid Suhrawardy Hospital', TO_DATE('2015-11-22','yyyy/mm/dd'),5004, 15, 52); 
insert into DONATION_DETAILS (DID, donationnumber, hospital,  givenat,RID,heamoglobin,platelets) values (3, dondet_sequence.nextval, 'Al- Helal Speacialist Hospital', TO_DATE('2010-1-10','yyyy/mm/dd'),5006, 16, 56); 
insert into DONATION_DETAILS (DID, donationnumber, hospital,  givenat,RID,heamoglobin,platelets) values (4, dondet_sequence.nextval, 'Appolo Hospital', TO_DATE('2014-2-14','yyyy/mm/dd'),5002, 18, 59); 
insert into DONATION_DETAILS (DID, donationnumber, hospital,  givenat,RID,heamoglobin,platelets) values (5, dondet_sequence.nextval, 'Bangabandhu Shiekh Mujib Medical University', TO_DATE('2015-4-16','yyyy/mm/dd'),5001, 14, 45); 
insert into DONATION_DETAILS (DID, donationnumber, hospital,  givenat,RID,heamoglobin,platelets) values (6, dondet_sequence.nextval, 'Bangladesh Heart and Chest Hospital', TO_DATE('2012-11-5','yyyy/mm/dd'),5007, 17, 61); 
insert into DONATION_DETAILS (DID, donationnumber, hospital,  givenat,RID,heamoglobin,platelets) values (7, dondet_sequence.nextval, 'Bangladesh Medical College',  TO_DATE('2018-1-21','yyyy/mm/dd'),5010, 15, 49); 
insert into DONATION_DETAILS (DID, donationnumber, hospital,  givenat,RID,heamoglobin,platelets) values (8, dondet_sequence.nextval, 'Central Hospital Ltd.',  TO_DATE('2016-9-13','yyyy/mm/dd'),5008, 10, 65); 
insert into DONATION_DETAILS (DID, donationnumber, hospital,  givenat,RID,heamoglobin,platelets) values (9, dondet_sequence.nextval, 'Islami Bank Hospital',  TO_DATE('2017-6-27','yyyy/mm/dd'),5005, 12, 50); 
insert into DONATION_DETAILS (DID, donationnumber, hospital,  givenat,RID,heamoglobin,platelets) values (10,dondet_sequence.nextval, 'City Hospital Ltd',  TO_DATE('2017-10-4','yyyy/mm/dd'),5009, 14, 55); 
insert into DONATION_DETAILS (DID, donationnumber, hospital,  givenat,RID,heamoglobin,platelets) values (3,dondet_sequence.nextval, 'City Hospital Ltd', TO_DATE('2017-10-4','yyyy/mm/dd'),5009, 14, 55); 

