--Reset all months

update dim_rules_engine
   set january   = 0
      ,february  = 0
      ,march     = 0
      ,april     = 0
      ,may       = 0
      ,june      = 0
      ,july      = 0
      ,august    = 0
      ,september = 0
      ,october   = 0
      ,november  = 0
      ,december  = 0
 where 1 = 1;

-- Update by Month

update dim_rules_engine dren
   set dren.september = 1
 where dren.rule_id_bkey in (5030, 5080, 5090, 6000, 6010, 6020, 6030, 6060, 6070, 6080);

update dim_rules_engine dren
   set dren.october = 1
 where dren.rule_id_bkey in
       (4100, 4200, 4300, 4400, 4600, 4700, 4800, 4900, 5000, 5010, 5020, 5030, 5040, 5050, 5060, 5080, 5090, 6000, 6010, 6020, 6030,
        6060, 6070, 6080, 7040, 7050, 8020, 8030, 8040, 8050, 8060, 8070);

update dim_rules_engine dren
   set dren.november = 1
 where dren.rule_id_bkey in
       (4100, 4200, 4300, 4400, 4600, 4700, 4800, 4900, 5000, 5010, 5020, 5030, 5040, 5050, 5060, 5080, 5090, 6000, 6010, 6020, 6030,
        6040, 6050, 6060, 6070, 7000, 7010, 7030, 7040, 7050, 8020, 8030, 8040, 8050, 8060, 8070);

update dim_rules_engine dren
   set dren.december = 1
 where dren.rule_id_bkey in (5030, 5080, 5090, 6000, 6010, 6020, 6030, 6060, 6070, 7000, 7010, 7030);

update dim_rules_engine dren
   set dren.january = 1
 where dren.rule_id_bkey in (5030, 5080, 5090, 6000, 6010, 6020, 6030, 6060, 6070, 6080);

update dim_rules_engine dren
   set dren.february = 1
 where dren.rule_id_bkey in
       (4100, 4200, 4300, 4400, 4600, 4700, 4800, 4900, 5000, 5010, 5020, 5030, 5040, 5050, 5060, 5080, 5090, 6000, 6010, 6020, 6030,
        6060, 6070, 6080, 7040, 7050, 8020, 8030, 8040, 8050, 8060, 8070);

update dim_rules_engine dren
   set dren.march = 1
 where dren.rule_id_bkey in
       (4100, 4200, 4300, 4400, 4600, 4700, 4800, 4900, 5000, 5010, 5020, 5030, 5040, 5050, 5060, 5080, 5090, 6000, 6010, 6020, 6030,
        6040, 6050, 6060, 6070, 7040, 7050, 8020, 8030, 8040, 8050, 8060, 8070);

update dim_rules_engine dren set dren.april = 1 where dren.rule_id_bkey in (5030, 5080, 5090, 6000, 6010, 6020, 6030, 6060, 6070);

update dim_rules_engine dren set dren.may = 1 where dren.rule_id_bkey in (5030, 5080, 5090, 6000, 6010, 6020, 6030, 6060, 6070);

update dim_rules_engine dren
   set dren.june = 1
 where dren.rule_id_bkey in (5030, 5080, 5090, 6000, 6010, 6020, 6030, 6070, 7000, 7010);

update dim_rules_engine dren set dren.july = 1 where dren.rule_id_bkey in (5030, 5080, 5090, 6000, 6010, 6020, 6030, 6070, 7030);
update dim_rules_engine dren set dren.august = 1 where dren.rule_id_bkey in (5030, 5080, 5090, 6000, 6010, 6020, 6030, 6070);

commit;
