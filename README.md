# ChocolateSalesAnalysis
SQL + PowerBI - Sales Analysis &amp; Visualisation Project 

![Awesome Chocolates Sales Report](https://github.com/deedahir/ChocolateSalesAnalysis/assets/134728340/79d6bd17-0646-4f59-b20c-eff821da3fd5)

Awesome Chocolate Co. uses data-driven insights for growth. This project aims to analyze sales data to answer key queries and return actionable trends and patterns.

**Data**
[Database](awesome-chocolates-data.sql)
Tables:
geo: Geographical data.
people: Salespeople information.
products: Product details and pricing.
sales: Sales transactions.

**Tools**
MySQL for data management and querying.
PowerBI for data visualization.

**Methodology**

- Formulate specific analytical questions.
- Execute SQL queries for data extraction.
- Visualise data in PowerBI.
  
**SQL Queries**
Top Selling Products: Based on quantity and revenue.
```sql
SELECT Product, SUM(Boxes) as Total_Boxes_Sold 
FROM products 
JOIN sales ON products.PID = sales.PID
GROUP BY Product
ORDER BY Total_Boxes_Sold DESC;

```sql
SELECT Product, SUM(Amount) AS Total_Sales
FROM products 
JOIN sales ON products.PID = sales.PID
GROUP BY Product
ORDER BY Total_Sales DESC;

Sales by Region: Highlighting top-performing regions.
Top-performing Salespersons: Based on revenue generated.
Sales Trends: Monthly and daily patterns over time.
Customer Management: Number of unique customers per salesperson.
Profit Margins: Products delivering the best profitability.
Seasonal Patterns: Monthly fluctuations in sales.

[For all the questions and their corresponding queries, see the chocolates_queries.sql file](chocolates_queries.sql)

**Dashboard**
![Awesome Chocolates Sales Report](https://github.com/deedahir/ChocolateSalesAnalysis/assets/134728340/79d6bd17-0646-4f59-b20c-eff821da3fd5)

[For visualised, interactable insights, view the] dashboard here.(https://livemanchesterac-my.sharepoint.com/:u:/g/personal/doualeh_dahir_student_manchester_ac_uk/ETbBclAa4zlElTSZAFhkBEgBmH-Mh_W7Jppe6gIJUAQVFQ?e=LIWIAl)

**Recommendations**
Market Expansion: Capitalize on the success in Canada and New Zealand by further penetrating these markets with tailored marketing strategies and product offerings.
USA Sales Strategy: Investigate why USA sales are not proportional to its population and adapt accordingly.
Product Focus: Build on the success of 'After Nines' with new variations.
Individual Recognition: Reward top salespersons like Andria Kimpton for continued motivation.

**Acknowledgements**
Link to dataset: https://chandoo.org/wp/learn-sql-for-data-analysis/
