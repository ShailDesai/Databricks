-- Databricks notebook source
USE hive_metastore.default;

-- COMMAND ----------

--Database in default table as no location is specified
create table managed_default (width int, length int, height int);

insert into managed_default values (3,2,1)

-- COMMAND ----------

describe extended  managed_default

-- COMMAND ----------

create table external_default (width int, length int, height int)
Location 'dbfs:/mnt/demo/external_default';

insert into external_default values (3,2,1)

-- COMMAND ----------

-- MAGIC %sql describe extended external_default

-- COMMAND ----------

Drop table managed_default;
Drop table external_default;

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/mnt/demo/external_default'

-- COMMAND ----------

--create a database use create database or create schema
Create Schema new_default

-- COMMAND ----------


Describe Database Extended new_default

-- COMMAND ----------

use new_default;


create table managed_default (width int, length int, height int);

insert into managed_default values (3,2,1);

-- COMMAND ----------

create table external_new_default (width int, length int, height int)
Location 'dbfs:/mnt/demo/external_new_default';

insert into external_new_default values (3,2,1)

-- COMMAND ----------

Drop table managed_default;
Drop table external_new_default;

-- COMMAND ----------

Create schema customn_loc
Location 'dbfs:/Shared/schemas/custom_loc.db'

-- COMMAND ----------


