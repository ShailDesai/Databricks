# Databricks notebook source
print("hello wordl")


# COMMAND ----------

# MAGIC %sql
# MAGIC select "i am here from SQL"

# COMMAND ----------

# MAGIC %md
# MAGIC #First Notebook
# MAGIC

# COMMAND ----------

# MAGIC %run ./Workspace/includes/setup
# MAGIC

# COMMAND ----------

print(full_name)

# COMMAND ----------

# MAGIC %fs ls '/databricks-datasets'
# MAGIC

# COMMAND ----------

dbutils.help()

# COMMAND ----------

file = dbutils.fs.ls('/databricks-datasets')

# COMMAND ----------

display(file)

