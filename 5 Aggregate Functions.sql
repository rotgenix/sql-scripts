-- COUNT
select COUNT (id)
from "accounts";

select COUNT (*)
from "accounts";
-- above two queries are same

-- COUNT with alias
select COUNT (distinct "firstName") as Counted
from "accounts";

-- COUNT with alias
select COUNT (id) as Counted
from "accounts";

-- MAX
select MAX (id), "firstName"
from "accounts";

-- MIN
select MIN (id), "firstName"
from "accounts";

-- SUM
select MIN (id)
from "accounts";

-- AVG
select AVG (id)
from "accounts";

-- these are used for mathematical operations


-- PRACTICE
select MAX ("totalAmount")
from "transferOffers";

SELECT MAX("totalAmountCents") AS max_amount
FROM "bookings";

select * from "transferOffers"
where "totalAmount" is null;
--where "id"='f6251a70-cf0c-4ff4-bfa4-f8c3a25a39d1';
