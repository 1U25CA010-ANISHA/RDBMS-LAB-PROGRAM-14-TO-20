USE CollegeDB;
CREATE OR REPLACE PROCEDURE insert_student(
    p_id NUMBER,
    p_name VARCHAR2,
    p_dept NUMBER
)
IS
BEGIN
    INSERT INTO Student
    VALUES(p_id, p_name, p_dept);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student inserted successfully');
END;
/
EXEC insert_student(1003, 'Rahul', 101);
