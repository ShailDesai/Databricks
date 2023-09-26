-- Databricks notebook source
-- MAGIC %sql
-- MAGIC CREATE TABLE employees
-- MAGIC   (id INT, name STRING, salary DOUBLE);

-- COMMAND ----------

-- MAGIC %sql
-- MAGIC INSERT INTO employees
-- MAGIC VALUES
-- MAGIC (1,"adam", 3500.0),
-- MAGIC (2,"kia", 3500.0),
-- MAGIC (3,"sarah", 3500.0),
-- MAGIC (4,"john", 3500.0),
-- MAGIC (5,"amit", 3500.0),
-- MAGIC (6,"desai", 3500.0),
-- MAGIC (7,"shail", 3500.0)
-- MAGIC

-- COMMAND ----------

-- MAGIC %sql
-- MAGIC Select * from  employees;

-- COMMAND ----------

DESCRIBE DETAIL employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'
-- MAGIC

-- COMMAND ----------

Update employees 
SET salary = salary +100
where name like "a%";

-- COMMAND ----------

select * from employees;

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'
-- MAGIC

-- COMMAND ----------

Describe Detail employees

-- COMMAND ----------

Describe HISTORY employees
