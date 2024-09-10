# Databricks notebook source
# MAGIC %sql
# MAGIC Create table employees
# MAGIC (id Int, name String, salry Double);

# COMMAND ----------

# MAGIC %sql
# MAGIC Insert into hive_metastore.default.employees 
# MAGIC values
# MAGIC (1,"Shail",3500.0),
# MAGIC (2,"Sarah",4020.5),
# MAGIC (3,"John",2999.3),
# MAGIC (4,"Thomas",4000.3),
# MAGIC (5,"Anna",2500.0),
# MAGIC (6,"Kim",6200.0),
# MAGIC (7,"Sandy",1300.5)
# MAGIC

# COMMAND ----------

# MAGIC %sql

# COMMAND ----------

# MAGIC %sql
# MAGIC select * from employees

# COMMAND ----------

# MAGIC %sql
# MAGIC DESCRIBE DETAIL employees
# MAGIC

# COMMAND ----------

# MAGIC %fs ls 'abfss://unity-catalog-storage@dbstorage7xibjote4rouw.dfs.core.windows.net/2088236524078335/__unitystorage/catalogs/d2b4a899-a81d-4259-969e-883f3fa86d0f/tables/2feb923b-bc6c-40f5-bbed-8ab65123f6fc'
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC Update employees
# MAGIC set salry = salry + 100
# MAGIC where name like 'A%'

# COMMAND ----------

# MAGIC %sql
# MAGIC select * from employees

# COMMAND ----------

# MAGIC %sql
# MAGIC Describe Detail employees
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC SHOW TABLES IN default
