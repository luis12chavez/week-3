/* Find all the clients (first and last name) bulling amounts and charged date */
select clients.first_name, clients.last_name, billing.amount, billing.charged_datetime
from clients
join billing on clients.id = billing.clients_id;

-- list all the domain names and leads (first name and last name) for each site
select sites.domain_name, leads.first_name, leads.last_name
from sites
join leads on leads.id = sites.clients_id;

-- Join ON miltiple tables
-- Get the names of the clients, their domain names and the first names of all the leads generated from those sites.
select clients.first_name as client_first, clients.last_name, sites.domain_name, leads.first_name as leads_first
from clients
join sites on sites.clients_id = clients.id
join leads on leads.sites_id = sites.id;

-- LEFT & RIGHT JOIN
-- List all the clients and the sites each client has, even if the client hasn't landed a site yet
select clients.first_name, clients.last_name, sites.domain_name
from clients
left join sites on clients.id = sites.clients_id;

-- Grouping Rows
-- Group By
-- Sum, Min, Max, AVG
-- Find all the clients ( first and last name) and thier total billing amounts
select clients.first_name, clients.last_name, SUM(billing.amount)
from clients
join billing on clients.id = billing.clients_id
group by clients.id;

-- Group CONCAT
-- List all the domain names associated with each client
select group_concat(' ', sites.domain_name) as domains, clients.first_name, clients.last_name
from clients
join sites on clients.id = sites.clients_id
group by clients.id;


-- Count
-- find the total number of leads for each site
select COUNT(leads.id), sites.domain_name from sites
join leads on leads.sites_id = sites.id
group by sites.id;
