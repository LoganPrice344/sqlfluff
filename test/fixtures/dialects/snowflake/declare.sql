EXECUTE IMMEDIATE
DECLARE
    profit number(38, 2) DEFAULT 0.0;
    revenue number(38, 2) DEFAULT 110.0;
    c1 CURSOR FOR SELECT price FROM invoices;
    myexception EXCEPTION (-20000, 'my first exception');
BEGIN
    profit := 1.0;
END;

EXECUTE IMMEDIATE
DECLARE
    res RESULTSET DEFAULT (SELECT price FROM invoices);
    c1 CURSOR FOR res;
BEGIN
    RETURN c1;
END;

EXECUTE IMMEDIATE
DECLARE
    profit number(38, 2) DEFAULT 0.0;
BEGIN
    i := 1;
    j := 1;
    WHILE (i <= 4) DO
        WHILE (j <= 4) DO
            -- Exit when j is 3, even if i is still 1.
            IF (j = 3) THEN
                    BREAK outer_loop;
            END IF;
            j := j + 1;
        END WHILE inner_loop;
        i := i + 1;
    END WHILE outer_loop;
    -- Execution resumes here after the BREAK executes.
    RETURN i;
END;

DECLARE
    res RESULTSET;

DECLARE
    res RESULTSET DEFAULT;

DECLARE
    res RESULTSET DEFAULT ASYNC (SELECT a FROM t001 ORDER BY a);

DECLARE
    res RESULTSET := (SELECT a FROM t001 ORDER BY a);

DECLARE
    res RESULTSET := ASYNC (SELECT a FROM t001 ORDER BY a);
