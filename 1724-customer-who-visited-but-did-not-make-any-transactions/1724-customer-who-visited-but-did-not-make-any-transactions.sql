# Write your MySQL query statement below
select v.customer_id,count(v.customer_id) as count_no_trans
from visits as v left join transactions as t
on v.visit_id=t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id; 
