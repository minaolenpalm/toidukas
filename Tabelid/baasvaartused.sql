--sood
insert into toidupyramiid.gender(id, genName) values(1, 'male');
insert into toidupyramiid.gender(id, genName) values(2, 'female');

--rollid
insert into toidupyramiid.userRoleDesc(id, name, roleDescription) values(1, 'kasutaja', 'tegelane, kes toidupäevikut täidab');
insert into toidupyramiid.userRoleDesc(id, name, roleDescription) values(2, 'nõustaja', 'keegi, kes oma klientide andmetele ligi pääseb');

--aktiivsustasemed
insert into toidupyramiid.activitylevel(id, actName, actValue, actDesc) values(1, 'istuv eluviis', 1.4, 'istuv eluviis tähendab, et liigutakse minimaalselt');
insert into toidupyramiid.activitylevel(id, actName, actValue, actDesc) values(2, 'mõõdukas aktiivsus', 1.6, 'mõõdukus on edu võti!');
insert into toidupyramiid.activitylevel(id, actName, actValue, actDesc) values(3, 'aktiivne eluviis', 1.8, 'aktiivne inimene peab rohkem sööma!');


--baaspyramiid
insert into toidupyramiid.standardpyramiid(mincal, maxcal, g1min, g1max, g2min, g2max, g3min, g3max, g4min, g4max, g5min, g5max, g6min, g6max) values(0, 1400, 5, 6, 6, 7, 2, 2, 3, 3, 3, 4, 0, 2);
insert into toidupyramiid.standardpyramiid(mincal, maxcal, g1min, g1max, g2min, g2max, g3min, g3max, g4min, g4max, g5min, g5max, g6min, g6max) values(1400, 1600, 5, 7, 6, 8, 2, 3, 3, 3, 4, 5, 0, 2);
insert into toidupyramiid.standardpyramiid(mincal, maxcal, g1min, g1max, g2min, g2max, g3min, g3max, g4min, g4max, g5min, g5max, g6min, g6max) values(1600, 1800, 6, 9, 6, 8, 2, 3, 3, 3, 4, 6, 0, 3);
insert into toidupyramiid.standardpyramiid(mincal, maxcal, g1min, g1max, g2min, g2max, g3min, g3max, g4min, g4max, g5min, g5max, g6min, g6max) values(1800, 2000, 7, 9, 6, 8, 2, 3, 3, 4, 6, 7, 0, 4);
insert into toidupyramiid.standardpyramiid(mincal, maxcal, g1min, g1max, g2min, g2max, g3min, g3max, g4min, g4max, g5min, g5max, g6min, g6max) values(2000, 2200, 8, 10, 7, 9, 2, 3, 3, 4, 7, 9, 0, 4);
insert into toidupyramiid.standardpyramiid(mincal, maxcal, g1min, g1max, g2min, g2max, g3min, g3max, g4min, g4max, g5min, g5max, g6min, g6max) values(2200, 2400, 8, 12, 7, 9, 3, 3, 3, 4, 9, 9, 0, 4);
insert into toidupyramiid.standardpyramiid(mincal, maxcal, g1min, g1max, g2min, g2max, g3min, g3max, g4min, g4max, g5min, g5max, g6min, g6max) values(2400, 2600, 10, 14, 7, 10, 3, 3, 3, 4, 9, 9, 0, 4);
insert into toidupyramiid.standardpyramiid(mincal, maxcal, g1min, g1max, g2min, g2max, g3min, g3max, g4min, g4max, g5min, g5max, g6min, g6max) values(2600, 2800, 10, 14, 9, 13, 3, 3, 3, 5, 11, 11, 0, 4);
insert into toidupyramiid.standardpyramiid(mincal, maxcal, g1min, g1max, g2min, g2max, g3min, g3max, g4min, g4max, g5min, g5max, g6min, g6max) values(2800, 3000, 11, 15, 10, 15, 3, 4, 4, 5, 11, 11, 0, 4);
insert into toidupyramiid.standardpyramiid(mincal, maxcal, g1min, g1max, g2min, g2max, g3min, g3max, g4min, g4max, g5min, g5max, g6min, g6max) values(3000, 3200, 11, 16, 11, 15, 3, 4, 5, 6, 12, 13, 0, 4);
insert into toidupyramiid.standardpyramiid(mincal, maxcal, g1min, g1max, g2min, g2max, g3min, g3max, g4min, g4max, g5min, g5max, g6min, g6max) values(3200, 3400, 11, 17, 11, 18, 3, 4, 5, 6, 12, 13, 0, 4);
insert into toidupyramiid.standardpyramiid(mincal, maxcal, g1min, g1max, g2min, g2max, g3min, g3max, g4min, g4max, g5min, g5max, g6min, g6max) values(3400, 9001, 12, 19, 12, 20, 3, 4, 5, 6, 13, 14, 0, 4);


--toidukategooriad
insert into toidupyramiid.prodGroups(id, name, unitcal) values(1, 'Teraviljatooted, kartul', 75);
insert into toidupyramiid.prodGroups(id, name, unitcal) values(2, 'puu- ja köögivili', 30);
insert into toidupyramiid.prodGroups(id, name, unitcal) values(3, 'piimatooted', 110);
insert into toidupyramiid.prodGroups(id, name, unitcal) values(4, 'kala, linnuliha, liha ja muna', 80);
insert into toidupyramiid.prodGroups(id, name, unitcal) values(5, 'Lisatavad toidurasvad, pähklid, seemned, õliviljad', 60);
insert into toidupyramiid.prodGroups(id, name, unitcal) values(6, 'Suhkur ja maiustused, magusad ja soolased näksid', 40);

--toidugrupid
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(1, 'Leivad-saiad', 1);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(2, 'Keedetud teraviljatooted', 1);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(3, 'Teised teraviljatooted', 1);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(4, 'Kartul', 1);


insert into toidupyramiid.prodTypes(id, name, prodgroup) values(5, 'Köögiviljad, sh kaunviljad', 2);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(6, 'Puuviljad ja marjad', 2);

insert into toidupyramiid.prodTypes(id, name, prodgroup) values(7, 'Vedelad piimatooted', 3);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(8, 'Maitsestamata kohupiim või kodujuust', 3);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(9, 'Maitsestamata jogurtid', 3);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(10, 'Juustud ', 3);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(11, 'Koored', 3);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(12, 'Maitsestatud piimatooted', 3);

insert into toidupyramiid.prodTypes(id, name, prodgroup) values(13, 'Kala', 4);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(14, 'Linnuliha', 4);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(15, 'Tooted linnulihast', 4);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(16, 'Liha', 4);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(17, 'Lihatooted', 4);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(18, 'Rupskid ja tooted neist', 4);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(19, 'Muna', 4);

insert into toidupyramiid.prodTypes(id, name, prodgroup) values(20, 'Pähklid-seemned-mandlid', 5);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(21, 'Õliviljad', 5);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(22, 'Või, õli jt rasvad', 5);

insert into toidupyramiid.prodTypes(id, name, prodgroup) values(23, 'Suhkur, mesi, moos, šokolaad, kompvekid', 6);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(24, 'Karastus- ja mahlajoogid', 6);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(25, 'Soolased näksid', 6);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(26, 'Valikpagaritooted', 6);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(27, 'Pudingud, kondenspiim, piimal põhinevad desserdid, sh jäätis', 6);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(28, 'Muud maiustused', 6);
