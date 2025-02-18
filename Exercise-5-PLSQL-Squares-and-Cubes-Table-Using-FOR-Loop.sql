 
SET VERIFY OFF
SET SERVEROUTPUT ON 
-- Declaring varable 
DECLARE 
num  NUMBER:=0;
cubs NUMBER;
squares NUMBER;
count_cubs NUMBER:=0;
sum_sqrs NUMBER:=0;
sum_cubs NUMBER:=0;
BEGIN 
DBMS_OUTPUT.PUT_LINE('|-----------------------------------|' );
DBMS_OUTPUT.PUT_LINE('| NUMBER   |SQUARE	 |   CUBE         |' );
DBMS_OUTPUT.PUT_LINE('|-----------------------------------|' );
FOR x IN 1..15 LOOP

cubs:=x * x *x;
squares:=x * x;

sum_sqrs:=sum_sqrs+squares;
sum_cubs:=sum_cubs +cubs;

num :=x;

IF cubs>500 THEN 
count_cubs:=count_cubs+1;
END IF;



DBMS_OUTPUT.PUT_LINE('| ' ||num ||  '        ' || squares || '         ' || cubs);

END LOOP;
DBMS_OUTPUT.PUT_LINE('-----------------------------------' );


DBMS_OUTPUT.PUT_LINE('*************************************');


DBMS_OUTPUT.PUT_LINE('Sum of the Squares :'|| sum_sqrs);
DBMS_OUTPUT.PUT_LINE('Sum of the Cubes :'|| sum_cubs);
DBMS_OUTPUT.PUT_LINE(count_cubs ||' Cubes were greater than 500');


IF sum_sqrs>2000 THEN 
DBMS_OUTPUT.PUT_LINE('Sum of squares exceeded 2,000 ');
ELSE 
DBMS_OUTPUT.PUT_LINE('Sum of squares  did not  exceeded 2,000 ');
END IF;
END;
/
