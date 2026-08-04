-- LIKE Operator with wild card patterns

-- email start with 's'
select *
from "users"
where "email" like 's%';

-- email end with 'm'
select *
from "users"
where "email" like '%m';

-- email end with 'gmail.com'
select *
from "users"
where "email" like '%gmail.com';

-- email start with 's' & end with 'm'
select *
from "users"
where "email" like 's%m';

-- email start with 's'
-- BINARY is used to check case sensitivity
select *
from "users"
where BINARY "email" like 'S%';

-- 'a' at second position in email
select *
from "users"
where "email" like '_a%';


-- LIKE Operator with Regular Expressions

-- 'ro' at any position in firstName
-- same as '%ro%'
select *
from "accounts"
where "firstName" ~ 'ro';

-- Starting with 'ro' in firstName
-- same as 'ro%'
select *
from "accounts"
where "firstName" ~ '^ro';

-- Ending with 'eu' in firstName
-- same as '%eu'
select *
from "accounts"
where "firstName" ~ 'eu$';

-- Any pattern in firstName, case insensitive
-- starting with Ry OR anm any where OR ending with ro
select *
from "accounts"
where "firstName" ~* '^Ry|anm|ro$';






