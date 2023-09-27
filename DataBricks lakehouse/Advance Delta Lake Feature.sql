-- Databricks notebook source
-- MAGIC %md
-- MAGIC ###Version(Time Travel)
-- MAGIC ###Indexing cleanup
-- MAGIC ###Vaccum
-- MAGIC

-- COMMAND ----------

Describe History employees


-- COMMAND ----------

Select * from employees version as of 1


-- COMMAND ----------

Select * from employees version as of 2


-- COMMAND ----------

Select * from employees@v2


-- COMMAND ----------

Delete From employees

-- COMMAND ----------

Restore table employees TO version as of 2

-- COMMAND ----------

select * from employees

-- COMMAND ----------

Describe history employees

-- COMMAND ----------

---OPTIMIZE
Optimize employees zorder by id

-- COMMAND ----------

Describe History employees

-- COMMAND ----------

--manual remove all those file using vaccum command
-- retention period is needed for vaccum command
--Vaccum employees Retain 0 Hours

-- COMMAND ----------

---Set Spark retention duration to false dont do this on production its for this tutorial purpose only.
SET spark.databricks.delta.retentionDurationCheck.enable = false;

-- COMMAND ----------

Vacuum employees RETAIN 0 Hours



-- COMMAND ----------

SET spark.databricks.delta.retentionDurationCheck.enable = false;


-- COMMAND ----------

Vacuum employees RETAIN 0 Hours


-- COMMAND ----------


