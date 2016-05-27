select * from contacts where JobTitle in ('FAMILY/RELATIVE','OTHER','PATIENT','PHYSICIAN','PROVIDER','RN/TECHNICIAN','SALES REP','COMPETITIOR','FCE','IN HOUSE','MARKETING','PHYS ASSISTANT','SALES MGMT','TRAINING/EDU')
alter table contacts add EPIQJobTitle varchar(255)
alter table contacts drop column EPIQJobTitle
EPIQJobTitle

select distinct JobTitle from contacts where epiqjobtitle is null
select distinct epiqjobtitle from contacts where epiqjobtitle is null

select * from contacts where epiqjobtitle is null

update Contacts 
set EPIQjobtitle = jobtitle where
jobtitle in ('FAMILY/RELATIVE'
,'OTHER',
'PATIENT',
'PHYSICIAN',
'PROVIDER',
'RN/TECHNICIAN',
'SALES REP',
'COMPETITOR',
'FCE',
'IN HOUSE',
'MARKETING',
'PHYS ASSISTANT',
'SALES MGMT',
'TRAINING/EDU')
where epiqjobtitle is null 
update Contacts set epiqjobtitle where epiqjobtitle is null

COMPETITOR
CLINICAL

select jobtitle, epiqjobtitle from contacts where jobtitle = 'CLINICAL'


select jobtitle, epiqjobtitle from contacts where jobtitle = 'competitor'

create table titletranslate(CLJobtitle varchar(255), EPIQTitle varchar(255))

select jobtitle, epiqtitle, epiqjobtitle from contacts join titletranslate on JobTitle = CLJobtitle

update contacts set epiqjobtitle = (select epiqtitle from titletranslate where jobtitle = CLJobtitle)

update Contacts 
set EPIQjobtitle = jobtitle where EPIQjobtitle is null

select JobTitle, epiqjobtitle from contacts 
select JobTitle, epiqjobtitle from contacts where epiqjobtitle is null

update Contacts 
set EPIQjobtitle = 'OTHER' where EPIQjobtitle is null
