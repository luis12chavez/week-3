select * from users_schema;

/* Adding three users */
insert into users_schema (first_name, last_name, email, updated_at, created_at)
values 	('Bob', 'Ross', 'BR@gmail.com', now(), now() ),
		('Jollie', 'Willow', 'JW@gmail.com', now(), now()),
		('Joe', 'Smith', 'JS@gmail.com', now(), now());

/* retrieving all users by id number*/
select id from users_schema;

/* retrieving all users by email */
select email from users_schema;

/* grabbing last user by id*/
select * from users_schema;
select id from users_schema
where id = 3;

/* Updating user with id =3 to have last name 'Pancakes' */
update users_schema
set last_name = 'Pancakes'
where id = 3;	

/* Deleting user with id = 2 */
delete from users_schema
where id = 2;


/* getting all users by their first name */
select * from users_schema
order by first_name; 

/* getting all users by thier first name, desc */
select * from users_schema
order by first_name desc; 