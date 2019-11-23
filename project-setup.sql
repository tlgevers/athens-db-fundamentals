create table Bill(
    clId varchar(25) not null,
    billNo float default 0,
    billdate date default null,
    amountBilled float default 0
);

create table Charge(
    jobNo varchar(25) not null,
    chargedate date default null,
    daysWorked int default 0,
    amountCharged float default 0,
    billNo int
);

create table Client(
    clId varchar(25) not null,
    clFname varchar(50) default null,
    clMinit varchar(50) default null,
    clLName varchar(50) default null,
    clStreet1 varchar(50) default null,
    clStreet2 varchar(50) default null,
    clCity varchar(50) default null,
    clZip int default null,
    clPhone varchar(12) default null,
    contactPerson varchar(50) default null
);

-- insert into Client(clId, clFname, clMinit, clLName, clStreet1, clStreet2, clCity, clZip, clPhone, contactPerson) values
insert into Client values("0224B75C","Sasha","Uma","Leon","Ap #997-9848 Purus Road","Ap #309-5442 Mauris St.","Regina",10515,"813-189-8143","Cheryl Pugh");
insert into Client values("5E49FAFF","Madeline","Fallon","Cherry","839-2141 Massa. Road","P.O. Box 549,1031 Tortor Road","Ellikom",11980,"222-864-2598","Yasir W. Klein");
insert into Client values("13F0B354","Kai","Sacha","Pate","P.O. Box 572,4718 Blandit. Avenue","990-1053 Etiam St.","Geertruidenberg",15951,"574-362-6289","Hasad L. House");
insert into Client values("512BBFBA","Charles","Alec","Murray","P.O. Box 200,2430 Nec St.","P.O. Box 384,8475 Auctor Rd.","Mataró",17768,"538-744-9373","Lillian Haynes");
insert into Client values("98E66AF0","Todd","Clementine","Lowery","P.O. Box 493,4554 Id Rd.","1832 At St.","Roxburgh",25646,"909-706-7082","Sawyer F. Keith");
insert into Client values("2B84ED7F","Cheryl","Elmo","Golden","P.O. Box 814,8010 Ante Ave","645-9912 Mattis Road","Monte Patria",27080,"625-639-3938","Chiquita Jimenez");
insert into Client values("A7C9A313","Lucas","Wesley","Houston","5365 Natoque Street","127-4199 Cras Road","Grand Rapids",27953,"427-264-4336","Uriah Hill");
insert into Client values("CE8DF959","Robin","Kessie","Gilliam","Ap #468-7085 Curabitur St.","3473 Erat St.","Sennariolo",31096,"919-688-4923","Nash S. Richardson");
insert into Client values("8981F371","Aladdin","Cullen","Sargent","1500 Lectus. St.","P.O. Box 692,6034 Mattis Rd.","Palayankottai",31374,"927-484-7185","Barrett Turner");
insert into Client values("D0260322","Castor","Lynn","Moreno","P.O. Box 185,3908 Pharetra St.","P.O. Box 737,4611 Nulla. St.","Wolfurt",31504,"822-890-2967","Orlando J. Franklin");

create table Evaluation(
        jobNo int(10),
        evaldate date default null,
        raterName varchar(50) default null,
        rating int default 0,
        comment varchar(250)
);

create table interviewFor(
    jobNo int(10) not null,
    wId varchar(50) default null,
    date date default null,
    outcome "hired"
);

create table JobDaysNeeded(
    jobNo int(10) not null,
    day text,
    startTime int,
    endTime int 
);

create table JobSkills(
    jobNo int(10) not null,
    skillName text,
    skillLevel text
);

create table Jobs(
    clId varchar(25),
    wid varchar(25),
    jobNo int(10),
    title text,
    level text,
    payRate float,
    DesiredStartdate datetime,
    DesiredEnddate datetime,
    EducLevelDesired text,
    EducFieldDesired text,
    contactPerson text,
    actualStartdate date,
    actualEnddate date,
    TerminationReason text
);

create table PayCheck(
    checkNo int(10) not null,
    daysWorked int,
    HourlyPay float,
    grossPay float,
    taxWithheld float,
    netPay float,
    grossPayYTD float,
    taxWithheldYTD float,
    nePayYTD float,
    wId varchar(25)
);

create table Payment(
    billNo int(10) not null,
    paydate date,
    payAmount float
);

insert into payment(billNo, paydate, payAmount) values
("100568","11/28/2018",196.3035),
("100569","12/20/2018",1517.184),
("100570","11/5/2018",603.936),
("100571","12/29/2018",1058.0625),
("100572","11/29/2018",198.8955),
("100573","1/6/2018",3968.8785),
("100574","12/7/2018",779.166),
("100575","12/5/2018",482.544),
("100576","12/3/2018",1628.478),
("100577","12/22/2018",542.511);

create table WorkerHoursAvailable(
    wid varchar(25) not null,
    day text,
    startTime int,
    endTime int
);

create table Worker(
    wId varchar(25) not null,
    wFname text,
    wMinit text,
    wLName text,
    wStreet text,
    wStreet2 text,
    wCity text,
    wZip int(5) default null,
    wPhone varchar,
    dateTempinterview datetime,
    startdateAvailable datetime,
    averageRating int
);

create table WorkerEducation(
    wId varchar(25) not null,
    degree text,
    field text,
    institution text,
    yearEarned int(4)
);

create table WorkerSkills(
    wId varchar(25) not null,
    skillName text,
    skillLevel text
);