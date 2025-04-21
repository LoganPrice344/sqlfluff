CREATE PROCEDURE power_of_2()
RETURNS NUMBER(8, 0)
LANGUAGE SQL
AS
$$
DECLARE
  counter NUMBER(8, 0);      -- Loop counter.
  power_of_2 NUMBER(8, 0);   -- Stores the most recent power of 2 that we calculated.
BEGIN
  counter := 1;
  power_of_2 := 1;
  WHILE (counter <= 8) DO
    power_of_2 := power_of_2 * 2;
    counter := counter + 1;
  END WHILE;
  RETURN power_of_2;
END;
$$
;

EXECUTE IMMEDIATE
BEGIN
  LET mydate := '2024-05-08';
  WHILE (mydate < '2024-05-20') DO
    mydate := DATEADD(day, 1, mydate);
  END LOOP;
  RETURN mydate;
END;

EXECUTE IMMEDIATE
BEGIN
  LET mydate := '2024-05-08';
  WHILE (mydate < '2024-05-20') LOOP
    mydate := DATEADD(day, 1, mydate);
  END WHILE;
  RETURN mydate;
END;

EXECUTE IMMEDIATE
BEGIN
  LET mydate := '2024-05-08';
  WHILE (mydate < '2024-05-20') LOOP
    mydate := DATEADD(day, 1, mydate);
  END LOOP;
  RETURN mydate;
END;
