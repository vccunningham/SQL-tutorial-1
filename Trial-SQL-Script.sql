Create Table SuperBowlWinners
(ID int not null primary key identity(1, 1),
Teamname nvarchar(30) not null Unique,
Year nvarchar(10) not null,
Division nvarchar(20) not null,
Location nvarchar(20) not null,
SuperBowlMVP nvarchar(80) not null,
Score nvarchar(20) not null);

Insert into SuperBowlWinners(Teamname, Year, Division, Location, SuperbowlMVP)
values ('Kansas City Chiefs', '2019-2020', 'AFC', 'Miami', 'Patrick Mahommes') 

Insert into SuperBowlWinners(Teamname, Year, Division, Location, SuperbowlMVP)
values ('New England Patriots', '2018-2019', 'AFC', 'Atlanta', 'Julian Edelman')

Insert into SuperBowlWinners(Teamname, Year, Division, Location, SuperbowlMVP)
values ('Phildelphia Eagles', '2017-2018', 'NFC', 'Minnieapolis', 'Nick Foles')

Insert into SuperBowlWinners(Teamname, Year, Division, Location, SuperbowlMVP)
values ('New England Patriots', '2016-2017', 'AFC', 'Houston', 'Tom Brady')

Insert into SuperBowlWinners(Teamname, Year, Division, Location, SuperbowlMVP)
values ('Denver Broncos', '2015-2016', 'AFC', 'Santa Clara', 'Von Miller')

Insert into SuperBowlWinners(Teamname, Year, Division, Location, SuperbowlMVP)
values ('New England Patriots', '2014-2015', 'AFC', 'Phoenix', 'Tom Brady')

Insert into SuperBowlWinners(Teamname, Year, Division, Location, SuperbowlMVP)
values ('Seattle Seahawks', '2013-2014', 'NFC', 