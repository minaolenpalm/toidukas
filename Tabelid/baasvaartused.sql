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
