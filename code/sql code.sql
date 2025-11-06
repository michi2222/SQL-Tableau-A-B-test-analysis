SELECT 
ROUND((SUM(website_clicks) / SUM(reach)) * 100, 2) AS ctr,
ROUND((SUM(purchase) / SUM(website_clicks)) * 100, 2) AS pcr,
ROUND((SUM(add_to_cart) / SUM(view_content)) * 100, 2) AS atc,
ROUND(SUM(spend_usd) / NULLIF(SUM(purchase), 0), 2) AS cpp
FROM test;


for full data:

SELECT 
'control' as campaign,
ROUND((SUM(website_clicks) / SUM(reach)) * 100, 2) AS ctr,
ROUND((SUM(purchase) / SUM(website_clicks)) * 100, 2) AS pcr,
ROUND((SUM(add_to_cart) / SUM(view_content)) * 100, 2) AS atc,
ROUND(SUM(spend_usd) / NULLIF(SUM(purchase), 0), 2) AS cpp
FROM control

union all 

SELECT 
'test' as campaign,
ROUND((SUM(website_clicks) / SUM(reach)) * 100, 2) AS ctr,
ROUND((SUM(purchase) / SUM(website_clicks)) * 100, 2) AS pcr,
ROUND((SUM(add_to_cart) / SUM(view_content)) * 100, 2) AS atc,
ROUND(SUM(spend_usd) / NULLIF(SUM(purchase), 0), 2) AS cpp
FROM test;