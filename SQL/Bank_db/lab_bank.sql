USE bank;

# 1 get the id values of the first 5 clients from district_id with a value equal to 1
SELECT client_id
FROM client
ORDER BY district_id
LIMIT 5;

# 2 in the client table, get an id value of the last client where the district_id equals to 72
SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

# 3 get the three lowest amounts in the loan table
SELECT amount
FROM loan
ORDER BY amount
LIMIT 3;

# 4 what are the possible values for status, ordered alphabetically in ascending order in the loan table?
SELECT DISTINCT(status)
FROM loan
ORDER BY status;

# 5 what's the loan id of the highest payment received in the loan table?
SELECT loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

# 6 what's the loan amount of the lowest 5 account ids in the loan table? Show the account id and the amount
SELECT account_id, amount
FROM loan
ORDER BY account_id
LIMIT 5;

# 7 what are the top 5 account ids with the lowest loan amount that have a loan duration of 60 in the loan table?
SELECT account_id
FROM loan
WHERE duration = 60
ORDER BY amount
LIMIT 5;

# 8 what are the unique values of k symbol in the order table?
SELECT DISTINCT(k_symbol)
FROM `order`
ORDER BY k_symbol;

# 9 in the order table, what are the order ids of the client with the account id 34?
SELECT order_id
FROM `order`
WHERE account_id = 34
ORDER BY order_id;

# 10 in the order table, which account ids were responsible for orders between order id 29540 and 29560 (inclusive)?
SELECT DISTINCT(account_id)
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
ORDER BY account_id;

# 11 in the order table , what are the individual amounts that were sent to account id 30067122
SELECT DISTINCT(amount)
FROM `order`
WHERE account_to = 30067122;

# 12 in the trans table show the trans_id, date, type and amount of the forst 10 transactions from account id 793 in chronological order, from newest to oldest
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

# 13 in the client table, of all districts with a district id lower than 10, how many clients are from each district id?
SELECT district_id, count(district_id)
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id;

# 14 in the card table , how many cards exist for each type? Rank the results starting with the most frequent type
SELECT type, count(type) AS total
from CARD
GROUP BY type
ORDER BY total DESC;

# 15 using the loan table, print the top 10 account ids based on the sum of all of their loan amounts
SELECT account_id, sum(amount) AS total_loan_amount
FROM loan
GROUP BY account_id
ORDER BY total_loan_amount DESC
LIMIT 10;

# 16 in the loan table, retrieve the number of loans issued for each day before 930907, ordered by date in descending order
SELECT date, count(date)
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC
LIMIT 10;

# 17 in the loan table, for each day in December 1997, count the numbers of loans issued for each unique loan duration, ordered by date and duration, both in ascending order.
# ???????????????????????????????????????????????
SELECT date, duration
FROM loan
WHERE date BETWEEN 971201 AND 980101
ORDER BY date, duration;

# 18 in the trans table for account id 396, syum the amount of transactions for each type (VYDAJ = outgoing, PRIJEM = incoming). 
# Your output should have the account id, type and the sum of amount named as total amount. Sort alphabetically by type.

SELECT account_id, type, count(type) as total
FROM trans
GROUP BY account_id
ORDER BY type;