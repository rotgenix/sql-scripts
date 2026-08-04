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


