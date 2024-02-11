# Tarea 4

## Mi modelo de base de datos en MySQL

### [Ir al archivo en .sql](https://github.com/gvalexis/cagv_mcd/blob/main/Clase%201/archivos/Tarea_4.sql)

```sql

drop database if exists ufc;

create database ufc;

use ufc;

create table events (
event_id varchar(255)
,title varchar(255)
,date date
,location varchar(255)
,canceled boolean
,primary key (event_id));

create table fighters (
fighter_id varchar(255)
,name varchar(255)
,birthdate date
,aka varchar(255)
,class_weight varchar(255)
,wins int
,losses int
,draws int 
,country varchar(255)
,city varchar(255)
,weight int
,sex varchar(255)
,height decimal(5,2)
,primary key (fighter_id));

create table referees(
referee_id varchar(255)
,name varchar(255)
,birthdate date
,aka varchar(255)
,n_fights int
,ko_tko int
,submission int
,decision int
,draws int
,no_contests int
,disqualifications int
,country varchar(255)
,city varchar(255)
,primary key (referee_id)
);

create table fights (
fight_id varchar(255)
,event_id varchar(255)
,left_fighter_id varchar(255)
,left_fighter_name varchar(255)
,right_fighter_id varchar(255)
,right_fighter_name varchar(255)
,winner varchar(255)
,winner_name varchar(255)
,is_main_event boolean
,match_ int
,round int 
,time time
,method varchar(255)
,weight_class varchar(255)
,referee_id varchar(255)
,referee_name varchar(255)
,primary key (fight_id)
,foreign key (left_fighter_id) references fighters (fighter_id)
,foreign key (right_fighter_id) references fighters (fighter_id)
,foreign key (referee_id) references referees (referee_id)
,foreign key (event_id) references events (event_id)
);

INSERT INTO events (event_id, title, date, location, canceled) VALUES
("b84faf1b17654fe09fbd5d93ef81b5c0", "UFC 78 - Validation", "2007-11-17", "Prudential Center, Newark, New Jersey, United States", FALSE),
("43ef5e8994e44f5dafda938028a4f301", "UFC 77 - Hostile Territory", "2007-10-20", "U.S. Bank Arena, Cincinnati, Ohio, United States", FALSE),
("ff75ab0c842743da9221de3463506a9b", "UFC 76 - Knockout", "2007-09-22", "Honda Center, Anaheim, California, United States", FALSE),
("2956491446074819aa95ee609692130e", "UFC Fight Night 11 - Thomas vs. Florian", "2007-09-19", "Palms Casino Resort, Las Vegas, Nevada, United States", FALSE),
("7a8f290601374ef5a99e20ba4725d048", "UFC 75 - Champion vs. Champion", "2007-09-08", "O2 Arena, London, England", FALSE),
("475581ce373d48ec935bbe0e92efeae8", "UFC 74 - Respect", "2007-08-25", "Mandalay Bay Events Center, Las Vegas, Nevada, United States", FALSE),
("7653403ed5dc453f9526a4f8e768b5c7", "UFC 73 - Stacked", "2007-07-07", "ARCO Arena, Sacramento, California, United States", FALSE),
("070c5ff3b4aa43e8afae335fd0861df4", "UFC - The Ultimate Fighter 5 Finale", "2007-06-23", "Palms Casino Resort, Las Vegas, Nevada, United States", FALSE),
("9bd4eec1347949d6bb5e3f8bfd685c33", "UFC 72 - Victory", "2007-06-16", "The Odyssey, Belfast, Northern Ireland", FALSE),
("54a8e133403d49e29277fd31c2298954", "UFC Fight Night 10 - Stout vs. Fisher 2", "2007-06-12", "Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States", FALSE),
("b6dfece47d604c969773236e1500e27e", "UFC 71 - Liddell vs. Jackson", "2007-05-26", "MGM Grand Garden Arena, Las Vegas, Nevada, United States", FALSE),
("edf07e1f0eb3491482c65c89c06625fb", "UFC 70 - Nations Collide", "2007-04-21", "Manchester Evening News Arena, Manchester, Lancashire, England", FALSE),
("bbd09ec4e0d0438cbb05d5992001c325", "UFC 69 - Shootout", "2007-04-07", "Toyota Center, Houston, Texas, United States", FALSE),
("959de33336f14ebf88da02f2173e5dd2", "UFC Fight Night 9 - Stevenson vs. Guillard", "2007-04-05", "Palms Casino Resort, Las Vegas, Nevada, United States", FALSE),
("133c34b2ec404b0b8dc412b34df99015", "UFC 68 - Uprising", "2007-03-03", "Nationwide Arena, Columbus, Ohio, United States", FALSE),
("2b60c812cb134d38afdf7d5cdcfcae88", "UFC 67 - All or Nothing", "2007-02-03", "Mandalay Bay Events Center, Las Vegas, Nevada, United States", FALSE),
("7a592f5f78b6428ca29e5ee18c28a7ac", "UFC Fight Night 8 - Evans vs. Salmon", "2007-01-25", "Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States", FALSE),
("47868762afac458f919d90a19f1dbbe5", "UFC 66 - Liddell vs. Ortiz 2", "2006-12-30", "MGM Grand Garden Arena, Las Vegas, Nevada, United States", FALSE),
("1dd037fd1fd3407f84135953376e7d6e", "UFC Fight Night 7 - Sanchez vs. Riggs", "2006-12-13", "Marine Corps Air Station Miramar, San Diego, California, United States", FALSE),
("88cf4131b2d242d5b837d404f7a0b061", "UFC 65 - Bad Intentions", "2006-11-18", "ARCO Arena, Sacramento, California, United States", FALSE);

INSERT INTO fighters (fighter_id, name, birthdate, aka, class_weight, wins, losses, draws, country, city, weight, sex, height) VALUES
("06559ee750534044950dfe5ccbe41963", "Anderson Silva", "1975-04-14", "The Spider", "Middleweight", 34, 11, 1, "Brazil", "Curitiba, Parana", 185, "M", 187.96),
("391057f419744f358303319ec90a4c60", "Tim Sylvia", "1974-03-05", "The Maine-iac", "Heavyweight", 31, 10, 1, "United States", "Bettendorf, Iowa", 265, "M", 203.2),
("41505463edc74e0f844a1bdd5aab762e", "Rich Franklin", "1974-10-05", "Ace", "Middleweight", 29, 7, 1, "United States", "Cincinnati, Ohio", 185, "M", 185.42),
("18a8ecf93ba349848806165f54739a79", "Brandon Vera", "1977-10-10", "The Truth", "Heavyweight", 16, 10, 1, "United States", "San Diego, California", 246, "M", 187.96),
("653a2f841bfe40b18896cc6b7fbec244", "Jorge Gurgel", "1977-01-25", "J.G.", "Lightweight", 14, 10, 0, "United States", "Cincinnati, Ohio", 154, "M", 175.26),
("bb523a0a2a054faa8de1dc47deded099", "Eric Schafer", "1977-09-20", "Red", "Middleweight", 14, 8, 0, "United States", "Milwaukee, Wisconsin", 185, "M", 190.5),
("d3bd20f7cab844abb5d7ad2d80e974ef", "Alan Belcher", "1984-04-24", "The Talent", "Middleweight", 19, 8, 0, "United States", "Biloxi, Mississippi", 185, "M", 187.96),
("5419709cd13f40f7b27f6e1f9db3c036", "Kalib Starnes", "1975-01-06", "", "Light Heavyweight", 17, 11, 0, "Canada", "Surrey, British Columbia", 205, "M", 190.5),
("ced60a9d185945ddb868c13702db1a11", "Yushin Okami", "1981-07-21", "Thunder", "Middleweight", 36, 15, 0, "Japan", "Fujisawa, Kanagawa", 185, "M", 187.96),
("acb2c5bb5dbf42ae8683d950277dc453", "Ryan Jensen", "1977-09-20", "", "Middleweight", 21, 8, 0, "United States", "Omaha, Nebraska", 175, "M", 177.8),
("75ace4766f77422e8a68f286ed8ac84e", "Joshua Burkman", "1980-10-04", "The People,s Warrior", "Lightweight", 28, 18, 1, "United States", "Salt Lake City, Utah", 155, "M", 177.8),
("da019cbacbc0471db3db381be7022480", "Forrest Petz", "1975-09-22", "The Meat Cleaver", "Middleweight", 26, 10, 0, "United States", "Cleveland, Ohio", 185, "M", 175.26),
("0266c5967e0548638aacbcfb68b3c71d", "Jason Black", "1972-08-15", "The Black Legion", "Welterweight", 23, 4, 0, "United States", "Davenport, Illinois", 169, "M", 177.8),
("cb3253c5eb2949e0980868df25c94972", "Keith Jardine", "1975-10-31", "The Dean of Mean", "Middleweight", 17, 11, 0, "United States", "Albuquerque, New Mexico", 185, "M", 187.96),
("192a09cbc233481bbe5771ecab64459a", "Paul Taylor", "1982-12-11", "", "Heavyweight", 21, 9, 3, "Brazil", "Sao Carlos, Sao Paulo", 223, "M", 185.42),
("dcea19a67128486c8deacf0df0efd11b", "Gabriel Gonzaga", "1979-05-18", "Napao", "Heavyweight", 17, 12, 0, "Brazil", "Rio de Janeiro", 264, "M", 187.96),
("07e1eedecb4a466b956e9334d4e959c8", "Georges St. Pierre", "1981-05-19", "Rush", "Welterweight", 26, 2, 0, "Canada", "St. Isidore, Quebec", 170, "M", 177.8),
("0c053d6385a04e09a6c63ce7f857bf69", "Randy Couture", "1963-06-22", "The Natural", "Light Heavyweight", 19, 11, 0, "United States", "Corvallis, Oregon", 203, "M", 185.42),
("1ada8ab8ae964e0c8e2ce8b7884da1ec", "Thiago Silva", "1978-07-31", "The Crush", "Welterweight", 5, 3, 0, "United States", "Kailua, Hawaii", 170, "M", 177.8),
("04a6e56542ae428f9b5760ae52d4c287", "Alberto Crane", "1976-07-14", "", "Lightweight", 15, 5, 0, "United States", "Santa Fe, New Mexico", 155, "M", 175.26);

INSERT INTO referees (referee_id, name, birthdate, aka, n_fights, ko_tko, submission, decision, draws, no_contests, disqualifications, country, city)
VALUES
("a24d7c4ae92645d589ed9928c1b47b2e", "Joao Alberto Barreto", NULL, "", 4, 1, 3, 0, 0, 0, 0, "Brazil", ""),
("2806fa0a5dd844c0ac5aca82f38957d5", "Jacob Montalvo", NULL, "", 651, 217, 120, 299, 4, 6, 5, "", ""),
("61a13f39b94b45789b781a037c446f20", "Kevin Sataki", NULL, "", 16, 7, 2, 7, 0, 0, 0, "", ""),
("0aafd5dec7de496c905126c4d0116a07", "Larry Carter", NULL, "", 832, 309, 166, 342, 5, 7, 3, "", ""),
("1faa0856286f463293d9a92935f3822c", "Nick Berens", NULL, "", 899, 288, 218, 370, 6, 11, 6, "", ""),
("b944f1373ec543ccb9a8120e57557d42", "Matt Wynne", NULL, "", 951, 320, 214, 400, 9, 6, 2, "", ""),
("6d20609631974b77bc1d8ea99266d1d1", "Chad Trukovich", "1970-09-30", "", 1880, 655, 451, 735, 11, 22, 5, "United States", "Pasadena, California"),
("d7441587022e46f5bf7621b12ff8969b", "Camila Albuquerque", "1973-08-31", "", 464, 176, 105, 170, 8, 5,0 , "United States", "California"),
("812a1df0485c4b739a6ec01a45ff8bef", "Liam Kerrigan", NULL, "", 677, 208, 137, 316, 6, 7, 3, "United States", ""),
("6664b8ad090e45dc928a1521bb95d26d", "Brandon Pfannenstiel", NULL, "", 365, 109, 91, 160, 0, 4, 1, "", ""),
("f8e7d718b76e45a98b8b767f0630d06e", "Gabe Barahona", "1962-10-12", "Big", 958, 340, 278, 315, 9, 15, 1, "United States", "Los Angeles, California"),
("1608b2b702794ba6ab2c46d84dc499b4", "Philippe Chartier", NULL, "", 307, 89, 79, 138, 1, 0, 0, "", ""),
("d1dd2a59f2b14472be490404139a8aec", "Cameron Quinn", NULL, "", 236, 90, 61, 80, 3, 1, 1, "", ""),
("11527e11135d40c78a986513fc3e9c1e", "Jason McCoy", NULL, "", 496, 172, 148, 162, 3, 6, 4, "", ""),
("86207d35744d45089b161381df58c49a", "Frank Gentile", NULL, "", 120, 36, 45, 36, 3, 0, 0, "United States", ""),
("3e9e2446c40a4a4fa07c6fc74c642058", "Shawn Gregory", NULL, "", 454, 156, 113, 177, 4, 1, 3, "", "");


INSERT INTO fights (fight_id, event_id, left_fighter_id, left_fighter_name, right_fighter_id, right_fighter_name, winner, winner_name, is_main_event, match_, round, time, method, weight_class, referee_id, referee_name)
values
  ("c6473a234486453f9f44126ee323c8fe","43ef5e8994e44f5dafda938028a4f301","06559ee750534044950dfe5ccbe41963","Anderson Silva","41505463edc74e0f844a1bdd5aab762e","Rich Franklin","L","Anderson Silva",True,9,2,"00:1:07","TKO (Knees)","Middleweight","f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
, ("1c0cbfb1b4e54a81941b76161da60a08","43ef5e8994e44f5dafda938028a4f301","391057f419744f358303319ec90a4c60","Tim Sylvia","18a8ecf93ba349848806165f54739a79","Brandon Vera","L","Tim Sylvia",False,8,3,"00:5:00","Decision (Unanimous)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("ae850bab2eba4f749bb08046c22c8174","43ef5e8994e44f5dafda938028a4f301","610a55b0dd7547ea99b623a0b3cdf55a","Alvin Robinson","653a2f841bfe40b18896cc6b7fbec244","Jorge Gurgel","L","Alvin Robinson",False,7,3,"00:5:00","Decision (Unanimous)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("562b0ae6ae3c4ab4b4d89125e0f4d065","43ef5e8994e44f5dafda938028a4f301","8c5ee1d2dc634455b6422b3d6df23a9d","Stephan Bonnar","bb523a0a2a054faa8de1dc47deded099","Eric Schafer","L","Stephan Bonnar",False,6,2,"00:2:47","TKO (Punches)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
, ("54b00c3e268b488cb946797d70651902","43ef5e8994e44f5dafda938028a4f301","d3bd20f7cab844abb5d7ad2d80e974ef","Alan Belcher","5419709cd13f40f7b27f6e1f9db3c036","Kalib Starnes","L","Alan Belcher",False,5,2,"00:1:39","TKO (Doctor Stoppage)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("f020f25c71074640baa18829f58ddfc4","43ef5e8994e44f5dafda938028a4f301","ced60a9d185945ddb868c13702db1a11","Yushin Okami","6703e8402c2a488cb955d9ed4dfd4914","Jason MacDonald","L","Yushin Okami",False,4,3,"00:5:00","Decision (Unanimous)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("2b4f8c3eee94480591dd01be14820481","43ef5e8994e44f5dafda938028a4f301","dad77c2f66884e2abc892b6adfd32d70","Demian Maia","acb2c5bb5dbf42ae8683d950277dc453","Ryan Jensen","L","Demian Maia",False,3,1,"00:2:40","Submission (Rear-Naked Choke)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
, ("28b9f82a5f574ee8a3c544208567c6a3","43ef5e8994e44f5dafda938028a4f301","75ace4766f77422e8a68f286ed8ac84e","Joshua Burkman","da019cbacbc0471db3db381be7022480","Forrest Petz","L","Joshua Burkman",False,2,3,"00:5:00","Decision (Split)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("6895c85c6f70432c9868132cd5d4def8","43ef5e8994e44f5dafda938028a4f301","99e22fe125a5473d9ef45709a03d65ae","Matt Grice","0266c5967e0548638aacbcfb68b3c71d","Jason Black","L","Matt Grice",False,1,3,"00:5:00","Decision (Split)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("34181b739db24b1e9031fdde745ccc5f","ff75ab0c842743da9221de3463506a9b","cb3253c5eb2949e0980868df25c94972","Keith Jardine","4e2635f80cdf483b8560db8e755c3078","Chuck Liddell","L","Keith Jardine",True,9,3,"00:5:00","Decision (Split)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("a449ad3cb532461c9f6be9ebae6d50fb","ff75ab0c842743da9221de3463506a9b","0ed417d7543540278a892fb1d033d516","Forrest Griffin","06ed8c0dcd2242a9a054dd8c2e5fedb3","Mauricio Rua","L","Forrest Griffin",False,8,3,"00:4:45","Submission (Rear-Naked Choke)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("57b7d9e8507e458188a9d581e6be56de","ff75ab0c842743da9221de3463506a9b","a8cf419ea93248858c2a95273a13e152","Jon Fitch","229c7cf64c1048a8aa41ea83413d9b81","Diego Sanchez","L","Jon Fitch",False,7,3,"00:5:00","Decision (Split)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("942c939d2f0a4446806479763403a7d1","ff75ab0c842743da9221de3463506a9b","4262a2d4cbf64714bd87c25b96739ef2","Lyoto Machida","35e5041f62184104baa762e90f18d075","Kazuhiro Nakamura","L","Lyoto Machida",False,6,3,"00:5:00","Decision (Unanimous)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("dbe974e5128f46dc9dacf68f62cc68b7","ff75ab0c842743da9221de3463506a9b","60b810547ecf417fa2e361d0c62c9d32","Tyson Griffin","6daa2b547ec348168eaded2538ceadd0","Thiago Tavares","L","Tyson Griffin",False,5,3,"00:5:00","Decision (Unanimous)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("96c1a1618d644337864fd72f162db606","ff75ab0c842743da9221de3463506a9b","875cf3d4818840e1b95a23d578967c37","Rich Clementi","20ccd4167c7c47a4a25d51a4c462a2c4","Anthony Johnson","L","Rich Clementi",False,4,2,"00:3:05","Submission (Rear-Naked Choke)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("7647774efebe456f9a748bbe1c34f35c","ff75ab0c842743da9221de3463506a9b","73a17290edac447a86fb6f956b848935","Jeremy Stephens","28208ad2b38d43a28f5dbd1eb4131ebd","Diego Saraiva","L","Jeremy Stephens",False,3,3,"00:5:00","Decision (Unanimous)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("ce2cdbe5938944beb83ac7ce34e7f406","ff75ab0c842743da9221de3463506a9b","727f6f5e1b5f43b4bd04ebce560692f9","Christian Wellisch","d9407576d754423bbebabfcbbd394b0b","Scott Junk","L","Christian Wellisch",False,2,1,"00:3:19","Submission (Heel Hook)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("21c3cc0ef57f41ed9b38b3c5be8b968b","ff75ab0c842743da9221de3463506a9b","5afc532bc221480cac2e7b92dc29669b","Matt Wiman","2b84097e9aa84afaaf9b6b3ee7bd8a83","Michihiro Omigawa","L","Matt Wiman",False,1,3,"00:5:00","Decision (Unanimous)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
-- , ("8942ed0983324e30b15eb20ad3632c1a","2956491446074819aa95ee609692130e","2df6b20d6a4541b0b9b66887d32031a3","Kenny Florian","f6f374fda45b40e7b055e1fc846c1461","Din Thomas","L","Kenny Florian",True,9,1,"00:4:31","Submission (Rear-Naked Choke)",null,"3e9e2446c40a4a4fa07c6fc74c642058","Shawn Gregory")
-- , ("84f2f48e5d524aac9ea2857cd405e709","2956491446074819aa95ee609692130e","8fb9592824d4475b9e4db0828047fcc6","Chris Leben","91b7f6915683468b8f9aecec814fba01","Terry Martin","L","Chris Leben",False,8,3,"00:3:56","KO (Punch)",null,"f8e7d718b76e45a98b8b767f0630d06e","Gabe Barahona")
;

```