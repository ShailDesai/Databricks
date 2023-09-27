-- Databricks notebook source
Create Table managed_defaults (width Int, length INT, height INT);

-- COMMAND ----------

INSERT INTO managed_defaults
VALUES (2,2,2)

-- COMMAND ----------

-- Create External table
Create Table external_defaults (width Int, length INT, height INT)
LOCATION 'dbfs:/mnt/demo/external_default';



-- COMMAND ----------

INSERT INTO managed_defaults
VALUES (2,2,2)

-- COMMAND ----------

Drop table managed_defaults

-- COMMAND ----------

Drop table external_defaults


-- COMMAND ----------

Create schema new_defaults

-- COMMAND ----------

Describe DATABASE extended new_defaults


-- COMMAND ----------

Use new_defaults; 

Create Table managed_new_defaults (width Int, length INT, height INT);
INSERT INTO managed_new_defaults
VALUES (2,2,2);


Create Table external_new_defaults (width Int, length INT, height INT)
LOCATION 'dbfs:/mnt/demo/external_default';
INSERT INTO external_new_defaults
VALUES (3,4,5);


-- COMMAND ----------

---INSERT INTO managed_new_defaults
---VALUES (2,2,2);

-- COMMAND ----------


