USE CollegeDB;
DECLARE
    x NUMBER := 10;
    y NUMBER := 20;
    z NUMBER;
BEGIN
    z := x + y;
    DBMS_OUTPUT.PUT_LINE('Sum = ' || z);
END;
/
