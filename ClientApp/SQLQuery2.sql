Create Database LoginDb

GO

USE LoginDb

CREATE TABLE Accounts(
[Id] int PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] nvarchar(50) not null,
[Surname] nvarchar(50) not null,
[City] nvarchar(50) not null,
[Birthday] datetime not null,
[State] nvarchar(50) not null,
[Email] nvarchar(50) not null,
[Username] nvarchar(50) not null Unique,
[Password] nvarchar(50) not null
)

Go

insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Lorie', 'Bennion', 'Ovacik', '2010-10-28', 'İzmir', 'lbennion0@addthis.com', 'lbennion0', '8oZTPa');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Joela', 'Jaumet', 'Ovacik', '1989-04-05', 'İzmir', 'jjaumet1@cocolog-nifty.com', 'jjaumet1', '2E4eMta8');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('North', 'Greenhead', 'Ovacik', '1975-08-12', 'İzmir', 'ngreenhead2@nih.gov', 'ngreenhead2', 'tVZmZdkXnlz');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Marsha', 'Bernon', 'Ovacik', '2006-06-15', 'İzmir', 'mbernon3@csmonitor.com', 'mbernon3', 'DPNH65');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Dukey', 'Noen', 'Ovacik', '2017-05-29', 'İzmir', 'dnoen4@chronoengine.com', 'dnoen4', 'U22lkBcGfpd');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Prudy', 'Palfreyman', 'Ovacik', '2012-04-30', 'İzmir', 'ppalfreyman5@amazon.co.uk', 'ppalfreyman5', 'uP7Y74sEPgx');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Maureene', 'Bonsul', 'Ovacik', '2015-02-28', 'İzmir', 'mbonsul6@paypal.com', 'mbonsul6', 'caBj4u2G4');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Casar', 'Saben', 'Ovacik', '1983-06-03', 'İzmir', 'csaben7@addthis.com', 'csaben7', 'gk7dFaHz');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Jenni', 'Bloan', 'Ovacik', '1982-06-14', 'İzmir', 'jbloan8@columbia.edu', 'jbloan8', 'uGp71KcT');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Daffie', 'Dureden', 'Ovacik', '1986-05-28', 'İzmir', 'ddureden9@1und1.de', 'ddureden9', 'TFxO6AOZm9');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Jerrome', 'Quesne', 'Ovacik', '2021-11-09', 'İzmir', 'jquesnea@wufoo.com', 'jquesnea', '7iRFTW');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Ingeberg', 'Lohmeyer', 'Ovacik', '2012-04-19', 'İzmir', 'ilohmeyerb@jugem.jp', 'ilohmeyerb', 'VM343l');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Ev', 'Denzilow', 'Ovacik', '1993-05-25', 'İzmir', 'edenzilowc@purevolume.com', 'edenzilowc', 'spOU8ok3S');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Margret', 'Jillins', 'Ovacik', '2020-10-09', 'İzmir', 'mjillinsd@google.ru', 'mjillinsd', 'yYSjJYZ');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Amandie', 'Sharphurst', 'Ovacik', '1992-10-10', 'İzmir', 'asharphurste@joomla.org', 'asharphurste', 'uyUwVIv');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Donia', 'Beckley', 'Ovacik', '1993-01-15', 'İzmir', 'dbeckleyf@usatoday.com', 'dbeckleyf', 'oQVvX3C');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Muffin', 'Wardell', 'Ovacik', '1981-07-02', 'İzmir', 'mwardellg@google.com.br', 'mwardellg', 'PmzkYRCU');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Carla', 'Bidnall', 'Ovacik', '1981-10-10', 'İzmir', 'cbidnallh@ocn.ne.jp', 'cbidnallh', 'ZopSFZtSvUkl');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Rebe', 'Budnik', 'Ovacik', '2016-10-01', 'İzmir', 'rbudniki@economist.com', 'rbudniki', 'kdAbiUSS67');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Marci', 'Whye', 'Ovacik', '1980-02-06', 'İzmir', 'mwhyej@acquirethisname.com', 'mwhyej', 'jIuYrWf9AA1');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Katrinka', 'Czaja', 'Ovacik', '2001-08-16', 'İzmir', 'kczajak@geocities.jp', 'kczajak', 'IDJ44ISrV6Z');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Rosalyn', 'Samter', 'Ovacik', '2010-09-30', 'İzmir', 'rsamterl@aboutads.info', 'rsamterl', 'aFe6wc9EBdCj');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Harmony', 'Vankin', 'Ovacik', '2007-01-07', 'İzmir', 'hvankinm@blogtalkradio.com', 'hvankinm', 'CMWezRLFk');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Alfreda', 'Blundin', 'Ovacik', '1996-08-21', 'İzmir', 'ablundinn@washingtonpost.com', 'ablundinn', 'ABu8duD14');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Benedicto', 'Bodiam', 'Ovacik', '2002-09-28', 'İzmir', 'bbodiamo@shareasale.com', 'bbodiamo', 'D4BbQI9Tp6fq');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Orly', 'Cherry', 'Ovacik', '1984-10-11', 'İzmir', 'ocherryp@phpbb.com', 'ocherryp', '4MVivRSgovHL');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Gui', 'Elwood', 'Ovacik', '1979-12-17', 'İzmir', 'gelwoodq@xrea.com', 'gelwoodq', 'asmZ9sal3Hyb');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Nicoli', 'Brightey', 'Ovacik', '1992-05-05', 'İzmir', 'nbrighteyr@archive.org', 'nbrighteyr', 'khby5GvkoR');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('George', 'Reide', 'Ovacik', '2005-12-04', 'İzmir', 'greides@ucoz.com', 'greides', 'oL1re6JAP');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Claudie', 'Mair', 'Ovacik', '2006-03-25', 'İzmir', 'cmairt@mayoclinic.com', 'cmairt', 'cJWOvW');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Roz', 'Rounsivall', 'Ovacik', '1977-08-21', 'İzmir', 'rrounsivallu@wordpress.com', 'rrounsivallu', '6dVjD7TE8');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Felicio', 'Allridge', 'Ovacik', '2011-12-30', 'İzmir', 'fallridgev@bandcamp.com', 'fallridgev', 'C7X2Hf');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Gordon', 'Sherringham', 'Ovacik', '2016-06-03', 'İzmir', 'gsherringhamw@amazon.co.uk', 'gsherringhamw', 'QqQF7EcxR');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Isadore', 'Cann', 'Ovacik', '2015-11-05', 'İzmir', 'icannx@mysql.com', 'icannx', 'XZPqZHlPxZ1');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Dre', 'Jekel', 'Ovacik', '2019-05-26', 'İzmir', 'djekely@google.it', 'djekely', 'yvyx1or');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Andreana', 'Weigh', 'Ovacik', '2022-09-23', 'İzmir', 'aweighz@vinaora.com', 'aweighz', 'HW72vw9j');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Xenia', 'Warder', 'Ovacik', '1977-05-16', 'İzmir', 'xwarder10@live.com', 'xwarder10', 'izM9zDEIR');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Dorena', 'Grealish', 'Ovacik', '2018-01-03', 'İzmir', 'dgrealish11@shop-pro.jp', 'dgrealish11', 'Ih7oTkJ9QZ');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Ariel', 'Jeeks', 'Ovacik', '1990-08-22', 'İzmir', 'ajeeks12@nba.com', 'ajeeks12', 'SjIeCe');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Hollie', 'Petrushka', 'Ovacik', '2006-11-12', 'İzmir', 'hpetrushka13@vk.com', 'hpetrushka13', 'n26mhHP');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Hubey', 'Symcock', 'Ovacik', '1978-12-04', 'İzmir', 'hsymcock14@independent.co.uk', 'hsymcock14', 'yorb6XJ0');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Marion', 'Dumberrill', 'Ovacik', '2020-11-14', 'İzmir', 'mdumberrill15@hugedomains.com', 'mdumberrill15', 'VgHC5wiCgq');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Tobit', 'Meere', 'Ovacik', '1990-02-14', 'İzmir', 'tmeere16@nytimes.com', 'tmeere16', 'z4ANq1d3');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Haley', 'Clavey', 'Ovacik', '2020-10-02', 'İzmir', 'hclavey17@cloudflare.com', 'hclavey17', 'LrlHeFBznO');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Morena', 'Gammet', 'Ovacik', '1986-09-15', 'İzmir', 'mgammet18@constantcontact.com', 'mgammet18', 'oz08QR6lt');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Kimmy', 'Fernehough', 'Ovacik', '1995-08-31', 'İzmir', 'kfernehough19@nationalgeographic.com', 'kfernehough19', 'ADrSpR9');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Kasey', 'Horribine', 'Ovacik', '2021-12-30', 'İzmir', 'khorribine1a@networksolutions.com', 'khorribine1a', 'dYdeX4j');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Penelope', 'Ewbach', 'Ovacik', '2021-06-11', 'İzmir', 'pewbach1b@hp.com', 'pewbach1b', 'Zhwp86NkwFT');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Niven', 'Cleugher', 'Ovacik', '2009-02-11', 'İzmir', 'ncleugher1c@reference.com', 'ncleugher1c', 'dvv1Kb54yfw');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Shir', 'Ligoe', 'Ovacik', '1977-03-12', 'İzmir', 'sligoe1d@example.com', 'sligoe1d', 'JUuo4o73mnM');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Gleda', 'Piff', 'Ovacik', '2005-09-26', 'İzmir', 'gpiff1e@bbc.co.uk', 'gpiff1e', '6UNGyKk');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Teodor', 'Brundall', 'Ovacik', '1994-08-30', 'İzmir', 'tbrundall1f@fotki.com', 'tbrundall1f', 'iiI1sHd3SV');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Petronille', 'Strudwick', 'Ovacik', '2018-04-27', 'İzmir', 'pstrudwick1g@delicious.com', 'pstrudwick1g', 'L6t5U8QI');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Kenon', 'Pierce', 'Ovacik', '2011-03-12', 'İzmir', 'kpierce1h@shareasale.com', 'kpierce1h', 'wCBsHXj');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Germayne', 'Capper', 'Ovacik', '2017-11-12', 'İzmir', 'gcapper1i@weibo.com', 'gcapper1i', 'JlALjtKB2Q');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Baxter', 'Blindermann', 'Ovacik', '1979-05-22', 'İzmir', 'bblindermann1j@utexas.edu', 'bblindermann1j', 'KJfjNPnxmhF');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Lulita', 'Cockley', 'Ovacik', '1990-03-11', 'İzmir', 'lcockley1k@blinklist.com', 'lcockley1k', 'efEC3K');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Prescott', 'Peregrine', 'Ovacik', '2006-07-02', 'İzmir', 'pperegrine1l@techcrunch.com', 'pperegrine1l', 'ltUbbYn');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Gunner', 'Parysowna', 'Ovacik', '1982-03-14', 'İzmir', 'gparysowna1m@latimes.com', 'gparysowna1m', 'NTuCaATe');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Margareta', 'Dougal', 'Ovacik', '1993-08-12', 'İzmir', 'mdougal1n@pen.io', 'mdougal1n', 'GdMWbPv');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Ransom', 'Tappington', 'Ovacik', '1981-10-14', 'İzmir', 'rtappington1o@cyberchimps.com', 'rtappington1o', 'IY4jvLa');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Sile', 'Latehouse', 'Ovacik', '2006-05-15', 'İzmir', 'slatehouse1p@tamu.edu', 'slatehouse1p', 'wxZiNr');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Fara', 'Myerscough', 'Ovacik', '1998-11-28', 'İzmir', 'fmyerscough1q@deviantart.com', 'fmyerscough1q', '0l5N9d');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Leeland', 'Venart', 'Ovacik', '1987-02-16', 'İzmir', 'lvenart1r@nsw.gov.au', 'lvenart1r', 'Voht0Y7oc');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Zelig', 'Wegner', 'Ovacik', '1984-10-06', 'İzmir', 'zwegner1s@jalbum.net', 'zwegner1s', 'Hw3NRgnh');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Court', 'Pagitt', 'Ovacik', '1977-12-05', 'İzmir', 'cpagitt1t@economist.com', 'cpagitt1t', '3wB9N5QsCOc');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Phil', 'Pantlin', 'Ovacik', '1980-03-26', 'İzmir', 'ppantlin1u@smh.com.au', 'ppantlin1u', 'UqCeCdS');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Erda', 'Striker', 'Ovacik', '2004-12-25', 'İzmir', 'estriker1v@hubpages.com', 'estriker1v', 'LrkhcOxS');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Dodi', 'Barnhart', 'Ovacik', '2000-07-09', 'İzmir', 'dbarnhart1w@blogs.com', 'dbarnhart1w', 'ArgPjlDfU');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Caria', 'Kinghorn', 'Ovacik', '2021-04-14', 'İzmir', 'ckinghorn1x@elpais.com', 'ckinghorn1x', 'uVNGk0');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Gwendolen', 'Malam', 'Ovacik', '2011-05-04', 'İzmir', 'gmalam1y@infoseek.co.jp', 'gmalam1y', 'jyL6TD7');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Gretchen', 'Gundry', 'Ovacik', '2000-07-17', 'İzmir', 'ggundry1z@dot.gov', 'ggundry1z', 'tghAQn8SIZ7');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Laurette', 'Saur', 'Ovacik', '2001-07-29', 'İzmir', 'lsaur20@sbwire.com', 'lsaur20', '4gDmnbLSbu');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Malanie', 'Zanelli', 'Ovacik', '1997-07-31', 'İzmir', 'mzanelli21@tmall.com', 'mzanelli21', 'q6zzbCe9lmC');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Tatiania', 'Seakes', 'Ovacik', '1992-09-19', 'İzmir', 'tseakes22@mtv.com', 'tseakes22', 'dJb5PAu');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Kimmy', 'O''Curneen', 'Ovacik', '2008-12-15', 'İzmir', 'kocurneen23@icq.com', 'kocurneen23', '0yOPnK');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Ingrim', 'Trasler', 'Ovacik', '1990-12-14', 'İzmir', 'itrasler24@spotify.com', 'itrasler24', 'gDNB2QinPM');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Corey', 'Marin', 'Ovacik', '2017-12-31', 'İzmir', 'cmarin25@telegraph.co.uk', 'cmarin25', 'mxkGnDJ');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Ewell', 'Keming', 'Ovacik', '2018-08-27', 'İzmir', 'ekeming26@discuz.net', 'ekeming26', 'MwpnzGoymL1o');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Arley', 'Kenner', 'Ovacik', '1978-05-23', 'İzmir', 'akenner27@dell.com', 'akenner27', 'fmEDZcdbj8');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Reeta', 'Hallede', 'Ovacik', '2021-11-13', 'İzmir', 'rhallede28@eepurl.com', 'rhallede28', '0NpQfNo2Fk');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Claire', 'Kilalea', 'Ovacik', '2009-03-11', 'İzmir', 'ckilalea29@squarespace.com', 'ckilalea29', 'Vx8t5IvvvhL6');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Nataline', 'McMonnies', 'Ovacik', '1995-09-03', 'İzmir', 'nmcmonnies2a@so-net.ne.jp', 'nmcmonnies2a', 'as6pbKkY');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Michaella', 'Beckley', 'Ovacik', '2020-12-25', 'İzmir', 'mbeckley2b@europa.eu', 'mbeckley2b', 'Tl0I7vxC');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Scarlett', 'Frary', 'Ovacik', '1975-04-06', 'İzmir', 'sfrary2c@cargocollective.com', 'sfrary2c', '7r5LqM4ET');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Rhody', 'Colum', 'Ovacik', '1997-11-18', 'İzmir', 'rcolum2d@friendfeed.com', 'rcolum2d', 'aZAJ3BnK56E');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Florry', 'Gruszecki', 'Ovacik', '2000-12-14', 'İzmir', 'fgruszecki2e@pagesperso-orange.fr', 'fgruszecki2e', 'aoYy7aT8J');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Hortensia', 'Glading', 'Ovacik', '1989-05-01', 'İzmir', 'hglading2f@360.cn', 'hglading2f', 'zwns6ag2wn');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Sutherlan', 'Columbell', 'Ovacik', '1982-01-08', 'İzmir', 'scolumbell2g@biblegateway.com', 'scolumbell2g', 'R3sYD7');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Annora', 'Longhorne', 'Ovacik', '2004-07-18', 'İzmir', 'alonghorne2h@google.com.br', 'alonghorne2h', 'I42Vs18');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Graehme', 'Smallwood', 'Ovacik', '2021-01-04', 'İzmir', 'gsmallwood2i@github.com', 'gsmallwood2i', 'HQ1p0lkZn');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Rana', 'Yelyashev', 'Ovacik', '1986-02-02', 'İzmir', 'ryelyashev2j@dropbox.com', 'ryelyashev2j', 'WPj2OQLOg');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Cordelia', 'Shapero', 'Ovacik', '1983-06-17', 'İzmir', 'cshapero2k@hatena.ne.jp', 'cshapero2k', 'eSRnEBLEFE9t');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Quintilla', 'MacTeague', 'Ovacik', '1976-12-28', 'İzmir', 'qmacteague2l@mediafire.com', 'qmacteague2l', 'GAs5rP56ZH');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Meaghan', 'Ricketts', 'Ovacik', '1979-04-05', 'İzmir', 'mricketts2m@mediafire.com', 'mricketts2m', 'tuql5Y3');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Brannon', 'Elfes', 'Ovacik', '1989-11-27', 'İzmir', 'belfes2n@indiatimes.com', 'belfes2n', 'LN603fQG2oS');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Moselle', 'Heddan', 'Ovacik', '1975-05-28', 'İzmir', 'mheddan2o@wix.com', 'mheddan2o', 'vmUupoeng');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Gonzalo', 'Bresner', 'Ovacik', '1986-11-15', 'İzmir', 'gbresner2p@bing.com', 'gbresner2p', 'w1FDx2');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Karel', 'Schott', 'Ovacik', '1989-07-27', 'İzmir', 'kschott2q@japanpost.jp', 'kschott2q', 'Y88o0g5G');
insert into Accounts ([Name], [Surname], [City], [BirthDay], [State], [Email], [Username], [Password]) values ('Bernie', 'Parley', 'Ovacik', '1994-06-12', 'İzmir', 'bparley2r@umn.edu', 'bparley2r', '6LwhMpVM');
