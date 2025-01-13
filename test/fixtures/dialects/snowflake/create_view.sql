create view another_view comment
= 'a great description' as select
    col_1,
    col_2
from other_table;

create view basic_view as select
    col1,
    col2
from src_table;

create temporary view view_with_comments
comment = 'my comment' as select
    col1,
    col2
from src_table;

create or replace view view_with_replace_and_comment
comment = 'my comment' as select
    col1,
    col2
from src_table;

create or replace secure recursive view if not exists secure_recursive_view_with_comment
comment = 'my comment' as select
    col1,
    col2
from src_table;

create or replace view view_with_comment_and_copy_grants
comment = 'my comment'
copy grants
as select
    col1,
    col2
from src_table;

create or replace view view_with_tags_and_copy_grants
with tag (foo = 'bar', hello = 'world')
copy grants
as select
    col1,
    col2
from src_table;

create or replace view view_with_tags_and_copy_grants
with tag (foo = "bar", hello = "world")
copy grants
as select
    col1,
    col2
from src_table;

create or replace view view_with_column_comment
(
    col1,
    col2 comment 'some comment'
)
as select
    col1,
    col2
from src_table;

create or replace secure recursive view if not exists view_with_all_implemented_features
comment = 'table-level comment'
(
    col1,
    col2 comment 'some comment'
)
as
with cte as (select col1 from table_1)

select
    col1,
    col2
from table_2
inner join my_cte on table_1.pk = table_2.pk;

create or replace view vw_appt_latest as (
    with most_current as (
        select da.*
        from dim_appt as da
        where da.current_appt_id is NULL
    )

    select * from most_current
);

create or replace view if not exists view_with_rls
(
    col1,
    col2
) with row access policy my_db.my_schema.my_policy on (col1) as (
    select
        col1,
        col2
    from my_table
);


create or replace view if not exists view_with_rls
(
    col1 with masking policy my_db.my_schema.my_policy,
    col2
) with row access policy my_db.my_schema.my_policy on (col1) as (
    select
        col1,
        col2
    from my_table
);

create or replace materialized view if not exists view_with_rls
(
    col1,
    col2
) with row access policy my_db.my_schema.my_policy on (col1) as (
    select
        col1,
        col2
    from my_table
);

create or replace view if not exists view_with_column_tags
(
    col1 with tag (my_db.my_schema.my_policy = 'MY_TAG'),
    col2
) as (
    select
        col1,
        col2
    from my_table
);

create or alter view view_with_column_comment
(
    col1
)
as select col1
from src_table;

call _ENT_COMMON.GLOBAL.MERGE_DATA(source => 'value');

call _ENT_COMMON.GLOBAL.MERGE_DATA(source => 'value') INTO :ret1;
