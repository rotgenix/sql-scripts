-- Joins: INNER/LEFT/RIGHT/CROSS JOIN

-- TEMPLATE Query
-- select columns
-- from table1
-- inner join table2
-- on table1.col_name = table2.col_name;

-- PRACTICE: INNER JOIN
-- Only data available in both tables
-- no table data if foreign key/row is missing
-- if userId(foreign key) has empty value it will not return that row
select *
from "packageBookings"
inner join "users"
on "packageBookings"."userId"="users".id
order by "packageBookings"."createdAt" DESC;

select *
from "packageBookings"
inner join "users"
on "users"."id"="packageBookings"."userId"
order by "packageBookings"."createdAt" DESC;

-- with where
select *
from "packageBookings"
inner join "users"
on "packageBookings"."userId"="users".id
where 
	"users"."email" = 'rohitprajapati2192003@gmail.com'
order by "packageBookings"."createdAt" DESC;

select *
from "packageBookings"
inner join "users" on "users"."id"="packageBookings"."userId"
where
	"users"."email" = 'rohitprajapati2192003@gmail.com'
order by "packageBookings"."createdAt" DESC;

-- using Alias
select *
from "packageBookings" "pb"
inner join "users" "u"
on "u"."id"="pb"."userId"
where
	"u"."email" = 'rohitprajapati2192003@gmail.com'
order by "pb"."createdAt" DESC;



-- PRACTICE: LEFT JOIN
-- Common data available in both tables
-- and will return all data from table1
-- if userId(foreign key) has empty value, then still it will return that row
select *
from "packageBookings"
left join "users"
on "packageBookings"."userId"="users".id
order by "packageBookings"."createdAt" DESC;

select *
from "packageBookings"
left join "users"
on "users"."id"="packageBookings"."userId"
order by "packageBookings"."createdAt" DESC;

-- using Alias
select *
from "packageBookings" "pb"
left join "users" "u"
on "u"."id"="pb"."userId"
order by "pb"."createdAt" DESC;





-- PRACTICE: RIGHT JOIN
-- Common data available in both tables
-- and will return all data from table2
-- if userId(primary key) is not foreign key in table1, then still it will return that row
select *
from "packageBookings"
RIGHT join "users"
on "packageBookings"."userId"="users".id
order by "packageBookings"."createdAt" DESC;

select *
from "packageBookings"
RIGHT join "users"
on "users"."id"="packageBookings"."userId"
order by "packageBookings"."createdAt" DESC;

-- using Alias
select *
from "packageBookings" "pb"
RIGHT join "users" "u"
on "u"."id"="pb"."userId"
order by "pb"."createdAt" DESC;




-- PRACTICE: CROSS JOIN
-- No need of Primary and foreign keys
-- it join all rows of table1 to table2, one by one

select *
from "packageBookings"
CROSS join "users"
order by "packageBookings"."createdAt" DESC;

select *
from "packageBookings"
CROSS join "users"
order by "packageBookings"."createdAt" DESC;

-- using Alias
select *
from "packageBookings" "pb"
CROSS join "users" "u"
order by "pb"."createdAt" DESC;
