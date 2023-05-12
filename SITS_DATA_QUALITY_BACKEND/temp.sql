prompt PL/SQL Developer Export User Objects for user SITS_LIVE@BIDEV1
prompt Created by southgaa on 12 May 2023
set define off
spool temp.log

prompt
prompt Creating table DAILY_RESULTS
prompt ============================
prompt
@@daily_results.tab
prompt
prompt Creating table DAILY_RESULTS_NEW
prompt ================================
prompt
@@daily_results_new.tab
prompt
prompt Creating table DIM_RULES_CATEGORIES
prompt ===================================
prompt
@@dim_rules_categories.tab
prompt
prompt Creating table DIM_RULES_CATEGORIES_DETAIL
prompt ==========================================
prompt
@@dim_rules_categories_detail.tab
prompt
prompt Creating table DIM_RULES_ENGINE
prompt ===============================
prompt
@@dim_rules_engine.tab
prompt
prompt Creating table DIM_RULES_QUERIES
prompt ================================
prompt
@@dim_rules_queries.tab
prompt
prompt Creating table DIM_RULES_QUERIES_TEMPLATE
prompt =========================================
prompt
@@dim_rules_queries_template.tab
prompt
prompt Creating table DIM_RULES_TYPE
prompt =============================
prompt
@@dim_rules_type.tab
prompt
prompt Creating table DIM_TEST_TABLE
prompt =============================
prompt
@@dim_test_table.tab
prompt
prompt Creating table FACT_RULES_DAILY_RESULTS_DETAIL
prompt ==============================================
prompt
@@fact_rules_daily_results_detail.tab
prompt
prompt Creating table FACT_RULES_MODULE_DETAIL
prompt =======================================
prompt
@@fact_rules_module_detail.tab
prompt
prompt Creating table FACT_RULES_STUDENTS_DETAIL
prompt =========================================
prompt
@@fact_rules_students_detail.tab
prompt
prompt Creating materialized view CURRENT_YEAR_MODULE_LIST_MVW
prompt =======================================================
prompt
@@current_year_module_list_mvw.mvw
prompt
prompt Creating materialized view CURRENT_YEAR_STUDENT_CURR_ENROLMENT_LIST_MVW
prompt =======================================================================
prompt
@@current_year_student_curr_enrolment_list_mvw.mvw
prompt
prompt Creating materialized view CURRENT_YEAR_STUDENT_CURR_ENROLMENT_LIST_MVW_NEW
prompt ===========================================================================
prompt
@@current_year_student_curr_enrolment_list_mvw_new.mvw
prompt
prompt Creating materialized view DAILY_RESULTS_MVW
prompt ============================================
prompt
@@daily_results_mvw.mvw
prompt
prompt Creating materialized view DQ_5000_MVW
prompt ======================================
prompt
@@dq_5000_mvw.mvw
prompt
prompt Creating materialized view DQ_5020_MVW
prompt ======================================
prompt
@@dq_5020_mvw.mvw
prompt
prompt Creating materialized view DQ_5060_MVW
prompt ======================================
prompt
@@dq_5060_mvw.mvw
prompt
prompt Creating materialized view DQ_5070_MVW
prompt ======================================
prompt
@@dq_5070_mvw.mvw
prompt
prompt Creating materialized view DQ_6080_MVW
prompt ======================================
prompt
@@dq_6080_mvw.mvw
prompt
prompt Creating materialized view DQ_6090_MVW
prompt ======================================
prompt
@@dq_6090_mvw.mvw
prompt
prompt Creating materialized view DQ_7020_MVW
prompt ======================================
prompt
@@dq_7020_mvw.mvw
prompt
prompt Creating materialized view DQ_7030_MVW
prompt ======================================
prompt
@@dq_7030_mvw.mvw
prompt
prompt Creating materialized view DQ_7040_MVW
prompt ======================================
prompt
@@dq_7040_mvw.mvw
prompt
prompt Creating materialized view DQ_8040_MVW
prompt ======================================
prompt
@@dq_8040_mvw.mvw
prompt
prompt Creating materialized view DQ_8045_MVW
prompt ======================================
prompt
@@dq_8045_mvw.mvw
prompt
prompt Creating materialized view DQ_8060_MVW
prompt ======================================
prompt
@@dq_8060_mvw.mvw
prompt
prompt Creating materialized view DQ_8070_MVW
prompt ======================================
prompt
@@dq_8070_mvw.mvw
prompt
prompt Creating materialized view DQ_8080_MVW
prompt ======================================
prompt
@@dq_8080_mvw.mvw
prompt
prompt Creating materialized view DQ_8090_MVW
prompt ======================================
prompt
@@dq_8090_mvw.mvw
prompt
prompt Creating materialized view DQ_8100_MVW
prompt ======================================
prompt
@@dq_8100_mvw.mvw
prompt
prompt Creating materialized view DQ_8110_MVW
prompt ======================================
prompt
@@dq_8110_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4100_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_4100_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4100_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_4100_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4100_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_4100_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4200_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_4200_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4200_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_4200_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4200_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_4200_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4300_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_4300_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4300_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_4300_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4300_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_4300_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4400_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_4400_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4400_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_4400_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4400_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_4400_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4600_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_4600_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4600_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_4600_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4600_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_4600_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4700_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_4700_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4700_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_4700_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4700_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_4700_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4800_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_4800_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4800_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_4800_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4800_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_4800_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4900_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_4900_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4900_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_4900_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_4900_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_4900_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5000_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_5000_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5000_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_5000_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5000_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_5000_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5010_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_5010_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5010_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_5010_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5010_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_5010_opened_mvw.mvw
prompt
prompt Creating materialized view STUDENT_PROG_INFO_DATA_MVW
prompt =====================================================
prompt
@@student_prog_info_data_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5020_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_5020_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5020_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_5020_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5020_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_5020_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5030_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_5030_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5030_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_5030_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5030_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_5030_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5040_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_5040_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5040_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_5040_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5040_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_5040_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5050_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_5050_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5050_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_5050_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5050_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_5050_opened_mvw.mvw
prompt
prompt Creating materialized view STUDENT_PASSPORT_DATA_MVW
prompt ====================================================
prompt
@@student_passport_data_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5080_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_5080_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5080_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_5080_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5080_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_5080_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5090_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_5090_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5090_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_5090_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_5090_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_5090_opened_mvw.mvw
prompt
prompt Creating materialized view STUDENT_VISA_DATA_MVW
prompt ================================================
prompt
@@student_visa_data_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6000_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_6000_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6000_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_6000_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6000_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_6000_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6010_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_6010_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6010_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_6010_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6010_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_6010_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6020_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_6020_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6020_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_6020_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6020_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_6020_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6030_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_6030_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6030_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_6030_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6030_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_6030_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6040_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_6040_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6040_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_6040_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6040_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_6040_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6050_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_6050_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6050_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_6050_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6050_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_6050_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6060_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_6060_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6060_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_6060_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6060_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_6060_opened_mvw.mvw
prompt
prompt Creating materialized view STUDENT_CAS_DATA_MVW
prompt ===============================================
prompt
@@student_cas_data_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6070_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_6070_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6070_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_6070_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6070_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_6070_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6080_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_6080_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6080_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_6080_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6080_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_6080_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6090_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_6090_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6090_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_6090_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_6090_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_6090_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7000_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_7000_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7000_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_7000_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7000_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_7000_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7010_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_7010_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7010_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_7010_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7010_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_7010_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7020_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_7020_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7020_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_7020_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7020_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_7020_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7030_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_7030_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7030_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_7030_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7030_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_7030_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7040_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_7040_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7040_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_7040_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7040_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_7040_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7050_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_7050_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7050_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_7050_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7050_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_7050_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7100_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_7100_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7100_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_7100_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_7100_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_7100_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8010_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_8010_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8010_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_8010_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8010_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_8010_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8020_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_8020_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8020_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_8020_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8020_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_8020_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8030_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_8030_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8030_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_8030_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8030_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_8030_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8040_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_8040_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8040_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_8040_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8040_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_8040_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8045_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_8045_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8045_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_8045_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8045_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_8045_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8050_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_8050_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8050_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_8050_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8050_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_8050_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8060_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_8060_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8060_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_8060_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8060_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_8060_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8070_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_8070_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8070_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_8070_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8070_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_8070_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8080_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_8080_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8080_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_8080_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8080_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_8080_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8090_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_8090_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8090_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_8090_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8090_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_8090_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8100_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_8100_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8100_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_8100_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8100_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_8100_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8110_ADDED_MVW
prompt =================================================
prompt
@@dq_rule_8110_added_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8110_CLOSED_MVW
prompt ==================================================
prompt
@@dq_rule_8110_closed_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_8110_OPENED_MVW
prompt ==================================================
prompt
@@dq_rule_8110_opened_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_9000_ADDED_NEW_MVW
prompt =====================================================
prompt
@@dq_rule_9000_added_new_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_9000_CLOSED_NEW_MVW
prompt ======================================================
prompt
@@dq_rule_9000_closed_new_mvw.mvw
prompt
prompt Creating materialized view DQ_RULE_9000_OPENED_NEW_MVW
prompt ======================================================
prompt
@@dq_rule_9000_opened_new_mvw.mvw
prompt
prompt Creating materialized view FACT_DAILY_RESULTS_AGGREGATE_MVW
prompt ===========================================================
prompt
@@fact_daily_results_aggregate_mvw.mvw
prompt
prompt Creating materialized view FACT_DAILY_RESULTS_MODULE_AGGREGATE_MVW
prompt ==================================================================
prompt
@@fact_daily_results_module_aggregate_mvw.mvw
prompt
prompt Creating materialized view FACT_DAILY_RESULTS_STUDENT_AGGREGATE_MVW
prompt ===================================================================
prompt
@@fact_daily_results_student_aggregate_mvw.mvw
prompt
prompt Creating materialized view FACT_MONTHLY_RESULTS_AGGREGATE_MVW
prompt =============================================================
prompt
@@fact_monthly_results_aggregate_mvw.mvw
prompt
prompt Creating materialized view FACT_WEEKLY_RESULTS_AGGREGATE_MVW
prompt ============================================================
prompt
@@fact_weekly_results_aggregate_mvw.mvw
prompt
prompt Creating materialized view FACT_YEARLY_RESULTS_AGGREGATE_MVW
prompt ============================================================
prompt
@@fact_yearly_results_aggregate_mvw.mvw
prompt
prompt Creating materialized view PREVIOUS_YEAR_STUDENT_CURR_ENROLMENT_LIST_MVW_NEW
prompt ============================================================================
prompt
@@previous_year_student_curr_enrolment_list_mvw_new.mvw
prompt
prompt Creating materialized view SITS_DATA_DICTIONARY
prompt ===============================================
prompt
@@sits_data_dictionary.mvw
prompt
prompt Creating materialized view SITS_DATA_DICTIONARY_UPGRADE_CURRENT
prompt ===============================================================
prompt
@@sits_data_dictionary_upgrade_current.mvw
prompt
prompt Creating materialized view SITS_DATA_DICTIONARY_UPGRADE_NEW
prompt ===========================================================
prompt
@@sits_data_dictionary_upgrade_new.mvw
prompt
prompt Creating materialized view STUDENT_ASSESSMENT_MARKS_MVW
prompt =======================================================
prompt
@@student_assessment_marks_mvw.mvw
prompt
prompt Creating materialized view STUDENT_LIST_MVW
prompt ===========================================
prompt
@@student_list_mvw.mvw
prompt
prompt Creating materialized view STU_ACTIVE_MODULES_MVW
prompt =================================================
prompt
@@stu_active_modules_mvw.mvw
prompt
prompt Creating package BUILD_DATA_QUALITY_MVS
prompt =======================================
prompt
@@build_data_quality_mvs.spc

prompt Done
spool off
set define on
