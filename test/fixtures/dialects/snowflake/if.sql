CREATE OR REPLACE PROCEDURE example_if(flag INTEGER)
RETURNS VARCHAR
LANGUAGE SQL
AS
$$
BEGIN
  IF (FLAG = 1) THEN
    RETURN 'one';
  ELSEIF (FLAG = 2) THEN
    RETURN 'two';
  ELSE
    RETURN 'Unexpected input.';
  END IF;
END;
$$
;

EXECUTE IMMEDIATE
BEGIN
  IF (FLAG = 1) THEN
    RETURN 'one';
  ELSEIF (FLAG = 2) THEN
    RETURN 'two';
  ELSEIF (FLAG = 3) THEN
    RETURN 'three';
  ELSE
    RETURN 'Unexpected input.';
  END IF;
END;

EXECUTE IMMEDIATE
BEGIN
  IF (FLAG = 1) THEN
    RETURN 'one';
  ELSE
    RETURN 'Unexpected input.';
  END IF;
END;
