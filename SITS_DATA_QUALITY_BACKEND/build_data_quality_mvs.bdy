create or replace package body build_data_quality_mvs is


cursor rules_queries_template_by_entity
  (
   pentitytype  varchar2
  ) is
    select dre.rule_id_skey
          ,dre.rule_id_bkey
          ,dre.rule_description
          ,dre.rule_enabled
          ,drq.null_check
          ,drq.null_where_clause
          ,drq.invalid_data_where_clause
          ,drq.table_key
          ,drq.table_to_validate
          ,drq.field_to_validate
          ,drq.added_query
          ,drq.opened_query
          ,drq.closed_query
          ,drq.lookup_table_count_query
          ,drqt.added_query              as added_template
          ,drqt.opened_query             as open_template
          ,drqt.closed_query             as closed_template
          ,drqt.rule_entity
          ,drqt.rule_type
      from dim_rules_engine dre
      join dim_rules_queries drq
        on drq.rule_id_skey = dre.rule_id_skey
      join dim_rules_queries_template drqt
        on drqt.query_skey = drq.query_skey
      join dim_rules_type drt
        on drt.rules_type_bkey = dre.rule_type
     where dre.rule_enabled = 'Y'
       and drt.rules_type_bkey = pentitytype
     order by dre.rule_id_skey;
     
  cursor rules_queries_template
  (
    pstartruleid integer
   ,pendruleid   integer
   ,pentitytype  varchar2
  ) is
    select dre.rule_id_skey
          ,dre.rule_id_bkey
          ,dre.rule_description
          ,dre.rule_enabled
          ,drq.null_check
          ,drq.null_where_clause
          ,drq.invalid_data_where_clause
          ,drq.table_key
          ,drq.table_to_validate
          ,drq.field_to_validate
          ,drq.added_query
          ,drq.opened_query
          ,drq.closed_query
          ,drq.lookup_table_count_query
          ,drqt.added_query              as added_template
          ,drqt.opened_query             as open_template
          ,drqt.closed_query             as closed_template
          ,drqt.rule_entity
          ,drqt.rule_type
      from dim_rules_engine dre
      join dim_rules_queries drq
        on drq.rule_id_skey = dre.rule_id_skey
      join dim_rules_queries_template drqt
        on drqt.query_skey = drq.query_skey
      join dim_rules_type drt
        on drt.rules_type_bkey = dre.rule_type
     where dre.rule_enabled = 'Y'
       and dre.rule_id_bkey between pstartruleid and pstartruleid
      -- and drt.rules_type_bkey = pentitytype
     order by dre.rule_id_skey;

  cursor mv_exists(mv_viewname varchar2) is
    select count(*)
      from all_mviews x
     where x.mview_name = upper(mv_viewname)
       and owner = 'SITS_LIVE';

  function change_placeholders
  (
    pquery  varchar2
   ,pruleid integer
  ) return varchar2 is
    cursor rules_queries_template_values(pruleid integer) is
      select dre.rule_id_skey
            ,dre.rule_description
            ,dre.rule_enabled
            ,drq.null_check
            ,drq.null_where_clause
            ,drq.invalid_data_where_clause
            ,drq.table_key
            ,drq.table_to_validate
            ,drq.field_to_validate
            ,drq.added_query
            ,drq.opened_query
            ,drq.closed_query
            ,drq.lookup_table_count_query
            ,drqt.added_query              as added_template
            ,drqt.opened_query             as open_template
            ,drqt.closed_query             as closed_template
            ,drqt.rule_entity
            ,drqt.rule_type
        from dim_rules_engine dre
        join dim_rules_queries drq
          on drq.rule_id_skey = dre.rule_id_skey
        join dim_rules_queries_template drqt
          on drqt.query_skey = drq.query_skey
       where dre.rule_enabled = 'Y'
         and dre.rule_id_bkey = pruleid;
  
    clquery            clob;
    rec                rules_queries_template_values%rowtype;
    strnullwhereclause varchar2(4000);
  
  begin
  
    -- get Template code
    clquery := pquery;
  
    open rules_queries_template_values(pruleid);
    fetch rules_queries_template_values
      into rec;
    close rules_queries_template_values;
  
    -- Common Changes
    clquery := replace(clquery, '<RULE_ID_SKEY>', rec.rule_id_skey);
  
    clquery := replace(clquery, '<TABLE_KEY>', rec.table_key);
    clquery := replace(clquery, '<TABLE_TO_VALIDATE>', rec.table_to_validate);
  
    case rec.rule_entity
      when 'Null' then
      
        -- Added 
        -- Change placeholders to values
      
        strnullwhereclause := case
                                when (rec.null_where_clause is not null) then
                                 (rec.null_where_clause || ' and ')
                                else
                                 null
                              end || rec.field_to_validate || ' IS NULL';
      
        clquery := replace(clquery, '<NULL_WHERE_CLAUSE>', strnullwhereclause);
      
      when 'Invalid' then
      
        -- Added 
        -- Change placeholders to values
        clquery := replace(clquery, '<INVALID_DATA_WHERE_CLAUSE>', rec.invalid_data_where_clause);
      
        if rec.rule_type = 'Module'
        then
          clquery := replace(clquery, '<LOOKUP_TABLE_COUNT_QUERY>', rec.lookup_table_count_query);
        end if;
      else
      
        null;
      
    end case;
    return clquery;
  
  end;

  function build_mv
  (
    pruleid varchar2
   ,pquery  varchar2
   ,ptype   varchar2
  ) return varchar2 is
  
    new_query varchar2(8192) := pquery;
  
  begin
  
    dbms_output.put_line('Building ' || ptype || ' SQL for MV for Rule ID '|| to_char(pruleid));
    --dbms_output.put_line('Query passed in ' || pquery);
  
    new_query := change_placeholders(new_query, pruleid);
    --dbms_output.put_line(new_query);
  
    return new_query;
  
  end;

  procedure create_mv
  (
    pruleid varchar2
   ,ptype   varchar2
   ,pquery  varchar2
  ) is
  
    mvstring varchar2(8192);
    mvname   varchar2(255);
    mvcount  integer;
  
    create_query varchar2(32767) := pquery;
  
  begin
  
    dbms_output.put_line('Creating MV for '|| ptype || ' SQL for MV for Rule ID '|| to_char(pruleid));
  --  dbms_output.put_line('Query passed in ' || pquery);
  
    mvname := 'DQ_RULE_' || to_char(pruleid) || '_' || ptype || '_NEW_MVW';
  
    -- See if the MV already exists and drop if it does.
    open mv_exists(mvname);
    fetch mv_exists
      into mvcount;
    close mv_exists;
  
    if mvcount = 1
    then
      execute immediate 'DROP MATERIALIZED VIEW ' || mvname;
    end if;
  
    mvstring := 'create materialized view ' || mvname || ' refresh force on demand as ' || create_query;
   -- dbms_output.put_line(mvstring);
    execute immediate mvstring;
    execute immediate 'grant select on ' || mvname || ' to odiadmin';
  
  end;

  procedure save_mv
  (
    pruleid varchar2
   ,ptype   varchar2
   ,pquery  varchar2
  ) is
  
    save_query varchar2(32767) := pquery;
  
  begin
  
    dbms_output.put_line('Saving MV for '|| ptype || ' SQL for MV for Rule ID '|| to_char(pruleid));

    if ptype = 'Added'
    then
    
      update dim_rules_queries drq set drq.added_query = save_query where drq.rule_id_skey = pruleid;
      commit;
    
    end if;
  
    if ptype = 'Opened'
    then
    
      update dim_rules_queries drq set drq.opened_query = save_query where drq.rule_id_skey = pruleid;
      commit;
    
    end if;
  
    if ptype = 'Closed'
    then
    
      update dim_rules_queries drq set drq.closed_query = save_query where drq.rule_id_skey = pruleid;
      commit;
    
    end if;
  
  end;

  procedure loop_rules
  (
    prulestartid integer
   ,pruleendid   integer
   ,padded       boolean
   ,popened      boolean
   ,pclosed      boolean
   ,pentitytype  varchar2
  ) is
  
    new_query clob;
  
  begin
    
    for rec in rules_queries_template_by_entity(pentitytype)
    loop
    
      new_query := null;
    
      if padded
      then
      
        new_query := build_mv(rec.rule_id_bkey, rec.added_template, 'Added');
        save_mv(rec.rule_id_bkey, 'Added', new_query);
        create_mv(rec.rule_id_bkey, 'Added', new_query);
        dbms_output.put_line('_________________________________________________________________________');      
        
      end if;
    
      if popened
      then
        new_query := build_mv(rec.rule_id_bkey, rec.open_template, 'Opened');
        save_mv(rec.rule_id_bkey, 'Opened', new_query);
        create_mv(rec.rule_id_bkey, 'Opened', new_query);
        dbms_output.put_line('_________________________________________________________________________');
      
      end if;
    
      if pclosed
      then
      
        new_query := build_mv(rec.rule_id_bkey, rec.closed_template, 'Closed');
        save_mv(rec.rule_id_bkey, 'Closed', new_query);
        create_mv(rec.rule_id_bkey, 'Closed', new_query);
        dbms_output.put_line('_________________________________________________________________________');
      
      end if;

      dbms_output.put_line('-------------------------------------------------------------------------');
    
    end loop;
        dbms_output.put_line('=========================================================================');
  end;

  procedure build_all_enabled_views(pentitytype varchar2) is
  begin
  
    loop_rules(1, 999999999, true, true, true, pentitytype);
  
  end;
  procedure build_all_enabled_views_added(pentitytype varchar2) is
  
  begin
  
    loop_rules(1, 999999999, true, true, true, pentitytype);
  
  end;
  procedure build_all_enabled_views_opened(pentitytype varchar2) is
  
  begin
  
    loop_rules(1, 999999999, true, true, true, pentitytype);
  
  end;
  procedure build_all_enabled_views_closed(pentitytype varchar2) is
  
  begin
  
    loop_rules(1, 999999999, true, true, true, pentitytype);
  
  end;
  procedure build_enabled_views_range
  (
    pstartruleid integer
   ,pendruleid   integer
   ,pentitytype  varchar2
  ) is
  begin
  
    loop_rules(pstartruleid, pendruleid, true, true, true, pentitytype);
  
  end;
  procedure build_enabled_views_added_range
  (
    pstartruleid integer
   ,pendruleid   integer
   ,pentitytype  varchar2
  ) is
  begin
    loop_rules(pstartruleid, pendruleid, true, false, false, pentitytype);
  end;
  procedure build_enabled_views_opened_range
  (
    pstartruleid integer
   ,pendruleid   integer
   ,pentitytype  varchar2
  ) is
  
  begin
    loop_rules(pstartruleid, pendruleid, false, true, false, pentitytype);
  end;
  procedure build_enabled_views_closed_range
  (
    pstartruleid integer
   ,pendruleid   integer
   ,pentitytype  varchar2
  ) is
  begin
    loop_rules(pstartruleid, pendruleid, false, false, true, pentitytype);
  end;

end build_data_quality_mvs;
/
