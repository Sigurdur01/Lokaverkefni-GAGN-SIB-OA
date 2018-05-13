DROP DATABASE IF EXISTS 1610013090_Lokaverkefni;
CREATE DATABASE 1610013090_Lokaverkefni;
USE 1610013090_Lokaverkefni;

CREATE TABLE 1610013090_Lokaverkefni.flytjandi
(    flytjandi_ID INT PRIMARY KEY NOT NULL,
    artist_name VARCHAR(30),
    label_name VARCHAR(50),
    born VARCHAR(30),
    died VARCHAR(30),
    biography TEXT
);

CREATE TABLE 1610013090_Lokaverkefni.tegund
(   tegund_ID INT PRIMARY KEY NOT NULL,
    song_genre varchar(30),
    artist_name varchar(30)
);

CREATE TABLE 1610013090_Lokaverkefni.utgefandi
(   utgefandi_ID INT PRIMARY KEY NOT NULL,
    label_name varchar(50),
    copyright varchar(25),
    located varchar(90)
);

CREATE TABLE 1610013090_Lokaverkefni.lagalisti
(    lag_ID INT PRIMARY KEY NOT NULL,
    artist_name VARCHAR(30),
    song_name VARCHAR(50),
    length DECIMAL(5,2),
    text TEXT,
    release_date VARCHAR(30),
    flytjandi_ID INT,
    utgefandi_ID INT,
    tegund_ID INT,
    FOREIGN KEY (flytjandi_ID) REFERENCES flytjandi(flytjandi_ID),
    FOREIGN KEY (utgefandi_ID) REFERENCES utgefandi(utgefandi_ID),
    FOREIGN KEY (tegund_ID) REFERENCES tegund(tegund_ID)
);

/*Skipta svo að það mun lesa frá id*/

INSERT INTO 1610013090_Lokaverkefni.flytjandi(flytjandi_ID, artist_name, label_name, born, died, biography)
VALUES(10,'Post Malone','Republic','4.júlí 1995','Not Dead','https://en.wikipedia.org/wiki/Post_Malone'),
      (20,'Logic','Def Jam','22.janúar','Not Dead','https://en.wikipedia.org/wiki/Logic_(musician)'),
      (30,'The Weeknd','Xo','16.Febrúar','Not dead','https://en.wikipedia.org/wiki/The_Weeknd'),
      (40,'Foo Fighters','RCA','27.mars 1995','Not Dead','https://is.wikipedia.org/wiki/Foo_Fighters'),
      (50,'Sabaton','Underground Symphony','??? 1999','Not Dead','https://en.wikipedia.org/wiki/Sabaton_(band)');

INSERT INTO 1610013090_Lokaverkefni.tegund(tegund_ID, song_genre, artist_name)
VALUES(75,'Pop','Post Malone'),
      (80,'Pop','Logic'),
      (85,'Pop','The Weeknd'),
      (90,'Rock','Foo Fighters'),
      (95,'Metal','Sabaton');

INSERT INTO 1610013090_Lokaverkefni.utgefandi(utgefandi_ID, label_name, copyright, located)
VALUES(302,'Xo','Yes','Canada'),
      (390,'Republic','Yes','Ameríka'),
      (645,'RCA','Yes','Ameríka'),
      (943,'Underground Symphony','Yes','Ítalía'),
      (451,'Def Jam','Yes','Ameríka');
      
INSERT INTO 1610013090_Lokaverkefni.lagalisti(lag_ID, artist_name, song_name, length, text, release_date, flytjandi_ID, utgefandi_ID, tegund_ID)
VALUES(10,'Post Malone','rockstar',3.3,'I´ve been fucking hoes and pooping pillies man i feel like a rockstar All my brothers got that gas and they always be smokin´ like a Rasta','15.Sept 2017',10,390,75),(11,'Post Malone','Congratulations',3.4,'My momma called, seen you on TV, son said shit done changed ever since we was on, i dreamed at all ever since i was young','4.Nov 2016',10,390,75),(12,'Post Malone','White Iverson',4.1,'Saucin, saucin, I´m saucin´ on you i´m swaggin, i´m swaggin, i´m swaggin, oh-ohh I´m ballin, I´m ballin Iverson on you','14.Ágúst 2015',10,390,75),
      (20,'Logic','BoomTrap Protocol',3.4,'Let me get upin this bitch, like, "What´s good, ho?" Grippin this grain, i spit to release the pain Pimpin aint a thang whats good?','9.mars 2018',20,451,80),(21,'Logic','Everyday',3.2,'Roll up to the spot feelin real good think you gon talk shit you better not my homies real hood They say "Logic why you do that?" i dont know i dont know','2.mars 2018',20,451,80),(22,'Logic','1-800-273-8255',4.1,'All this shit im talkin bout they think they know it ive been praying for somebody to save me no ones heroic and my life dont even matter i know it i know it','28.apríl 2018',20,451,80), 
      (30,'The Weeknd','Call Out My Name',3.5,'We found each other i helped you out of a broken place you gave me comfort but falling for you was my mistake','30.mars 2018',30,302,85),(31,'The Weeknd','Sidewalks',3.5,'I ran out of tears when i was 18 so nobody made me but the main streets Cause too many people think they made me Well if you made me then replace me Homeless to forbes list','25.nóvember 2016',30,302,85),(32,'The Weeknd','Pray For Me',3.3,'Im always ready for war again Go down that road again Its all the same Im always ready to take a life again','2.Febrúar 2018',30,302,85),
      (40,'Foo Fighters','These Days',5.3,'One of these days the ground will drop out from beneath your feet One of these days your heart will stop and play its final beat One of these days the clocks will stop and time wont mean a thing One of these days their bombs will drop and silence everything','1. Nov 2011',40,645,90),(41,'Foo Fighters','Learn To Fly',4.5,'Run and tell all of the angels This could take all night Think I need a devil to help me get things right','1999',40,645,90),(42,'Foo Fighters','Everlong',4.8,'Hello Ive waited here for you Everlong Tonight I throw myself into And out of the red Out of her head she sang','18. Ágúst 1997',40,645,90),
      (50,'Sabaton','Ghost Division',3.9,'Fast as the wind, the invasion has begun Shaking the ground with the force of thousand guns First in the line of fire, first into hostile land Tanks leading the way, leading the way','30. maí 2008',50,943,95),(51,'Sabaton','Resist And Bite',3.3,'War is coming swiftly The border is closing in We’re a company of soldiers We’re 40 rifles strong','16. maí 2014',50,943,95),(52,'Sabaton','Hearts Of Iron',4.3,'See the Reich in flames Try to save Berlin in vain It’s a road through death and pain On the other shore, there’s the end of the war','16. maí 2014',50,943,95);


/*-------------------------------------------------------------*/

CREATE TABLE 1610013090_Lokaverkefni.askrifandi
(
askrifandi_ID INT PRIMARY KEY NOT NULL,
name VARCHAR(30) NOT NULL,
email VARCHAR(30) NOT NULL,
address VARCHAR(30) NOT NULL
);

CREATE TABLE 1610013090_Lokaverkefni.lagaval
(
val_ID INT PRIMARY KEY NOT NULL,
subscriber VARCHAR(50),
band VARCHAR(30),
song_name VARCHAR(50),
date VARCHAR(30),
askrifandi_ID INT,
lag_ID INT,
FOREIGN KEY (lag_ID) REFERENCES lagalisti(lag_ID),
FOREIGN KEY (askrifandi_ID) REFERENCES askrifandi(askrifandi_ID)
);


INSERT INTO 1610013090_Lokaverkefni.askrifandi(askrifandi_ID, name, email, address)
VALUES
(346,'Jón Jónsson','jonjons@hotmail.com','Jónsgata 23'),
(734,'Gunnar Gunnarsson','gunngunn@yahoo.com','Gunnarsgata 56'),
(786,'Páll Guðmundsson','pallgud@gmail.com','Pálsgata 467'),
(464,'Ari Jónsson','arijonsson1337@hotmail.com','Aragata 43'),
(121,'Pétur Gunnarsson','peturgunnars@gmail.com','Pétursgata 1'),
(345,'Arnór Pétursson','arnorpet@gmail.com','Arnórsstræti 72'),
(658,'Kristófer Sigurgeirsson','kristosig@gmail.com','Kristóferssund 5');



INSERT INTO 1610013090_Lokaverkefni.lagaval(val_ID,subscriber,band,song_name,date,askrifandi_ID,lag_ID)
VALUES
(11,'Jón Jónsson','Sabaton','Ghost Division','9.5.2018',346,50),(12,'Jón Jónsson','Foo Fighters','Learn To Fly','9.5.2018',346,41),(13,'Jón Jónsson','Sabaton','Resist And Bite','9.5.2018',346,51),(14,'Jón Jónsson','Sabaton','Hearts Of Iron','9.5.2018',346,52),(15,'Jón Jónsson','Foo Fighters','These Days','9.5.2018',346,40),
(21,'Gunnar Gunnarsson','Logic','BoomTrap Protocol','9.5.2018',734,20),(22,'Gunnar Gunnarsson','The Weeknd','Call Out My Name','9.5.2018',734,30),(23,'Gunnar Gunnarsson','Sabaton','Ghost Division','9.5.2018',734,50),(24,'Gunnar Gunnarsson','Post Malone','rockstar','9.5.2018',734,10),(25,'Gunnar Gunnarsson','Foo Fighters','These Days','9.5.2018',734,20),
(31,'Páll Guðmundsson','Foo Fighters','Everlong','9.5.2018',786,42),(32,'Páll Guðmundsson','The Weeknd','Pray For Me','9.5.2018',786,32),(33,'Páll Guðmundsson','Logic','BoomTrap Protocol','9.5.2018',786,20),(34,'Páll Guðmundsson','Logic','Everyday','9.5.2018',786,21),(35,'Páll Guðmundsson','Logic','1-800-273-8255','9.5.2018',786,22),
(41,'Ari Jónsson','Sabaton','Hearts of Iron','9.5.2018',464,52),(42,'Ari Jónsson','Post Malone','White Iverson','9.5.2018',464,12),(43,'Ari Jónsson','Post Malone','Congratulations','9.5.2018',464,11),(44,'Ari Jónsson','The Weeknd','Sidewalks','9.5.2018',464,31),(45,'Ari Jónsson','Foo Fighters','Learn To Fly','9.5.2018',464,41),
(51,'Pétur Gunnarsson','Foo Figters','Learn To Fly','9.5.2018',121,41),(52,'Pétur Gunnarsson','Sabaton','Resist And Bite','9.5.2018',121,51),(53,'Pétur Gunnarsson','Logic','Everyday','9.5.2018',121,21),(54,'Pétur Gunnarsson','Logic','1-800-273-8255','9.5.2018',121,22),(55,'Pétur Gunnarsson','Post Malone','White Iverson','9.5.2018',121,12),
(61,'Arnór Pétursson','Sabaton','Ghost Division','9.5.2018',345,50),(62,'Arnór Pétursson','Post Malone','rockstar','9.5.2018',345,10),(63,'Arnór Pétursson','Foo Fighters','These Days','9.5.2018',345,40),(64,'Arnór Pétursson','Sabaton','Hearts Of Iron ','9.5.2018',345,52),(65,'Arnór Pétursson','Foo Fighters','Everlong','9.5.2018',345,42),
(71,'Kristófer Sigurgeirsson','Foo Fighters','Learn To Fly','9.5.2018',658,41),(72,'Kristófer Sigurgeirsson','Sabaton','Resist And Bite','9.5.2018',658,51),(73,'Kristófer Sigurgeirsson','Logic','Everyday','9.5.2018',658,21),(74,'Kristófer Sigurgeirsson','Logic','1-800-273-8255','9.5.2018',658,22),(75,'Kristófer Sigurgeirsson','Post Malone','Congratulations','9.5.2018',658,11);
