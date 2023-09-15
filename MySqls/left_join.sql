select * from users
left join tweets
on users.id = tweets.user_id
where users.id = 1;

-- Grabbing just the tweets from users.id = 1:
select tweets.tweet from users
left join tweets
on users.id = tweets.user_id
where users.id = 1;

-- return tweets from user with id 2 that they've tagged as favorites:
select first_name, tweet, users.id from users
left join faves
on users.id = faves.user_id
left join tweets
on faves.tweet_id = tweets.id
where users.id = 2;

-- return tweets from user with id 2 or 1 that they've tagged as favorites:
select first_name, tweet, users.id from users
left join faves
on users.id = faves.user_id
left join tweets
on faves.tweet_id = tweets.id
where users.id = 2 or users.id = 1;

-- What query would you run to get all users that are not following the user with id of 2?
SELECT *
FROM users
WHERE users.id NOT IN (
SELECT follower_id
FROM follows
WHERE followed_id = 2
) AND users.id != 2;

-- For example, running the following SQL command in our twitter database will result in the following:
SELECT first_name, tweet
FROM users
LEFT JOIN tweets
ON users.id = tweets.user_id;
-- Notice that this result includes a final row containing Rajon with no associated tweet. 

-- Now if we change the LEFT JOIN command to the JOIN command, the output will be as follows:
SELECT first_name, tweet
FROM users
JOIN tweets
ON users.id = tweets.user_id;
/*
In the second example, Rajon is omitted from the table. When SQL uses the keyword JOIN, it only includes those records that have matches on both sides. It will omit any records that don't have a 'partner'. 
On the other hand, LEFT JOIN will include all the records from the first table (the 'left' table, the first one mentioned when reading from left to right), regardless of whether that record has a matching 
foreign key in the (right) table that we are trying to join to it. 
To summarize, JOIN will only include the intersection of the two tables, whereas LEFT JOIN will include all records from the first table, plus the records from the second table that correspond. 
This is why the JOIN is sometimes called the INNER JOIN, while all the other joins (including LEFT JOIN) are referred to as OUTER JOINs. 
*/


