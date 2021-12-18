create table customer(
	customer_id INT primary key,
	first_name VARCHAR(100),
	last_name VARCHAR (100)
);

select * from customer;

create table salesperson(
	salesperson_id INT primary key,
	first_name VARCHAR(100),
	last_name VARCHAR (100)
);

select * from salesperson;

create table mechanics(
	mechanic_id INT primary key,
	first_name VARCHAR(100),
	last_name VARCHAR (100)
);

select * from mechanics;

create table parts(
	parts_id serial primary key,
	mechanic_id INT not null,
	foreign key(mechanic_id) references mechanics (mechanic_id)
);

select * from parts;

create table service(
	service_ticket serial primary key,
	mechanic_id INT not null,
	foreign key(mechanic_id) references mechanics (mechanic_id),
	customer_id INT not null,
	foreign key(customer_id) references customer (customer_id)
);

select * from service;

create table vehicle(
	VIN serial primary key,
	model VARCHAR(100),
	make VARCHAR(100),
	year_make VARCHAR(50),
	service_ticket INT not null,
	foreign key(service_ticket) references service (service_ticket),
	customer_id INT not null,
	foreign key(customer_id) references customer (customer_id),
	salesperson_id INT not null,
	foreign key(salesperson_id) references salesperson (salesperson_id)
);

select * from vehicle;



create table service_history(
	serviceH_ID serial primary key,
	Service_details VARCHAR(200),
	VIN INT not null,
	foreign key(VIN) references vehicle (VIN)	
);

select * from service_history;

create table sales_transaction(
	sales_id serial primary key,
	VIN INT not null,
	foreign key(VIN) references vehicle (VIN),	
	salesperson_id INT not null,
	foreign key(salesperson_id) references salesperson(salesperson_id),
	total_amount numeric(10,2)
);

select * from sales_transaction;

ALTER TABLE service ADD total_amount numeric(10,2); 





