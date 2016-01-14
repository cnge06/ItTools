/**
核查两表/视图的字段是否一致
**/
  select column_name,count(column_name) from (
         SELECT column_name FROM user_tab_columns
         WHERE table_name='VW_PLAN_SUB_ORDER_DETAIL'
        UNION ALL
        SELECT column_name FROM user_tab_columns
        WHERE table_name='VW_Z_PLAN_SUB_ORDER_DETAIL'
  )group by column_name having count(column_name)<2