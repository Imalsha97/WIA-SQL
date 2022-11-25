
select * from  purchase_order_tab;


select * from  purchase_order_line_tab;

select  purchase_order_line from purchase_order_line_tab
where  purchase_order = 'Received'
or purchase_order = 'Released'


