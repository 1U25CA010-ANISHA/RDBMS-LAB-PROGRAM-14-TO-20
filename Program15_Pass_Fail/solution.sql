USE CollegeDB;
DECLARE
    marks NUMBER := 65;
BEGIN
    IF marks >= 40 THEN
        DBMS_OUTPUT.PUT_LINE('Student Passed');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Student Failed');
    END IF;
END;
/
