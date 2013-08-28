CREATE EXTENSION hstore;
CREATE EXTENSION numhstore;

SELECT array_count(ARRAY['de','de','us']);
SELECT hstore_add('a=>1,b=>2'::hstore,'b=>1,c=>2'::inthstore);
SELECT hstore_add('a=>1.3,b=>2.5'::hstore,'b=>1.2,c=>2.4'::floathstore);
SELECT hstore_add('a=>1,b=>2'::hstore,'b=>1,c=>2'::inthstore);
SELECT hstore_sub('a=>2,b=>3'::hstore,'b=>1,c=>2'::inthstore);
SELECT hstore_sub('a=>1.3,b=>2.5'::hstore,'b=>1.2,c=>2.4'::floathstore);
SELECT AVG(store) FROM (VALUES('a=>2, b=4'),('a=>4, b=6 c=>6'::inthstore) )t(store);
SELECT hstore_div('foo=>10, bar => 15'::inthstore, 5);
SELECT hstore_div('foo=>10, bar => 15'::inthstore, 'foo=>5, bar => 3'::inthstore);
SELECT hstore_mul('foo=>10, bar => 15'::inthstore, 5);
SELECT hstore_mul('foo=>10, bar => 15'::floathstore, 2.5);
SELECT hstore_length('foo=>10, bar => 15'::hstore);
SELECT hstore_gt('foo=>10, bar => 15'::hstore,2);
SELECT hstore_sum_up('foo=>10, bar => 15'::inthstore);
SELECT hstore_sum_up('foo=>2.5, bar => 4.5'::floathstore);
SELECT hstore_sum_array(Array['1','1','3'], Array[2,3,5]);