-- PRACTICE
select MAX ("totalAmount")
from "transferOffers";

SELECT MAX("totalAmountCents") AS max_amount
FROM "bookings";

select * from "transferOffers"
where "totalAmount" is null;
--where "id"='f6251a70-cf0c-4ff4-bfa4-f8c3a25a39d1';

SELECT * FROM "accounts"
WHERE "firstName" LIKE '%ta%'
order by "createdAt";

SELECT * FROM "accounts"
WHERE "firstName" ~* '^ta|ta$'
order by "createdAt"
limit 10 offset 10;


