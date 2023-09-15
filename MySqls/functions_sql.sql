-- My SQL Functions

-- Text
-- CONCAT()
select concat('Mr. ',first_name, ' ', last_name) as full_name, email from clients;
-- CONCAT_WS()
select concat_ws('+',first_name, last_name, 'TEST', 'TEST2') as full_name, email from clients;
-- LENGTH()
select length(last_name) as last_len from clients;
-- LOWER()
select lower(first_name) as first_lowercase from clients;


-- DATE FUNCTIONS:
-- HOUR
select hour(joined_datetime) as date_hour, joined_datetime from clients; 
-- DAYNAME()
select dayname(joined_datetime) as day_name, joined_datetime from clients; 
-- MONTH()
select month(joined_datetime) as month_number, joined_datetime from clients; 
-- NOW()
select now() as right_now;  
-- DATE_FORMAT()
select date_format(joined_datetime, '%W %M %e, %Y')  from clients; 
 