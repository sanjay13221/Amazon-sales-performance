use amazon;

select * from amazon_sales_performance_2025;


select sum(revenue) from amazon_sales_performance_2025;


select profit from amazon_sales_performance_2025 where region = 'asia';


select * from amazon_sales_performance_2025 where Order_ID between 9100 and 9200;


select * from amazon_sales_performance_2025 where country like 'c%';


select country,avg(units_sold) from amazon_sales_performance_2025 group by country;


select order_id,region,month,units_sold,
case
when units_sold > 200 then 'good'
when units_sold between 100 and 200 then 'fair'
else 'need to imrove'
end as case_survey from amazon_sales_performance_2025; 


select region,units_sold,profit from amazon_sales_performance_2025 where marketplace = 'amazon.it';

select * from amazon_sales_performance_2025 where order_status = 'delivered';


select country,sum(profit) as total_profit from amazon_sales_performance_2025 group by country order by total_profit desc limit 5;


