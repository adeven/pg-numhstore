SELECT SUM(val::inthstore) FROM (VALUES ('foo=>25, bar=>10'),('foo=>25, bar =>5, baz=>15'))t(val);
SELECT SUM(val::floathstore) FROM (VALUES ('foo=>2.5, bar=>1.0'),('foo=>2.5, bar =>0.5, baz=>1.5'))t(val);