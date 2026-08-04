-- ORDER BY is used to sort data
-- in ASC/DESC order
-- ORDER BY is used after where clause
select *
from "accounts"
where "firstName" ~* '^Ry|anm|ro$'
order by "createdAt" DESC;


-- DISTINCT
-- in this case we have selected three columns
-- "firstName", "createdAt" & "id"
-- so it will check if all three combined together
-- are distinct not "firstName" alone
select distinct "firstName", "createdAt","id"
from "accounts"
where "firstName" ~* '^Ry|anm|ro$'
order by "createdAt" DESC;

-- this will check only for "firstName"
select distinct "firstName"
from "accounts"
-- where "firstName" ~* '^Ry|anm|ro$'
order by "firstName" ASC;


-- IS NULL & IS NOT NULL
-- returns data where "firstName" IS NULL
select *
from "accounts"
where "firstName" is null
order by "firstName" ASC;

-- returns data where "lastName" IS NOT NULL
select *
from "accounts"
where "lastName" is not null
order by "firstName" ASC;


-- LIMIT & OFFSET
-- without condition
select *
from "accounts"
order by "firstName" asc
limit 10;

-- with condition
select *
from "accounts"
where "lastName" is not null
order by "firstName" asc
limit 10 offset 20;
