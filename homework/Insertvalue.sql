insert into customer(
	customer_id,
	first_name,
	last_name
) values (
	120,
	'Shaharima',
	'Islam'
);

insert into customer(
	customer_id,first_name,	last_name) 
	values (121, 'Arefin', 'Saikat');
	
insert into salesperson(
	salesperson_id ,first_name,	last_name) 
	values (01, 'Nujbah', 'Arefin');
	
insert into salesperson(
	salesperson_id ,first_name,	last_name) 
	values (02, 'Nashita', 'Arefin');
	
insert into mechanics(
	mechanic_id ,first_name,last_name) 
	values (03, 'Ibrahim', 'Arefin');
	
insert into mechanics(
	mechanic_id ,first_name,last_name) 
	values (04, 'Edha', 'Orhan');
	
insert into parts(
	parts_id, mechanic_id) 
	values (1, 03);
	
insert into parts(
	parts_id, mechanic_id) 
	values (2, 04);
	
insert into service(
	service_ticket, mechanic_id,customer_id) 
	values (1, 03,120);

	
insert into service(
	service_ticket, mechanic_id,customer_id) 
	values (2, 04,121);

insert into vehicle(
	VIN,model,	make ,year_make,service_ticket,customer_id, salesperson_id)
	values (222,'Highlander','Toyota','2020',1,120,01)
	
insert into vehicle(
	VIN,model,	make ,year_make,service_ticket,customer_id, salesperson_id)
	values (223,'Pathfinder','Honda','2021',2,121,02)
	
insert into service_history(
	serviceH_ID, service_details, VIN) 
	values (1,'Wheels and Rims',222);

insert into service_history(
	serviceH_ID, service_details,VIN) 
	values (2,'Oil Change',223);

insert into sales_transaction(
	sales_id,VIN, salesperson_id,total_amount
	values (01,222,01,100);


	
	