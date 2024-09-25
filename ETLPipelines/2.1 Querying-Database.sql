-- Databricks notebook source
-- MAGIC %run ../ETLPipelines/Copy-Datasets.py

-- COMMAND ----------

-- MAGIC %python
-- MAGIC files= dbutils.fs.ls(f"{dataset_bookstore}/customers-json")
-- MAGIC display(files)

-- COMMAND ----------

select * from json.`${dataset.bookstore}/customers-json/export_001.json`

-- COMMAND ----------

select * from json.`${dataset.bookstore}/customers-json/export_*.json`
/*Export file name all of them starting from json */

-- COMMAND ----------

select Count(*) from json.`${dataset.bookstore}/customers-json`


-- COMMAND ----------

select *, input_file_name() source_file from json.`${dataset.bookstore}/customers-json/export_001.json`

-- COMMAND ----------

select * from text.`${dataset.bookstore}/customers-json/export_001.json`

-- COMMAND ----------

select * from binaryFile
.`${dataset.bookstore}/customers-json/export_001.json`

-- COMMAND ----------

select * from csv.`${dataset.bookstore}/books-csv`

-- COMMAND ----------

CREATE TABLE books_csv
  (book_id STRING, title STRING, author STRING, category STRING, price DOUBLE)
USING CSV
OPTIONS (
  header = "true",
  delimiter = ";"
)
LOCATION "${dataset.bookstore}/books-csv"

-- COMMAND ----------

select * from books_csv

-- COMMAND ----------

-- MAGIC %python
-- MAGIC files = dbutils.fs.ls(f"{dataset_bookstore}/books-csv")
-- MAGIC display(files)

-- COMMAND ----------

-- MAGIC %python
-- MAGIC (spark.read
-- MAGIC         .table("books_csv")
-- MAGIC        .write
-- MAGIC          .format("csv")
-- MAGIC          .option('header', 'true')
-- MAGIC          .option('delimiter', ';')
-- MAGIC          .save(f"{dataset_bookstore}/books-csv"))

-- COMMAND ----------

Create TABLE customers as select * from json. `${dataset.bookstore}/customers-json`;

Describe Extended customers

-- COMMAND ----------

select * from customers

-- COMMAND ----------

Create Table books_unparsed as select * from csv.`${dataset.bookstore}/books-csv`;

select * from books_unparsed

-- COMMAND ----------

Create temp view books_tmp_vw (book_id String, title String, author String, price Double)
Using CSV Options (header "true", delimiter = ";", path "${dataset.bookstore}/books-csv/export_*.csv");

Create table books as select * from books_tmp_vw;

select * from books;
