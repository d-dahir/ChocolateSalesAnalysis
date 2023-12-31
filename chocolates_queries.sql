-- Inisghts To Derive

-- Calculating which products have sold the most units
SELECT Product, SUM(Boxes) as Total_Boxes_Sold 
FROM products 
JOIN sales ON products.PID = sales.PID
GROUP BY Product
ORDER BY Total_Boxes_Sold DESC;

-- Calculating the total gross profit generated by each product
SELECT Product, SUM(Amount - (Cost_per_box * Boxes)) as Profit_Margin 
FROM products 
JOIN sales ON products.PID = sales.PID
GROUP BY Product
ORDER BY Profit_Margin DESC;

-- Determining which products have generated the most revenue
SELECT Product, SUM(Amount) AS Total_Sales
FROM products 
JOIN sales ON products.PID = sales.PID
GROUP BY Product
ORDER BY Total_Sales DESC;

-- Identifying regions with the highest total sales revenue
SELECT Region, SUM(Amount) as Total_Sales 
FROM geo 
JOIN sales ON geo.GeoID = sales.GeoID
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Identifying salespersons with the highest total sales revenue
SELECT Salesperson, SUM(Amount) as Total_Sales 
FROM people 
JOIN sales ON people.SPID = sales.SPID
GROUP BY Salesperson
ORDER BY Total_Sales DESC;

-- Counting the number of unique customers each salesperson manages/has sold to
SELECT Salesperson, COUNT(DISTINCT Customers) as Total_Customers 
FROM people 
JOIN sales ON people.SPID = sales.SPID
GROUP BY Salesperson
ORDER BY Total_Customers DESC;

-- Identifying daily sales trends over time 
SELECT SaleDate, SUM(Amount) as Daily_Sales, SUM(Boxes) as Daily_Boxes_Sold 
FROM sales
GROUP BY SaleDate
ORDER BY SaleDate;

-- Understanding monthly sales patterns across the dataset
SELECT YEAR(SaleDate) AS Year, MONTH(SaleDate) AS Month, SUM(Amount) AS Total_Sales
FROM sales
GROUP BY YEAR(SaleDate), MONTH(SaleDate)
ORDER BY Year, Month;

-- Determining on average which products generate the most revenue per box sold
SELECT Product, AVG(Amount/Boxes) as Average_Sale_Per_Box 
FROM products 
JOIN sales ON products.PID = sales.PID
GROUP BY Product
ORDER BY Average_Sale_Per_Box DESC;
