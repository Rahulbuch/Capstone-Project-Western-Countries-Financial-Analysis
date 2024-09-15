Create Database Capstone_Project;

Use Capstone_Project;

Select * from western_countries_financial_data;

-- Product wise Total Sales

Select Product,
Round(Sum(Sales),2) As Total_Sales
from western_countries_financial_data
group by Product
order by Total_sales desc;

-- Segment wise Profit

Select Segment, Round(Sum(Profit),2) As Total_Profit
From western_countries_financial_data
group by Segment
Order by Total_Profit Desc;


-- Yearly sales

Select Year, Round(Sum(Sales),2) As Total_Sales
From western_countries_financial_data
group by Year
Order by Total_Sales Desc;

-- Country wise Sales

Select Country, Round(Sum(Sales),2) as Total_Sales
From western_countries_financial_data
group by Country
Order by Total_Sales Desc;

/*Profit & sales by Qtr*/

SELECT 
	CASE
		WHEN Month_Number BETWEEN 1 AND 3 THEN 'Q1'
		WHEN Month_Number BETWEEN 4 AND 6 THEN 'Q2'
		WHEN Month_Number BETWEEN 7 AND 9 THEN 'Q3'
		ELSE 'Q4'
	END AS Quarter,
	Round(Sum(Sales), 2) AS Total_Sales,
	Round(Sum(Profit), 2) AS Total_Profit
FROM
	Western_Countries_Financial_Data
GROUP BY CASE
		WHEN Month_Number BETWEEN 1 AND 3 THEN 'Q1'
		WHEN Month_Number BETWEEN 4 AND 6 THEN 'Q2'
		WHEN Month_Number BETWEEN 7 AND 9 THEN 'Q3'
		ELSE 'Q4'
	END
ORDER BY Quarter;  

/* Yearly profit*/

Select Year , Round(Sum(Profit),2) As Total_Profit
From western_countries_financial_data
group by Year
Order by Total_Profit;

-- Top 2 countries

Select country,Round(Sum(Sales),2) as Total_Sales
from western_countries_financial_data
group by Country
order by Total_Sales desc
Limit 2;

-- Bottom 3 products

Select Product , round(Sum(Sales),2) as Total_Sales
From western_countries_financial_data
group by Product
Order By Total_Sales
Limit 3;

-- Product wise discount

Select Product, Round(Sum(Discounts),2) As Total_Discounts
From western_countries_financial_data
Group by Product
Order By Total_Discounts Desc;

-- No. of units sold year over year

Select Year , Round(Sum(Sales),2) As Total_Sales
From western_countries_financial_data
Group by Year;

-- Segment wise Product Sales

Select Segment, Product, Round(Sum(Sales),2) AS Total_Sales
From western_countries_financial_data
Group By Segment, Product
Order by Segment,Total_Sales desc;

-- Segment wise product wise profit

Select Segment, Product, Round(Sum(Profit),2) AS Total_Profit
From western_countries_financial_data
Group By Segment, Product
Order by Segment,Total_Profit desc;




