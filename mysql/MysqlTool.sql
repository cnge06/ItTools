/**
MySql�д�ӡ����TRUNCATE�����
**/
select CONCAT('TRUNCATE TABLE mydatabase.',TABLE_NAME,';') FROM information_schema.TABLES WHERE TABLE_SCHEMA='mydatabase';

/**
mysqldump������insert sql�ű������ֶ���
-t�ǲ�����create table�����drop table��� 
-c����insert�����Ӿ�����ֶ�����������Ŀ�ı�ṹ��ͬԭ������¸�����
-w��߸�where������ֻ������������������
**/
mysqldump �Csingle-transaction �Cdefault-character-set=gbk -uabc -pabc -t -w'id=170418406' database_name > id.sql

/**
�鿴 MySQL ���ݿ���ÿ����ռ�õĿռ��С
information_schema ���ݿ�
TABLE_SCHEMA : ���ݿ���
TABLE_NAME������
ENGINE����ʹ�õĴ洢����
TABLES_ROWS����¼��
DATA_LENGTH�����ݴ�С
INDEX_LENGTH��������С
**/
use information_schema;
select concat(round(sum(DATA_LENGTH/1024/1024),2),'MB') as data from TABLES
 where table_schema='forexpert'  and table_name='member';
