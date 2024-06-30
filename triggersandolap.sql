use ezyshop;
-- set sql_safe_update=0;

create trigger quanupdate
before update
on cartwithproducts
for each row
update products set Stock=Stock-(new.quantity-old.quantity) where idProducts=old.prodref_id;


-- TRIGGER 1
create trigger red_quan
after insert
on cartwithproducts
for each row
update products set Stock=Stock-new.quantity where idProducts=new.prodref_id;


-- TRIGGER 2
create trigger create_cart
after insert
on customer
for each row
insert into cart values(new.idcustomer+100,new.State,0,new.idcustomer);


-- TRIGGER 3
create trigger amount
after insert
on cartwithproducts
for each row
update (cart as ca inner join cartwithproducts as cwp on ca.idcart=cwp.cartref_id) inner join products as p on cwp.prodref_id=p.idProducts set ca.amount=ca.amount+p.Price*new.quantity;

-- TRIGGER 4
create trigger deleteamount
after update
on cartwithproducts
for each row
update (cart as ca inner join cartwithproducts as cwp on ca.idcart=cwp.cartref_id) inner join products as p on cwp.prodref_id=p.idProducts set ca.amount=ca.amount-p.Price*cwp.quantity;

create trigger updateamount
after update
on cartwithproducts
for each row
update (cart as c inner join cartwithproducts as cw on c.idcart=cw.cartref_id) inner join products as p on cw.prodref_id=p.idProducts set c.amount=c.amount+(new.quantity-old.quantity)*p.Price;

drop trigger updateamount;

-- olap query1
select Category,ProductName,sum(Stock) from products group by Category,ProductName with rollup;
-- to get stocks of different Products in a category and stock of whole category


-- olap query2
select Category,ProductName,sum(Stock) from products group by Category,ProductName with rollup
union
select Category,ProductName,sum(Stock) from products group by ProductName,Category with rollup;
-- to get stocks of different Products in a category and stock of whole category and specific products as well

-- olap query3
select b.payment,c.address,avg(c.amount) from billing as b inner JOIN cart as c on b.refcartid=c.idcart group by b.payment,c.address with rollup;


-- olap query4
select b.payment,c.address,avg(c.amount) from billing as b inner JOIN cart as c on b.refcartid=c.idcart group by b.payment,c.address with rollup
union
select b.payment,c.address,avg(c.amount) from billing as b inner join cart as c on b.refcartid=c.idcart group by c.address,b.payment with rollup;


show triggers;





