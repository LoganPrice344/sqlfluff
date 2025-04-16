



CREATE PROCEDURE case_demo_01(v VARCHAR)
RETURNS VARCHAR
LANGUAGE SQL
AS
$$
    BEGIN
        CASE (v)
            WHEN 'first choice' THEN
                RETURN 'one';
            WHEN 'second choice' THEN
                RETURN 'two';
            ELSE
                RETURN 'unexpected choice';
       END CASE;
    END;
$$
;

CREATE PROCEDURE case_demo_2(v VARCHAR)
RETURNS VARCHAR
LANGUAGE PYTHON
AS
$$
  BEGIN
    CASE
      WHEN v = 'first choice' THEN
        RETURN 'one';
      WHEN v = 'second choice' THEN
        RETURN 'two';
      ELSE
        RETURN 'unexpected choice';
    END;
  END;
  $$;

EXECUTE IMMEDIATE
DECLARE
  expression_to_evaluate VARCHAR DEFAULT 'default value';
BEGIN
  expression_to_evaluate := 'value a';
  CASE (expression_to_evaluate)
    WHEN 'value a' THEN
      RETURN 'x';
    WHEN 'value b' THEN
      RETURN 'y';
    WHEN 'value c' THEN
      RETURN 'z';
    WHEN 'default value' THEN
      RETURN 'default';
    ELSE
      RETURN 'other';
  END;
END;;

EXECUTE IMMEDIATE
DECLARE
  expression_to_evaluate VARCHAR DEFAULT 'default value';
BEGIN
  expression_to_evaluate := 'value a';
  CASE (expression_to_evaluate)
    WHEN 'value a' THEN
      RETURN 'x';
    WHEN 'value b' THEN
      RETURN 'y';
    WHEN 'value c' THEN
      RETURN 'z';
    WHEN 'default value' THEN
      RETURN 'default';
    ELSE
      RETURN 'other';
  END;
END;
EXECUTE IMMEDIATE
DECLARE
  a VARCHAR DEFAULT 'x';
  b VARCHAR DEFAULT 'y';
  c VARCHAR DEFAULT 'z';
BEGIN
  CASE
    WHEN a = 'x' THEN
      RETURN 'a is x';
    WHEN b = 'y' THEN
      RETURN 'b is y';
    WHEN c = 'z' THEN
      RETURN 'c is z';
    ELSE
      RETURN 'a is not x, b is not y, and c is not z';
  END;
END;
