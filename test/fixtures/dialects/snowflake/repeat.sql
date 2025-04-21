EXECUTE IMMEDIATE
BEGIN
    REPEAT
        counter := counter + 1;
    UNTIL (counter > 8)
    END REPEAT;
END;

EXECUTE IMMEDIATE
BEGIN
    REPEAT
        counter := counter + 1;
    UNTIL (counter > 8)
    END REPEAT MY_COUNT;
END;
