-- GROUP BY
select
 "bookings"."currency",
  COUNT(*) AS booking_count
from "bookings"
inner join "users"
on "bookings"."userId" = "users".id
where "users"."email" ='rohitprajapati2192003@gmail.com'
group by "bookings"."currency"
order by "booking_count"
limit 5 offset 0;


-- HAVING
select
 "bookings"."currency",
  COUNT(*) AS booking_count
from "bookings"
inner join "users"
on "bookings"."userId" = "users".id
where "users"."email" ='rohitprajapati2192003@gmail.com'
group by "bookings"."currency"
having COUNT(*) > 10
order by "booking_count"
--limit 1 offset 0
;