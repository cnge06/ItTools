/**
�˲�����/��ͼ���ֶ��Ƿ�һ��
**/
  select column_name,count(column_name) from (
         SELECT column_name FROM user_tab_columns
         WHERE table_name='VW_PLAN_SUB_ORDER_DETAIL'
        UNION ALL
        SELECT column_name FROM user_tab_columns
        WHERE table_name='VW_Z_PLAN_SUB_ORDER_DETAIL'
  )group by column_name having count(column_name)<2
  
/**1. �鿴���б�ռ��С**/
select tablespace_name,sum(bytes)/1024/1024 from dba_data_files group by tablespace_name; 
/**2. δʹ�õı�ռ��С**/ 
select tablespace_name,sum(bytes)/1024/1024 from dba_free_space group by tablespace_name; 

/**����ش�
�鿴��ǰ�û�ÿ����ռ�ÿռ�Ĵ�С��**/
Select   Segment_Name,Sum(bytes)/1024/1024   From   User_Extents ue where ue.tablespace_name='GL_WMS'   Group   By   Segment_Name