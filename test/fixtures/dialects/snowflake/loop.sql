CREATE PROCEDURE break_out_of_loop()
RETURNS INTEGER
LANGUAGE SQL
AS
$$
    DECLARE
        counter INTEGER;
    BEGIN
        counter := 0;
        LOOP
            counter := counter + 1;
            IF (counter > 5) THEN
                BREAK;
            END IF;
        END LOOP;
        RETURN counter;
    END;
$$
;

EXECUTE IMMEDIATE
BEGIN
    LOOP
        SELECT * FROM my_table;
    END LOOP loop_name;
END;
