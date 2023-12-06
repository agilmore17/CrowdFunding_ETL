CREATE TABLE campaign (
 	cf_id INT not null,
	contact_id INT not null,
	company_name VARCHAR not null,
	description VARCHAR not null,
	goal INT not null,
	pledged INT not null,
	outcome VARCHAR not null,
	backers_count INT not null,
	country VARCHAR not null,
	currency VARCHAR not null,	
	launch_date VARCHAR not null,
	end_date VARCHAR not null,
	category_id VARCHAR not null,
	subcategory_id VARCHAR not null,
		primary key (cf_id),
		foreign key (contact_id) references contacts(contact_id),
		foreign key (category_id) references category(category_id),
		foreign key (subcategory_id) references subcategory(subcategory_id)
);

CREATE TABLE contacts(
	contact_id INT not null, 
	first_name VARCHAR not null,
	last_name VARCHAR not null,
	email VARCHAR not null,
		primary key (contact_id)
);

CREATE TABLE category(
	category_id VARCHAR not null, 
	category VARCHAR not null,
		primary key(category_id)
);

CREATE TABLE subcategory(
	subcategory_id VARCHAR not null, 	
	subcategory VARCHAR not null, 
	primary key (subcategory_id)
);

select * from campaign 
select * from subcategory
select * from category
select * from contacts
