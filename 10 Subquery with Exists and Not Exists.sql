-- Subquery
select *
from "bookings"
where "userId" = ( 
	select id from "users"
	where "email" ='rohitprajapati2192003@gmail.com'
);


-- EXISTS
-- if subqeury returns even if single row then parent will work
select *
from "bookings"
where exists ( 
	select id from "users"
	where "email" ='rohitprajapati2192003@gmail.com'
);

-- NON EXISTS
-- Just opposite of exists
select *
from "bookings"
where not exists ( 
	select id from "users"
	where "email" ='rohitprajapati2192003@gmail.com'
);