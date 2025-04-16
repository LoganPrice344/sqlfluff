CANCEL my_result_set;
-- DECLARE
--     expression_to_evaluate VARCHAR DEFAULT 'default value';
-- BEGIN
--     CANCEL my_result_set;
-- END;;

-- DECLARE
--     expression_to_evaluate VARCHAR DEFAULT 'default value';
EXECUTE IMMEDIATE
    BEGIN
        CANCEL my_result_set;
    END;
