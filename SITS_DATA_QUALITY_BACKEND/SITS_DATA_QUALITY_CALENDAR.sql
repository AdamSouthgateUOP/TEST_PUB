select rule_id_bkey
      ,t.rule_name
      ,case
         when september = 1 then
          'Y'
         else
          ''
       end as september
      ,case
         when october = 1 then
          'Y'
         else
          ''
       end as october
      ,case
         when november = 1 then
          'Y'
         else
          ''
       end as november
      ,case
         when december = 1 then
          'Y'
         else
          ''
       end as december       
      ,case
         when january = 1 then
          'Y'
         else
          ''
       end as january
      ,case
         when february = 1 then
          'Y'
         else
          ''
       end as february
      ,case
         when march = 1 then
          'Y'
         else
          ''
       end as march
      ,case
         when april = 1 then
          'Y'
         else
          ''
       end as april
      ,case
         when may = 1 then
          'Y'
         else
          ''
       end as may
      ,case
         when june = 1 then
          'Y'
         else
          ''
       end as june
      ,case
         when july = 1 then
          'Y'
         else
          ''
       end as july
      ,case
         when august = 1 then
          'Y'
         else
          ''
       end as august
  from dim_rules_engine t
 where t.rule_id_bkey in
       (4100, 4200, 4300, 4400, 4600, 4700, 4800, 4900, 5000, 5010, 5020, 5030, 5040, 5050, 5060, 5070, 5080, 5090, 6000, 6010, 6020,
        6030, 6040, 6050, 6060, 6070, 6080, 6090, 7000, 7010, 7020, 7030, 7040, 7050, 8020, 8030, 8040, 8050, 8060, 8070)
 order by rule_id_bkey
