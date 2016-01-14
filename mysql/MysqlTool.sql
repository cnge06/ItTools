/**
MySql中打印整库TRUNCATE表语句
**/
select CONCAT('TRUNCATE TABLE mydatabase.',TABLE_NAME,';') FROM information_schema.TABLES WHERE TABLE_SCHEMA='mydatabase';

/**
mysqldump导出的insert sql脚本具有字段名
-t是不增加create table建表和drop table语句 
-c是在insert中增加具体的字段名。这样对目的表结构不同原表，情况下更有用
-w后边跟where条件，只导出符合条件的数据
**/
mysqldump –single-transaction –default-character-set=gbk -uabc -pabc -t -w'id=170418406' database_name > id.sql

/**
查看 MySQL 数据库中每个表占用的空间大小
information_schema 数据库
TABLE_SCHEMA : 数据库名
TABLE_NAME：表名
ENGINE：所使用的存储引擎
TABLES_ROWS：记录数
DATA_LENGTH：数据大小
INDEX_LENGTH：索引大小
**/
use information_schema;
select concat(round(sum(DATA_LENGTH/1024/1024),2),'MB') as data from TABLES
 where table_schema='forexpert'  and table_name='member';
