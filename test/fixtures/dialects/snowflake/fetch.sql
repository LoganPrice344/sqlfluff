EXECUTE IMMEDIATE
BEGIN
    FETCH my_cursor_name INTO my_variable_name;
END;

EXECUTE IMMEDIATE
BEGIN
    FETCH my_cursor_name INTO my_variable_name, my_other_variable;
END;
