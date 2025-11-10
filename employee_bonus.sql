SET SERVEROUTPUT ON;

DECLARE
    
    TYPE emp_rec_type IS RECORD (
        emp_id     NUMBER,
        emp_name   VARCHAR2(50),
        salary     NUMBER,
        bonus      NUMBER
    );

   
    TYPE emp_table_type IS TABLE OF emp_rec_type;

    
    employees emp_table_type := emp_table_type();

   
    emp_rec emp_rec_type;

BEGIN
  
    emp_rec.emp_id := 101; emp_rec.emp_name := 'Alice'; emp_rec.salary := 1200; emp_rec.bonus := 0;
    employees.EXTEND; employees(1) := emp_rec;

    emp_rec.emp_id := 102; emp_rec.emp_name := 'Bob'; emp_rec.salary := 500; emp_rec.bonus := 0;
    employees.EXTEND; employees(2) := emp_rec;

    emp_rec.emp_id := 103; emp_rec.emp_name := 'Charles'; emp_rec.salary := 2200; emp_rec.bonus := 0;
    employees.EXTEND; employees(3) := emp_rec;

    DBMS_OUTPUT.PUT_LINE('--- Employee Bonus Report ---');

    
    FOR i IN 1 .. employees.COUNT LOOP

       
        IF employees(i).salary <= 0 THEN
            GOTO invalid_salary;
        END IF;

   
        employees(i).bonus := employees(i).salary * 0.10;

        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || employees(i).emp_id || 
            ' | Name: ' || employees(i).emp_name || 
            ' | Salary: ' || employees(i).salary || 
            ' | Bonus: ' || employees(i).bonus
        );

        CONTINUE;

        
    END LOOP;

END;
/
