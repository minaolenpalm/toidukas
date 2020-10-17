--kasutajad
insert into toidupyramiid.users(email, fullname, birthdate, gender, height, weight, activityLevel, userpassword)
values('risto@palm.ee', 'Risto', '19900921', 1, 198, 110, 1, 'parool1');
insert into toidupyramiid.users(email, fullname, birthdate, gender, height, weight, activityLevel, userpassword)
values('rene@reede.ee', 'Rene', '19940121', 1, 190, 90, 3, 'parool2');
insert into toidupyramiid.users(email, fullname, birthdate, gender, height, weight, activityLevel, userpassword)
values('ellen@turk.ee', 'Ellen Türk', '19880501', 2, 160, 60, 2, 'parool3');

insert into toidupyramiid.users(email, fullname, userpassword)
values('kiki@miki.ee', 'Kiki Miki', 'parool3');


--toidud
insert into toidupyramiid.products(name, unitVal, unitType, prodType, picLink, comment) 
values('rukkileib, täisterajahust leib, seemneleib', 30, 'g', 1, 'leib.jpg', 'Eelistada seda gruppi järgmistele, Varieerida');
insert into toidupyramiid.products(name, unitVal, unitType, prodType, picLink, comment) 
values('keedetud riis', 70, 'g', 2, 'riis.jpg', 'Eelistada täisteratooteid');
insert into toidupyramiid.products(name, unitVal, unitType, prodType, picLink, comment) 
values('kartulipuder', 85, 'g', 4, 'kartulipuder.jpg', 'Eelistada seda gruppi, Kartulipudru puhul arvestada vajadusel juurde lisatud piim- ja rasvaineportsionid');

--rollid
insert into toidupyramiid.userRoles(userID, roleID) values(1, 2);
insert into toidupyramiid.userRoles(userID, roleID) values(1, 1);
insert into toidupyramiid.userRoles(userID, roleID) values(2, 1);
insert into toidupyramiid.userRoles(userID, roleID) values(3, 1);
insert into toidupyramiid.userRoles(userID, roleID) values(4, 2);

insert into toidupyramiid.userRelationships(customerUserID, consultantUserID) values(2, 1);
insert into toidupyramiid.userRelationships(customerUserID, consultantUserID) values(1, 4);
insert into toidupyramiid.userRelationships(customerUserID, consultantUserID) values(3, 1);

