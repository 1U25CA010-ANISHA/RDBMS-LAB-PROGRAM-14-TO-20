USE CollegeDB;
CREATE TABLE Employee (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Salary NUMBER
);
CREATE OR REPLACE TRIGGER employee_insert_trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'New employee inserted: ' || :NEW.EmployeeName
    );
END;
/
INSERT INTO Employee
VALUES (101, 'Arun', 30000);
