# Databricks notebook source
# MAGIC %sql
# MAGIC USE hive_metastore.default;

# COMMAND ----------

# MAGIC %sql
# MAGIC CREATE TABLE employees (
# MAGIC     id INT,
# MAGIC     name STRING,
# MAGIC     salary FLOAT
# MAGIC );

# COMMAND ----------

# MAGIC %sql 
# MAGIC
# MAGIC
# MAGIC ALTER TABLE employees ADD COLUMN salary DOUBLE;
# MAGIC
# MAGIC
# MAGIC
# MAGIC update employees
# MAGIC set salary = salary + 1000
# MAGIC where name like '%S'

# COMMAND ----------

# MAGIC %sql
# MAGIC describe detail employees
# MAGIC

# COMMAND ----------

# MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

# COMMAND ----------

# MAGIC %sql
# MAGIC select * from employees

# COMMAND ----------

# MAGIC %sql
# MAGIC describe history employees
