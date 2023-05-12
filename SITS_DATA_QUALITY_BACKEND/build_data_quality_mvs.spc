create or replace package build_data_quality_mvs is

  -- Author  : SOUTHGAA
  -- Created : 20/02/2023 09:01:58
  -- Purpose : Create Data Quality Marterialized Views

  procedure build_all_enabled_views;

  procedure build_enabled_views_range
  (
    pstartruleid integer default 1
   ,pendruleid   integer default 9999999999
  );

  procedure build_all_enabled_views_added;
  procedure build_all_enabled_views_opened;
  procedure build_all_enabled_views_closed;

  procedure build_enabled_views_added_range
  (
    pstartruleid integer default 1
   ,pendruleid   integer default 9999999999
  );
  procedure build_enabled_views_opened_range
  (
    pstartruleid integer default 1
   ,pendruleid   integer default 9999999999
  );
  procedure build_enabled_views_closed_range
  (
    pstartruleid integer default 1
   ,pendruleid   integer default 9999999999
  );

end build_data_quality_mvs;
/

