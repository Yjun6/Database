
-- 得到含 RED的 sales_id 编号
# select orders.sales_id
# from orders right join company
# on  orders.com_id = company.com_id
# where company.name = 'RED';

-- 使用sales_id 查找salesperson表中非该编号
select name
from salesperson
where sales_id not in(select orders.sales_id
from orders left join company
on  orders.com_id = company.com_id
where company.name = 'RED');