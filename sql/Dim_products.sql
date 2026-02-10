-- categorize products based on their price

SELECT 
    ProductID,  
    ProductName, 
    Price,

    CASE -- Categorizes the products into price categories: Low, Medium, or High
        WHEN Price < 50 THEN 'Low'  
        WHEN Price BETWEEN 50 AND 200 THEN 'Medium'  
        ELSE 'High'  -- If the price is greater than 200, categorize as 'High'
    END AS PriceCategory  

FROM 

    dbo.products;  
