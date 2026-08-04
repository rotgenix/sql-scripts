-- AND/OR Operators
select *
from "users"
where "userType" = 1 or "userType" = 3;


-- IN/NOT IN
select *
from "users"
where "userType" in (1,3);

select *
from "users"
where "userType" not in (1,3);


-- BETWEEN/NOT BETWEEN
select *
from "users"
where "userType" BETWEEN 1 and 3;

select *
from "users"
where ("userType" >= 1) and ("userType" <= 3);
-- Above both are equivalent

select *
from "users"
where "userType" NOT BETWEEN 1 and 3;

select *
from "users"
where "email" BETWEEN 'a' and 'c';
-- will return data starts witha a and b only and,
-- if there is string containing only c will be returned

select *
from "users"
where "email" NOT BETWEEN 'a' and 'c';



