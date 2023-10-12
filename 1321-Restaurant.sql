with uniCustomer as
(
  select visited_on, sum(amount) as amount
  from Customer 
  group by visited_on

)

select c1.visited_on, sum(c2.amount)as amount, round(sum(c2.amount)/7, 2) as average_amount
from uniCustomer c1, uniCustomer c2
where datediff(c1.visited_on, c2.visited_on) between 0 and 6 and datediff(c1.visited_on, (select min(visited_on) from Customer)) >= 6
group by c1.visited_on
order by c1.visited_on
;
