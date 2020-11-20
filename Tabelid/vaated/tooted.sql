
create view toidupyramiid.VW_Products as
select tp.id 'prodId', tp.name 'prodName', tp.comment 'prodDescription', tpt.id 'groupID', tpt.name 'groupName', tpt.prodgroup 'catID', tg.name 'catName',  tg.unitcal 'unitCal'  
from toidupyramiid.products tp
left join toidupyramiid.prodtypes tpt on tpt.id=tp.prodtype
left join toidupyramiid.prodgroups tg on tpt.prodgroup=tg.id;


--select * from toidupyramiid.products;
--select * from toidupyramiid.prodgroups;
--select * from toidupyramiid.prodtypes;
--select * from toidupyramiid.vw_products;