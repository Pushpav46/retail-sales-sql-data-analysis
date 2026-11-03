--check table is alreay exists

 DROP TABLE IF EXISTS retail_sales;

--Create a new table with same column name
  create table retail_sales(
	transactions_id	int primary key,
	sale_date date,
	sale_time time,
	customer_id	int,
	gender varchar(15),
	age	int,
	category varchar(25),
	quantiy int,
	price_per_unit float,	
	cogs float,
	total_sale float
  );

--count the number of rows
  select count (*) from retail_sales;

--to show the data set
  select * from retail_sales;

-- Data cleansing

--To check Null values 

  select * from retail_sales
  where transactions_id is null
  or sale_date is null
  or sale_time	is null
  or customer_id is null 
  or gender is null  
  or category is null
  or quantiy is null 
  or price_per_unit is null 
  or cogs is null 
  or total_sale is null ;
  
--Delete Null values

  delete from retail_sales 
  where transactions_id is null
  or sale_date is null
  or sale_time	is null
  or customer_id is null 
  or gender is null  
  or category is null
  or quantiy is null 
  or price_per_unit is null 
  or cogs is null 
  or total_sale is null ;

  -- Data Analysis & Business Key Problems 

-- My Analysis & Findings
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'

	select * from retail_Sales
	where sale_date = '2022-11-05';

/* Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' 
	and the quantity sold is more than 4 in the month of Nov-2022 */

	select * from retail_sales
	where category = 'Clothing'
	and to_char(sale_date, 'yyyy-mm') = '2022-11'
	and quantiy >= 4 ;

-- Q.3 Write a SQL query to calculate the total sales (total_sale) and total_orders for each category.

	select category , 
	sum(total_sale) as total_sales_category ,
	count (*) as total_orders
	from retail_sales
	group by category ;
	
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

	select category , 
	round(AVG(age),2) as customers_avg_age
	from retail_Sales
	where category = 'Beauty'
	group by category;
	
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

	select * from retail_sales
	where total_sale >= 1000;
	
/* Q.6 Write a SQL query to find the total number of transactions (transaction_id) 
   made by each gender in each category.*/

	select gender, category ,
	count (*) as no_transactions
	from retail_sales
	group by gender,
	category 
	order by gender;

/*Q.7 Write a SQL query to calculate the average sale for each month. 
Find out best selling month in each year*/
	select 
	extract (year from sale_date) as year ,
	extract (month from sale_date) as month,
	round(avg(total_sale)) as avg_sales,
	rank () over (partition by extract (year from sale_date)
	order by round(avg(total_sale)) DESC ) as Rank
	from retail_sales
	group by 1, 2 
	order by 1, 3 DESC;
	
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
	select customer_id ,
	sum (total_sale) as highest_sale
	from retail_sales
	group by 1
	order by highest_sale desc
	limit 5 ;
	
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

	select count(distinct(customer_id)) as unique_cus,
	category 
	from retail_sales
	group by category ;
	
/* Q.10 Write a SQL query to create each shift and number of orders 
(Example Morning <=12, Afternoon Between 12 & 17, Evening >17*/
with hourly_shift
as
(
	select * ,
	Case
		when extract(hour from sale_time ) < 12  then 'Morning'
		when extract(hour from sale_time ) between 12 and 17 then 'Afternoon'
		else 'Evening'
	end as shift
	from retail_sales
)
select shift,
	count(*) as total_orders
	from hourly_shift
	group by shift
	;

-- End of Exploration
