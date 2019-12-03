drop table if exists Bill;
create table Bill(
    clId varchar(25) not null,
    billNo float default 0,
    billdate date default null,
    amountBilled float default 0
);

insert into Bill values
("0224B75C","100568","2018-11-26","196.30"),
("5E49FAFF","100569","2018-12-18","1517.18"),
("13F0B354","100570","2018-11-02","603.94"),
("512BBFBA","100571","2018-12-25","1058.06"),
("98E66AF0","100572","2018-11-25","198.90"),
("2B84ED7F","100573","2018-01-03","3968.88"),
("A7C9A313","100574","2018-12-03","779.17"),
("CE8DF959","100575","2018-12-01","482.54"),
("8981F371","100576","2018-11-29","1628.48"),
("D0260322","100577","2018-12-18","542.51");


drop table if exists Charge;
create table Charge(
    jobNo varchar(25) not null,
    chargedate date default null,
    daysWorked int default 0,
    amountCharged float default 0,
    billNo int
);

insert into Charge values
("46","2018-11-27","2.82321759259503","196.3035","100568"),
("47","2018-12-19","20.2609259259261","1517.184","100569"),
("48","2018-11-04","6.2135648148178","603.936","100570"),
("49","2018-12-27","13.8441435185159","1058.0625","100571"),
("50","2018-11-27","1.78304398147884","198.8955","100572"),
("51","2018-01-05","48.8554513888885","3968.8785","100573"),
("52","2018-12-05","8.3863773148114","779.166","100574"),
("53","2018-12-03","5.46817129629926","482.544","100575"),
("62","2018-12-01","18.7751157407401","1628.478","100576"),
("75","2018-12-20","7.74387731481693","542.511","100577");

drop table if exists Client;
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

drop table if exists Evaluation;
create table Evaluation(
    jobNo int(10),
    evaldate date default null,
    raterName varchar(50) default null,
    rating int default 0,
    comment varchar(250)
);

drop table if exists EvaluationProject;
create table EvaluationProject(
    workername text,
    ssn text,
    jobtitle text,
    evaluationdate date default null,
    ratername text,
    rating int,
    ratingcomment text
);

insert into Evaluation values
("46","2018-11-25","Kerry U. Page","7","Stole- however showed great potential if stayed on straight and narrow"),
("47","2018-12-16","Berk H. Jackson","5","Created hostile work environgment"),
("48","2018-11-01","Ariana L. Cobb","6","Not suited for position - lied on resume?"),
("49","2018-12-23","Blaze U. Henderson","8",""),
("50","2018-11-24","Erich Wheeler","3",""),
("51","2018-12-30","Lucius Merritt","5",""),
("52","2018-12-01","Aretha Kemp","2","Did not follow company policies"),
("53","2018-11-30","Cheryl Dennis","2","Seems to have issues with authority"),
("62","2018-11-27","Emmanuel Vazquez","9","Worked well and new position but could not make it to work on time."),
("75","2018-12-17","Tanya Burch","6","");

drop table if exists interviewFor;
create table interviewFor(
    jobNo int(10) not null,
    wId varchar(50) default null,
    date date default null,
    outcome text default null
);

insert into interviewFor values
("46","B1EA672A","2018-11-20","hired"),
("47","37F4F59D","2018-11-23","hired"),
("48","58BCD7C3","2018-10-22","hired"),
("50","B6979BBE","2018-11-18","not qualified"),
("50","87E8D390","2018-11-21","hired"),
("50","03DD7FB6","2018-11-19","not qualified"),
("52","F3E19D5E","2018-11-20","hired"),
("53","F3D4D51E","2018-11-20","hired"),
("62","E4117DE9","2018-11-04","hired"),
("75","A492113E","2018-12-05","hired");

drop table if exists JobDaysNeeded;
create table JobDaysNeeded(
    jobNo int(10) not null,
    day text,
    startTime int,
    endTime int 
);

insert into JobDaysNeeded values
("46","Thursday","5","8"),
("47","Friday","10","10"),
("48","Friday","10","7"),
("49","Sunday","1","10"),
("50","Wednesday","7","4"),
("51","Friday","10","5"),
("52","Wednesday","7","3"),
("53","Friday","5","8"),
("62","Saturday","7","8"),
("75","Wednesday","11","9");

drop table if exists JobSkills;
create table JobSkills(
    jobNo int(10) not null,
    skillName text,
    skillLevel text
);

insert into JobSkills values
("46","Technical Writing","Novice"),
("47","Programming","Moderate"),
("48","Cyber Security","Proficient"),
("49","Cyber Security","Proficient"),
("50","Operating Systems","Moderate"),
("51","Data Analysis","Novice"),
("52","Programming","Novice"),
("53","Software","Moderate"),
("62","Project Management","Proficient"),
("75","Cyber Security","Proficient");

drop table if exists Jobs;
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

insert into Jobs values

("0224B75C","B1EA672A","46","Professional","Entry","11.36","2018-11-14 14:32:07","2018-11-30 21:53:39","B.A.","AE","Kerry U. Page","2018-11-22","2018-11-24","theft"),
("5E49FAFF","37F4F59D","47","Temporary","Junior","8.78","2018-11-19 17:40:08","2018-12-27 15:09:16","A.A.S.","MIS","Berk H. Jackson","2018-11-25","2018-12-15","harassment"),
("13F0B354","58BCD7C3","48","Temporary","Entry","11.65","2018-10-23 18:13:35","2018-11-26 07:03:17","A.A.S.","MIS","Ariana L. Cobb","2018-10-25","2018-10-31","incompetence"),
("512BBFBA","B6979BBE","49","Professional","Entry","9.42","2018-12-08 08:24:48","2018-12-22 00:12:51","B.S.","EE","Blaze U. Henderson","2018-12-08","2018-12-22",""),
("98E66AF0","87E8D390","50","Temporary","Entry","11.51","2018-11-21 02:10:39","2018-11-23 12:40:06","B.S.","CS","Erich Wheeler","2018-11-21","2018-11-23",""),
("2B84ED7F","03DD7FB6","51","Temporary","Entry","9.57","2018-10-22 02:11:49","2018-12-29 09:46:16","Certificate","AE","Lucius Merritt","2018-11-10","2018-12-29",""),
("A7C9A313","F3E19D5E","52","Temporary","Entry","10.02","2018-11-21 17:51:29","2018-12-02 20:04:19","Certificate","CS","Aretha Kemp","2018-11-22","2018-11-30","attendance"),
("CE8DF959","F3D4D51E","53","Temporary","Junior","11.17","2018-11-12 20:33:13","2018-12-29 23:50:55","Certificate","CS","Cheryl Dennis","2018-11-24","2018-11-29","insubordination"),
("8981F371","E4117DE9","62","Professional","Entry","9.92","2018-10-28 10:01:02","2018-12-26 07:28:25","B.S.","MIS","Emmanuel Vazquez","2018-11-07","2018-11-26","insubordination"),
("D0260322","A492113E","75","Professional","Entry","8.97","2018-12-07 12:18:01","2018-12-16 02:20:59","B.S.","EE","Tanya Burch","2018-12-08","2018-12-16","");


drop table if exists PayCheck;
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

insert into PayCheck values
("1021","2","11.36","181.76","36.352","145.408","181.76","36.35","145.41","B1EA672A"),
("1022","7","8.78","491.68","98.336","393.344","491.68","98.34","393.34","37F4F59D"),
("1023","7","8.78","491.68","98.336","393.344","983.36","196.676","786.684","37F4F59D"),
("1024","6","8.78","421.44","84.288","337.152","1404.8","280.964","1123.836","37F4F59D"),
("1025","6","11.65","559.2","111.84","447.36","559.2","111.87","447.36","58BCD7C3"),
("1026","7","9.42","527.52","105.504","422.016","527.52","105.5","422.02","B6979BBE"),
("1027","6","9.42","452.16","90.432","361.728","979.68","195.932","783.748","B6979BBE"),
("2028","2","11.51","184.16","36.832","147.328","184.16","36.83","147.33","87E8D390"),
("2029","7","9.57","535.92","107.184","428.736","535.92","107.18","428.74","03DD7FB6"),
("2037","7","9.57","535.92","107.184","428.736","1071.84","214.364","857.476","03DD7FB6"),
("1038","7","9.57","535.92","107.184","428.736","1607.76","321.548","1286.212","03DD7FB6"),
("1039","7","9.57","535.92","107.184","428.736","2143.68","428.732","1714.948","03DD7FB6"),
("1040","7","9.57","535.92","107.184","428.736","2679.6","535.916","2143.684","03DD7FB6"),
("1560","7","9.57","535.92","107.184","428.736","3215.52","643.1","2572.42","03DD7FB6"),
("1041","6","9.57","459.36","91.872","367.488","3674.88","734.972","2939.908","03DD7FB6"),
("1042","7","10.02","561.12","112.224","448.896","561.12","112.22","448.9","F3E19D5E"),
("2100","2","10.02","160.32","32.064","128.256","721.44","144.284","577.156","F3E19D5E"),
("2101","5","11.17","446.8","89.36","357.44","446.8","89.36","357.44","F3D4D51E"),
("2102","7","9.92","555.52","111.104","444.416","555.52","111.1","444.42","E4117DE9"),
("2103","7","9.92","555.52","111.104","444.416","1111.04","222.204","888.836","E4117DE9"),
("2110","5","9.92","396.8","79.36","317.44","1507.84","301.564","1206.276","E4117DE9"),
("2111","7","8.97","502.32","100.464","401.856","502.32","100.46","401.86","A492113E");

drop table if exists Payment;
create table Payment(
    billNo int(10) not null,
    paydate date,
    payAmount float
);

insert into Payment values
("100568","2018-11-28",196.3035),
("100569","2018-12-20",1517.184),
("100570","2018-11-05",603.936),
("100571","2018-12-29",1058.0625),
("100572","2018-11-29",198.8955),
("100573","2018-01-06",3968.8785),
("100574","2018-12-07",779.166),
("100575","2018-12-05",482.544),
("100576","2018-12-03",1628.478),
("100577","2018-12-22",542.511);

drop table if exists WorkerHoursAvailable;
create table WorkerHoursAvailable(
    wid varchar(25) not null,
    day text,
    startTime int,
    endTime int
);

insert into WorkerHoursAvailable values
("03DD7FB6","Thursday","11","7"),
("03DD7FB6","Friday","8","6"),
("37F4F59D","Friday","6","8"),
("37F4F59D","Sunday","9","9"),
("58BCD7C3","Wednesday","3","4"),
("58BCD7C3","Friday","12","2"),
("87E8D390","Wednesday","12","8"),
("87E8D390","Friday","5","8"),
("A492113E","Saturday","10","10"),
("A492113E","Wednesday","10","7"),
("B1EA672A","Thursday","1","10"),
("B1EA672A","Monday","7","4"),
("B6979BBE","Thursday","10","5"),
("B6979BBE","Saturday","7","3"),
("E4117DE9","Wednesday","5","8"),
("E4117DE9","Sunday","7","8"),
("F3D4D51E","Friday","11","9"),
("F3D4D51E","Thursday","12","7"),
("F3E19D5E","Wednesday","10","4"),
("F3E19D5E","Wednesday","12","9");

drop table if exists Worker;
create table Worker(
    wId varchar(25) not null,
    wFname text,
    wMinit text,
    wLName text,
    wStreet text,
    wStreet2 text,
    wCity text,
    wZip int(5) default null,
    wPhone varchar(12),
    dateTempinterview datetime,
    startdateAvailable datetime,
    averageRating int(5)
);

insert into Worker values
("B1EA672A","Wanda","Whilemina","Parks","Ap #315-7542 A Ave","6189 Venenatis Street","Sanluri","51216","462-317-5004","2018-11-14 06:30:16","2018-12-02 02:08:13","7"),
("37F4F59D","Travis","Demetria","Brennan","P.O. Box 955 2796 Mi Av.","308-9587 Justo Rd.","Villafranca d'Asti","58338","234-375-9841","2018-10-30 19:35:48","2018-11-25 08:53:32","5"),
("58BCD7C3","Gretchen","Yuli","Stafford","2446 Magnis St.","3962 Urna Avenue","Jefferson City","58578","633-193-6320","2018-12-10 05:32:39","2018-11-25 01:55:45","6"),
("B6979BBE","Blaine","Nola","Dejesus","846-977 Nullam Street","P.O. Box 876 9883 Sem Road","Vandoies/Vintl","59806","692-177-7081","2018-11-02 03:00:56","2018-10-27 03:57:17","8"),
("87E8D390","Evangeline","Desirae","Preston","6188 Egestas Avenue","Ap #330-2396 Eleifend St.","Molino dei Torti","59861","832-138-9632","2018-12-18 21:22:40","2018-11-18 17:52:31","3"),
("03DD7FB6","Honorato","Keelie","Kennedy","Ap #169-3442 Tincidunt. Rd.","136-2910 Quis Street","Cairns","59939","447-168-4834","2018-10-27 04:39:53","2018-12-10 13:14:25","5"),
("F3E19D5E","Clarke","Bryar","Beach","4163 Malesuada Av.","Ap #337-7361 Neque St.","Tournefeuille","67266","220-273-1698","2018-11-15 00:10:58","2018-11-17 10:47:56","2"),
("F3D4D51E","Erich","Alec","Francis","9401 Fringilla St.","P.O. Box 867 7629 Et Ave","Canela","70011","658-831-2656","2018-11-07 09:01:37","2018-11-24 12:36:45","2"),
("E4117DE9","Tucker","Colin","Gay","P.O. Box 530 8821 Leo Road","P.O. Box 326 7312 Semper Road","Malbaie","70116","606-295-4748","2018-11-01 12:49:32","2018-11-07 12:52:15","9"),
("A492113E","Leandra","Orli","Olsen","528-1019 Vitae St.","6044 Interdum Av.","Roux","70408","654-903-2246","2018-12-29 23:05:41","2018-12-08 08:29:48","6");

drop table if exists WorkerEducation;
create table WorkerEducation(
    wId varchar(25) not null,
    degree text,
    field text,
    institution text,
    yearEarned int(4)
);

insert into WorkerEducation values
("B1EA672A","B.S.","MIS","Rose-Hulman Institute of Technology","1994"),
("37F4F59D","B.A.","CS","University of Wisconsin","1993"),
("58BCD7C3","B.S.","CIS","New York Institute of Technology","1995"),
("B6979BBE","B.A.","ITE","University of Alabama","2005"),
("87E8D390","Certificate","EE","Herzing University","1997"),
("03DD7FB6","A.S.","CS","Georgia State University","2013"),
("F3E19D5E","A.S.","CIS","Texas Tech","1999"),
("F3D4D51E","A.A.S.","AE","North Dakota State University","2009"),
("E4117DE9","A.A.S.","ITE","Iowa University","1988"),
("A492113E","B.S.","EE","University of South Carolina","1985");

drop table if exists WorkerSkills;
create table WorkerSkills(
    wId varchar(25) not null,
    skillName text,
    skillLevel text
);

insert into WorkerSkills values
("B1EA672A","Technical Writing","Proficient"),
("37F4F59D","Programming","Novice"),
("58BCD7C3","Cyber Security","Proficient"),
("B6979BBE","Cyber Security","Moderate"),
("87E8D390","Operating Systems","Proficient"),
("03DD7FB6","Data Analysis","Moderate"),
("F3E19D5E","Programming","Proficient"),
("F3D4D51E","Software","Novice"),
("E4117DE9","Project Management","Moderate"),
("A492113E","Cyber Security","Proficient");