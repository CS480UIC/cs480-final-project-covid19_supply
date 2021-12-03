#simple views
create view View1
as
select * 
from product_stock
where available_quantity > 0 && product_id != 000
order by(product_name);

create view View2
as
select * 
from delivery_staff
where delivery_id !='000'
order by(delivery_date);

#aggregate views
create view View3
as
select product_id,lower(product_name),abs(available_quantity) as Available_prod_quantity
from product_stock;

create view View4
as
select delivery_id
from delivery_staff
where delivery_date = curdate()
group by delivery_id
having count(delivery_id)>=1;

#complex views
create view View5
as
select hospital.hospital_name,customer.customer_name
from hospital
cross join
customer;

create view View6
as
SELECT DISTINCT product_name FROM product_stock
  WHERE EXISTS (SELECT * FROM supplier
                WHERE product_stock.supplier_id = supplier.supplier_id);