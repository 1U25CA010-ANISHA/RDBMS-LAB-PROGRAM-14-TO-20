USE CollegeDB;
CREATE OR REPLACE FUNCTION count_students(
    p_dept NUMBER
)
RETURN NUMBER
IS
    total NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO total
    FROM Student
    WHERE DepartmentID = p_dept;

    RETURN total;
END;
/
SELECT count_students(101) FROM dual;
