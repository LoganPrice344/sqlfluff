EXECUTE IMMEDIATE
BEGIN
  -- variable based
  LET somevariable := 5;
  LET somevariable NUMBER(38, 0) := 5;
  LET somevariable NUMBER(38, 0) DEFAULT 5;
  LET somevariable DEFAULT 5;

  -- variable reassignment
  somevariable := 5;

  -- cursor based
  LET somevariable cursor FOR SELECT some_col FROM some_database.schema.some_table;
  LET somevariable cursor FOR somevariable;
  LET someresult resultset := (SELECT some_col FROM some_database.schema.some_table);

  -- resultset reassignment
  someresult := (SELECT SOME_COL FROM some_database.schema.some_table);
END;

LET VARIABLE := SOME_VALUE;
SELECT :variable FROM my_table;
