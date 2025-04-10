-- Q1. Retrive the distinct count of status from table

select Status, count(*) as status_count from amazon_sale_report group by Status order by status_count desc;

-- Q2. Retrive date wise status

select date, count(Status) from amazon_sale_report group by Date order by Date desc;

-- Q3. Which date has the highest shipped

select Date, count(Status) as Status_count from amazon_sale_report where Status like 
'Shipped' group by Date order by Status_count desc limit 5;

-- Q4. Which date has the highest cancelled

select Date, count(Status) as Status_count from amazon_sale_report where Status like 
'Cancelled' group by Date order by Status_count desc limit 5;

-- Q4. What are shipping service level

select distinct ship_service_level from amazon_sale_report;

-- Q5. Retrive total, maximum, minimum & average amount of sales from the database

select round(sum(Amount)) as Total_Sales, max(Amount) as Max_Sales, round(avg(Amount)) as Avg_Sales,
 min(Amount) as Min_Sales from amazon_sale_report;
 
 -- Q6. Retrive distinct category and there size and there total sales based on size & category
 
 select distinct Category, Size, count(size) as total_size from amazon_sale_report group by Category,Size order by total_size desc;

-- Q7. Retrive State wise total sales

select distinct ship_state, round(sum(Amount)) as Total_Sales from amazon_sale_report group by ship_state order by Total_Sales desc;

-- Q8. Retrive State & city wise total sales 

select distinct  ship_state, ship_city, round(sum(Amount)) as Total_Sales
 from amazon_sale_report group by ship_state, ship_city order by Total_Sales desc;

-- Q9. Give the distinct count of ship service

select distinct ship_service_level, count(*) as Distinct_count from amazon_sale_report group by ship_service_level;





















































































