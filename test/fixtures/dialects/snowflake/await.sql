BEGIN
  LET res RESULTSET := ASYNC (SELECT * FROM invalid_table);
  AWAIT res;
END;

BEGIN
  LET res RESULTSET := ASYNC (SELECT * FROM invalid_table);
  AWAIT ALL;
END;
