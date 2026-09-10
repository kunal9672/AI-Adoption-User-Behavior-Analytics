-- AI Adoption & User Behavior Analytics
-- SQL Analysis
-- Table: ready_llm_table

-- Total users
SELECT COUNT(*) AS Total_Users
FROM ready_llm_table;

-- Users by country
SELECT Country, COUNT(*) AS User_Count
FROM ready_llm_table
GROUP BY Country
ORDER BY User_Count DESC;

-- Users by AI / LLM
SELECT `AI / LLM Name`, COUNT(*) AS User_Count
FROM ready_llm_table
GROUP BY `AI / LLM Name`
ORDER BY User_Count DESC;

-- Users by subscription plan
SELECT `Plan Type`, COUNT(*) AS User_Count
FROM ready_llm_table
GROUP BY `Plan Type`
ORDER BY User_Count DESC;

-- Users by profession
SELECT Profession, COUNT(*) AS User_Count
FROM ready_llm_table
GROUP BY Profession
ORDER BY User_Count DESC;

-- Users by primary purpose
SELECT `Primary Purpose`, COUNT(*) AS User_Count
FROM ready_llm_table
GROUP BY `Primary Purpose`
ORDER BY User_Count DESC;

-- Usage frequency
SELECT `Usage Frequency`, COUNT(*) AS User_Count
FROM ready_llm_table
GROUP BY `Usage Frequency`
ORDER BY User_Count DESC;

-- Usage context
SELECT `Usage Context`, COUNT(*) AS User_Count
FROM ready_llm_table
GROUP BY `Usage Context`
ORDER BY User_Count DESC;

-- Average daily usage
SELECT AVG(`Daily Usage (Minutes)`) AS Average_Daily_Usage
FROM ready_llm_table;

-- Average satisfaction score
SELECT AVG(`Satisfaction Score`) AS Average_Satisfaction
FROM ready_llm_table;

-- Average response quality and accuracy
SELECT AVG(`Response Quality Rating`) AS Average_Response_Quality,
       AVG(`Accuracy Rating`) AS Average_Accuracy
FROM ready_llm_table;

-- Recommendation split
SELECT `Would Recommend`, COUNT(*) AS User_Count
FROM ready_llm_table
GROUP BY `Would Recommend`
ORDER BY User_Count DESC;

-- Users by age group
SELECT `Age Group`, COUNT(*) AS User_Count
FROM ready_llm_table
GROUP BY `Age Group`
ORDER BY User_Count DESC;

-- Preferred AI feature
SELECT `Preferred AI Feature`, COUNT(*) AS User_Count
FROM ready_llm_table
GROUP BY `Preferred AI Feature`
ORDER BY User_Count DESC;

-- AI / LLM and subscription plan
SELECT `AI / LLM Name`, `Plan Type`, COUNT(*) AS User_Count
FROM ready_llm_table
GROUP BY `AI / LLM Name`, `Plan Type`
ORDER BY User_Count DESC;

-- Average satisfaction by country
SELECT Country,
       AVG(`Satisfaction Score`) AS Average_Satisfaction
FROM ready_llm_table
GROUP BY Country
ORDER BY Average_Satisfaction DESC;

-- Users by month
SELECT `Year`, `Month`, COUNT(*) AS User_Count
FROM ready_llm_table
GROUP BY `Year`, `Month`
ORDER BY `Year`, `Month`;
