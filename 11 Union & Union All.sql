-- UNION
-- removes the duplicate columns
select
	"bookings"."id",
	"bookings"."bookingNumber"
from "bookings"
inner join "users"
on "bookings"."userId" = "users".id
where "users"."email" ='rohitprajapati2192003@gmail.com'
UNION
select
	"packageBookings".id,
	"packageBookings"."packageBookingNumber"
from "packageBookings"
inner join "users"
on "packageBookings"."userId" = "users".id
where "users"."email" ='rohitprajapati2192003@gmail.com';


-- UNION AL
-- keeps all the records even duplicate
select
	"bookings"."id",
	"bookings"."bookingNumber"
from "bookings"
inner join "users"
on "bookings"."userId" = "users".id
where "users"."email" ='rohitprajapati2192003@gmail.com'
union all
select
	"packageBookings".id,
	"packageBookings"."packageBookingNumber"
from "packageBookings"
inner join "users"
on "packageBookings"."userId" = "users".id
where "users"."email" ='rohitprajapati2192003@gmail.com';

