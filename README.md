# Data transformations using DBT
This repository is used in combination with the Twitter-to-DWH repository. Combined, they form an end to end project to Extract, Load, and Transform Twitter data using Python, DBT, and Airflow. 

<b>Intro to DBT</b><br>
DBT is a data transformation tool. It allows analysts to transform data that is already in a data warehouse using SQL statements that are triggered within the command line. Some of benefits of DBT include: 
* Version control using Github
* DBT creates DAGs that determine the order in which models should run. 
* DBT is modular: models are created once and they are referenced when they need to be re-used. This ensures that all analysts use the same code with shared definitions across the business. 

More info about DBT can be found here: https://blog.getdbt.com/what--exactly--is-dbt-/

<b>DBT models</b><br>
The DBT models are the SQL queries used to transform data in the data warehouse. The models in this project are split between two directories: 
* staging: the models that are closest to the source data and will be used throughout the data transformation process
* marts: the final dim and fact tables that sit in the data warehouse

With these models set up, DBT creates the following DAG: 

![alt text](https://user-images.githubusercontent.com/28791247/62796955-62808880-bad2-11e9-814d-004820ffda6a.PNG)

<b>Testing</b><br>
DBT comes with a testing feature and the code for this can be found in the YML files within the models directories. These tests include: unique, not null and referential integrity.
