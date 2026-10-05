USE CollegeDB;
DECLARE
    CURSOR student_cursor IS
        SELECT StudentID, StudentName, DepartmentID
        FROM Student;

    x Student.StudentID%TYPE;
    y Student.StudentName%TYPE;
    z Student.DepartmentID%TYPE;

BEGIN
    OPEN student_cursor;

    LOOP
        FETCH student_cursor INTO x, y, z;

        EXIT WHEN student_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || x ||
            ' Name: ' || y ||
            ' Department: ' || z
        );
    END LOOP;

    CLOSE student_cursor;
END;
/
