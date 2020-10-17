--sood
insert into toidupyramiid.gender(id, genName) values(1, 'male');
insert into toidupyramiid.gender(id, genName) values(2, 'female');

--rollid
insert into toidupyramiid.userRoleDesc(id, name, roleDescription) values(1, 'kasutaja', 'tegelane, kes toidup�evikut t�idab');
insert into toidupyramiid.userRoleDesc(id, name, roleDescription) values(2, 'n�ustaja', 'keegi, kes oma klientide andmetele ligi p��seb');

--aktiivsustasemed
insert into toidupyramiid.activitylevel(id, actName, actValue, actDesc) values(1, 'istuv eluviis', 1.4, 'istuv eluviis t�hendab, et liigutakse minimaalselt');
insert into toidupyramiid.activitylevel(id, actName, actValue, actDesc) values(2, 'm��dukas aktiivsus', 1.6, 'm��dukus on edu v�ti!');
insert into toidupyramiid.activitylevel(id, actName, actValue, actDesc) values(3, 'aktiivne eluviis', 1.8, 'aktiivne inimene peab rohkem s��ma!');

--toidukategooriad
insert into toidupyramiid.prodGroups(id, name, unitcal) values(1, 'Teraviljatooted, kartul', 75);
insert into toidupyramiid.prodGroups(id, name, unitcal) values(2, 'puu- ja k��givili', 30);
insert into toidupyramiid.prodGroups(id, name, unitcal) values(3, 'piimatooted', 110);
insert into toidupyramiid.prodGroups(id, name, unitcal) values(4, 'kala, linnuliha, liha ja muna', 80);
insert into toidupyramiid.prodGroups(id, name, unitcal) values(5, 'Lisatavad toidurasvad, p�hklid, seemned, �liviljad', 60);
insert into toidupyramiid.prodGroups(id, name, unitcal) values(6, 'Suhkur ja maiustused, magusad ja soolased n�ksid', 40);

--toidugrupid
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(1, 'Leivad-saiad', 1);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(2, 'Keedetud teraviljatooted', 1);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(3, 'Teised teraviljatooted', 1);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(4, 'Kartul', 1);


insert into toidupyramiid.prodTypes(id, name, prodgroup) values(5, 'K��giviljad, sh kaunviljad', 2);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(6, 'Puuviljad ja marjad', 2);

insert into toidupyramiid.prodTypes(id, name, prodgroup) values(7, 'Vedelad piimatooted', 3);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(8, 'Maitsestamata kohupiim v�i kodujuust', 3);
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

insert into toidupyramiid.prodTypes(id, name, prodgroup) values(20, 'P�hklid-seemned-mandlid', 5);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(21, '�liviljad', 5);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(22, 'V�i, �li jt rasvad', 5);

insert into toidupyramiid.prodTypes(id, name, prodgroup) values(23, 'Suhkur, mesi, moos, �okolaad, kompvekid', 6);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(24, 'Karastus- ja mahlajoogid', 6);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(25, 'Soolased n�ksid', 6);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(26, 'Valikpagaritooted', 6);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(27, 'Pudingud, kondenspiim, piimal p�hinevad desserdid, sh j��tis', 6);
insert into toidupyramiid.prodTypes(id, name, prodgroup) values(28, 'Muud maiustused', 6);
