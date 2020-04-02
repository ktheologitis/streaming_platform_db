USE streaming_platform;

INSERT DIGITAL_CONTENT VALUES 
 ('ST100001','Topgun','MOVIE','Paramount Pictures','USA','Action','1986-08-08',FALSE,'Tony Scott'),
 ('ST100002','Despicable Me','MOVIE','Illumination','USA','Animation','2010-07-09',FALSE,'Pierre Coffin/Chris Renaud'),
 ('ST100003','Jurassic Park','MOVIE','Amblin Entertainment','USA','Sci-Fi','1993-09-17',FALSE,'Steven Spielberg'),
 ('ST100004','Pulp Fiction','MOVIE','A Band Apart','USA','Crime','2010-07-09',FALSE,'Quentin Tarantino'),
 ('ST100005','The Wicker Man','MOVIE','WarnerBros','UK','Horror','1973-12-09',TRUE,'Robin Hardy'),
 ('ST100006','Titanic','MOVIE','Paramount Pictures','USA','Drama','1998-01-23',FALSE,'James Cameron'),
 ('ST100007','Joker','MOVIE','WarnerBros','USA','Thriller','2019-10-03',FALSE,'Todd Phillips'),
 ('ST100008','Inception','MOVIE','Legendary Pictures','USA','Sci-Fi','2010-07-29',FALSE,'Christopher Nolan'),
 ('ST100009','Interstellar','MOVIE','Legendary Pictures','USA','Sci-Fi','2014-11-06',FALSE,'Christopher Nolan'),
 ('ST100010','Transformers','MOVIE','dB Pictures','USA','Sci-Fi','2007-07-03',FALSE,'Michael Bay');
 
 INSERT DIGITAL_CONTENT VALUES 
 ('ST100011','Big Bang Theory','TV-SHOW','WarnerBros','USA','Comedy','2007-09-24',FALSE,'Mark Cendrowski'),
 ('ST100012','Stranger Things','TV-SHOW','Netflix','USA','Horror','2016-07-15',FALSE,'The Duffer Brothers'),
 ('ST100013','Friends','TV-SHOW','WarnerBros','USA','Comedy','1994-09-22',FALSE,'David and Marta'),
 ('ST100014','Crime Patrol','TV-SHOW','Sony','India','Crime','2009-05-09',TRUE,'Subramanian S Iyer'),
 ('ST100015','Game Of Thrones','TV-SHOW','WarnerBros','USA','Fantasy','2011-04-07',TRUE,'David and Weiss'),
 ('ST100016','Eisai To Tairi Mou','TV-SHOW','Andreas Tsakonas','Greece','Comedy','2001-10-01',FALSE,'Antonis Angelopoulos'),
 ('ST100017','Familiar Wife','TV-SHOW','tvN','South Korea','Romance','2018-09-01',FALSE,'Lee Sang-yeob'); 
 
 INSERT ACTOR VALUES
 ('AC100001','Tom','Cruise','1962-07-23','USA','MALE'),
 ('AC100002','Sam','Niell','1947-09-14','USA','MALE'),
 ('AC100003','Laura','Dern','1967-02-10','USA','FEMALE'),
 ('AC100004','John','Travolta','1954-02-18','USA','MALE'),
 ('AC100005','Uma','Thurman','1970-04-29','USA','FEMALE'),
 ('AC100006','Edward','Woodward','1930-06-01','UK','MALE'),
 ('AC100007','Leonardo','diCaprio','1974-11-11','USA','MALE'),
 ('AC100008','Kate','Winslet','1975-10-05','England','FEMALE'),
 ('AC100009','Joaquin','Phoenix','1974-10-28','Puerto Rico','MALE'),
 ('AC100010','Ellen','Page','1987-02-21','Canada','FEMALE'),
 ('AC100011','Mathew','McConaughey','1969-11-04','USA','MALE'),
 ('AC100012','Anne','Hathaway','1982-11-12','USA','FEMALE'),
 ('AC100013','Shia','LaBeouf','1986-06-11','USA','MALE'),
 ('AC100014','Jim','Parsons','1973-03-24','USA','MALE'),
 ('AC100015','Kaley','Cuoco','1985-11-30','USA','FEMALE'),
 ('AC100016','Kunal','Nayyar','1981-04-30','England','MALE'),
 ('AC100017','Jennifer','Aniston','1969-02-11','USA','FMALE'),
 ('AC100018','Courtney','Cox','1964-06-15','USA','FEMALE'),
 ('AC100019','Lisa','Kudrow','1963-07-30','USA','FEMALE'),
 ('AC100020','Winona','Ryder','1971-10-29','USA','FEMALE'),
 ('AC100021','Ankit','Bhardwaj','1994-06-09','India','MALE'),
 ('AC100022','Nikolaj','Waldau','1970-07-27','Denmark','MALE'),
 ('AC100023','Emilia','Clark','1986-10-23','England','FEMALE'),
 ('AC100024','Kit','Harington','1986-12-26','England','MALE'),
 ('AC100025','Katerina','Lekhou','1967-09-05','Greece','FEMALE'),
 ('AC100026','Ji','Sung','1977-02-27','South Korea','MALE'); 
 
 INSERT CAST VALUES
 ('ST100001','AC100001'),
 ('ST100003','AC100002'),
 ('ST100003','AC100003'),
 ('ST100004','AC100004'),
 ('ST100004','AC100005'),
 ('ST100005','AC100006'),
 ('ST100006','AC100007'),
 ('ST100006','AC100008'),
 ('ST100007','AC100009'),
 ('ST100008','AC100007'),
 ('ST100008','AC100010'),
 ('ST100009','AC100011'),
 ('ST100009','AC100012'),
 ('ST100010','AC100013'),
 ('ST100011','AC100014'),
 ('ST100011','AC100015'),
 ('ST100011','AC100016'),
 ('ST100012','AC100020'),
 ('ST100013','AC100017'),
 ('ST100013','AC100018'),
 ('ST100013','AC100019'),
 ('ST100014','AC100021'),
 ('ST100015','AC100022'),
 ('ST100015','AC100023'),
 ('ST100015','AC100024'),
 ('ST100016','AC100025'),
 ('ST100017','AC100026'); 
 
 INSERT MOVIE VALUES
 ('ST100001','01:50:00'),
 ('ST100002','01:35:00'),
 ('ST100003','02:07:00'),
 ('ST100004','03:01:00'),
 ('ST100005','01:40:00'),
 ('ST100006','02:55:00'),
 ('ST100007','02:02:00'),
 ('ST100008','02:28:00'),
 ('ST100009','02:49:00'),
 ('ST100010','02:24:00'); 
 
 INSERT TV_SHOW VALUES
 ('ST100011',12),
 ('ST100012',3),
 ('ST100013',10),
 ('ST100014',5),
 ('ST100015',8),
 ('ST100016',1),
 ('ST100017',1); 

 INSERT EPISODE VALUES
 ('ST100011',1,1,'BBS1E1','2007-09-24','00:20:00'),
 ('ST100011',2,3,'BBS2E3','2008-10-01','00:21:00'),
 ('ST100011',5,4,'BBS5E4','2009-09-21','00:22:00'),
 ('ST100011',6,2,'BBS6E2','2010-01-27','00:21:00'),
 ('ST100011',10,5,'BBS10E5','2017-02-02','00:22:00'),
 ('ST100012',1,1,'STS1E1','2017-09-24','00:25:00'),
 ('ST100013',2,2,'FRS2E2','2000-01-01','00:18:00'),
 ('ST100014',3,3,'CPS3E3','2008-08-08','00:22:00'),
 ('ST100015',1,1,'GTS6E2','2012-01-01','00:21:00'),
 ('ST100016',1,2,'KTS1E2','2017-02-02','00:30:00'),
 ('ST100017',1,18,'FWS1E18','2019-02-02','00:22:00'); 
 
  INSERT COUNTRY VALUES
 ('India',10,'INR'),
 ('USA',5,'USD'),
 ('UK',6,'GPB'),
 ('Greece',8,'EUR'),
 ('South Korea',19,'WON'),
 ('Denmark',20,'DKK'); 
 
  INSERT AVAILABILITY VALUES
 ('ST100001','India'),
 ('ST100001','UK'),
 ('ST100001','USA'),
 ('ST100001','Greece'),
 ('ST100001','Denmark'),
 ('ST100001','South Korea'),
 ('ST100002','India'),
 ('ST100002','UK'),
 ('ST100002','USA'),
 ('ST100002','Greece'),
 ('ST100002','Denmark'),
 ('ST100002','South Korea'),
 ('ST100004','India'),
 ('ST100004','UK'),
 ('ST100004','USA'),
 ('ST100004','Greece'),
 ('ST100004','Denmark'),
 ('ST100004','South Korea'),
 ('ST100005','India'),
 ('ST100005','UK'),
 ('ST100005','USA'),
 ('ST100005','Greece'),
 ('ST100005','Denmark'),
 ('ST100005','South Korea'),
 ('ST100009','India'),
 ('ST100009','UK'),
 ('ST100009','USA'),
 ('ST100009','Greece'),
 ('ST100009','Denmark'),
 ('ST100009','South Korea'),
 ('ST100010','India'),
 ('ST100010','UK'),
 ('ST100010','USA'),
 ('ST100010','Greece'),
 ('ST100010','Denmark'),
 ('ST100010','South Korea'),
 ('ST100017','India'),
 ('ST100017','UK'),
 ('ST100017','USA'),
 ('ST100017','Greece'),
 ('ST100017','Denmark'),
 ('ST100017','South Korea');
 
 INSERT PLATFORM_USER VALUES
 ('kkk@gmail.com','john','doe','MALE','1999-09-09','UK','2017-01-01','NO'),
 ('jd@gmail.com','jane','doe','FEMALE','1999-09-05','UK','2019-01-01','YES'),
 ('th@gmail.com','tom','hane','MALE','1989-09-09','USA','2014-01-01','NO'),
 ('ind@gmail.com','jay','singh','MALE','1996-06-06','India','2010-01-01','YES'),
 ('gk@gmail.com','kostas','tosikis','MALE','2000-09-09','Greece','2018-01-01','NO'),
 ('sks@gmail.com','chan','lee','FEMALE','1998-01-01','South Korea','2019-10-10','YES'),
 ('dkk@gmail.com','tina','hansen','FEMALE','1994-04-04','Denmark','2020-02-02','YES'); 
 
 INSERT WATCHED VALUES
 ('kkk@gmail.com','ST100001'),
 ('kkk@gmail.com','ST100002'),
 ('kkk@gmail.com','ST100010'), 
 ('jd@gmail.com','ST100001'),
 ('gk@gmail.com','ST100002'),
 ('sks@gmail.com','ST100005'),
 ('sks@gmail.com','ST100009'),
 ('sks@gmail.com','ST100017'),
 ('sks@gmail.com','ST100004'),
 ('sks@gmail.com','ST100010'),
 ('dkk@gmail.com','ST100005'); 
 
# select count(*) from digital_content;
# select * from actor;
# select * from cast;
# select * from movie;
# select * from tv_show;
# select * from episode;
# select * from country;
# select * from platform_user;
# select * from watched;
# select * from availability;
 
