# Tarea 7 
## Cree una segunda tabla que cambia el formato de fecha string a date
```sql
select * from events;

update events set
`date` = replace(`date`,'/','-');

update events set
ufc.events.`date` = DATE_FORMAT(STR_TO_DATE(ufc.events.`date` , '%d-%m-%Y'), '%Y-%m-%d');

update events set
ufc.events.`date` = cast(ufc.events.`date` as date);

create table events2 as( 
select 
event_id
,title
,cast(ufc.events.`date` as date) as `date`
,location
,canceled
from events );

describe events2;

```
## Cree una nueva metrica llamada IMC que calcula el indice de masa cormporal de los luchadores

```sql

select(peso/pow(altura,2))as IMC from (select weight/2.205 as peso,height/100 as altura from fighters f) as tabla;

```