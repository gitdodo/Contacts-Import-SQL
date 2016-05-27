select * From region

ALTER table region add FCRMethod varchar(5)

ALTER table region drop column FCRMethod 

create table region_continent (regionid varchar(2), continent varchar(2))


select * From region join region_continent on ID = regionid

update r set r.FCRMethod = 'EMAIL' from Region as r inner join region_continent rc on r.id = rc.regionid where continent = 'EU'
update region set FCRMethod = 'EPIQ' where FCRMethod is null