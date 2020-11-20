select pg.id 'prodID', pg.name 'prodCat', pt.name 'prodGroup', sum(te.amount) 'unitAmt' from toidupyramiid.events te
left join toidupyramiid.products pp on te.productID=pp.id
left join toidupyramiid.prodTypes pt on pp.prodtype=pt.id
left join toidupyramiid.prodGroups pg on pt.prodgroup=pg.id
where te.userID=1
group by pt.name, pg.name, pg.id
order by pg.id asc;

select pg.id 'prodID', pg.name 'prodCat',  sum(te.amount) 'unitAmt' from toidupyramiid.events te
left join toidupyramiid.products pp on te.productID=pp.id
left join toidupyramiid.prodTypes pt on pp.prodtype=pt.id
left join toidupyramiid.prodGroups pg on pt.prodgroup=pg.id
where te.userID=1
group by  pg.name, pg.id
order by pg.id asc;