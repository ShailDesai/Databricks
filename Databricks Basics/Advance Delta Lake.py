# Databricks notebook source
# MAGIC %sql
# MAGIC USE hive_metastore.default;

# COMMAND ----------

# MAGIC %sql
# MAGIC Select * from employees@v1

# COMMAND ----------

# MAGIC %sql
# MAGIC delete from employees

# COMMAND ----------

# MAGIC %sql
# MAGIC select * from employees

# COMMAND ----------

# MAGIC %sql
# MAGIC Restore Table employees to VERSION AS of  1
# MAGIC
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC select * from employees

# COMMAND ----------

# MAGIC %sql 
# MAGIC describe history employees

# COMMAND ----------

# MAGIC %sql
# MAGIC Optimize employees Zorder by id

# COMMAND ----------

# MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

# COMMAND ----------

# MAGIC %sql
# MAGIC --Demonstraction puporse only use this spark command
# MAGIC SET spark.databricks.delta.retentionDurationCheck.enabled = false;

# COMMAND ----------

# MAGIC %sql
# MAGIC VACUUM employees RETAIN 0 HOURS

# COMMAND ----------

# MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

# COMMAND ----------

# MAGIC %sql
# MAGIC Drop table employees
