
alter user 'root'@'%' identified with mysql_native_password by 'root';


drop table test1;
create table test1 (id int primary key, name text);

insert test1(id, name)
with  recursive int_seq as (
select 1 as val
union all
select val + 1
from int_seq
where val  < 1000
)
select int_seq.val, 'test' from int_seq;

delete from test1;
