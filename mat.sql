drop source test1 cascade;
create source test1
from avro ocf '/tb/data/tb.root.test1' with (tail = true)
envelope DEBEZIUM;

create materialized view number_of_test1 as
select count(*) from test1;
