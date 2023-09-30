select * from customers
join invoices
on customer.id = invoice.id;
