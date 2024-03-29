CREATE TABLE CUSTOMERS( 
   ID   INT NOT NULL,
   USERNAME VARCHAR (25) UNIQUE NOT NULL,
   PASSWORD VARCHAR (25) NOT NULL,
   NAME VARCHAR (20) NOT NULL, 
   AGE INT NOT NULL, 
   ADDRESS CHAR (25), 
   SALARY   DECIMAL (18, 2),        
   PRIMARY KEY (ID) 
);  
CREATE SEQUENCE customer_id_SEQ START WITH 7 NOCACHE ORDER;
CREATE OR REPLACE TRIGGER customer_id_TRG BEFORE
  INSERT ON customers FOR EACH ROW WHEN (NEW.id IS NULL) BEGIN :NEW.id := customer_id_SEQ.NEXTVAL;
END;

COMMIT; 

INSERT INTO CUSTOMERS (ID,USERNAME,PASSWORD,NAME,AGE,ADDRESS,SALARY) 
VALUES (1,'ramy1','pass','Ramesh', 32, 'Ahmedabad', 2000.00 );  
INSERT INTO CUSTOMERS (ID,USERNAME,PASSWORD,NAME,AGE,ADDRESS,SALARY) 
VALUES (2,'khil2','pass','Khilan', 25, 'Delhi', 1500.00 );  
INSERT INTO CUSTOMERS (ID,USERNAME,PASSWORD,NAME,AGE,ADDRESS,SALARY)  
VALUES (3,'kausy','pass','kaushik', 23, 'Kota', 2000.00 );
INSERT INTO CUSTOMERS (ID,USERNAME,PASSWORD,NAME,AGE,ADDRESS,SALARY) 
VALUES (4,'cha1','pass','Chaitali', 25, 'Mumbai', 6500.00 ); 
INSERT INTO CUSTOMERS (ID,USERNAME,PASSWORD,NAME,AGE,ADDRESS,SALARY) 
VALUES (5,'hard2019','pass','Hardik', 27, 'Bhopal', 8500.00 );  
INSERT INTO CUSTOMERS (ID,USERNAME,PASSWORD,NAME,AGE,ADDRESS,SALARY)  
VALUES (6, 'kom2','pass','Komal', 22, 'MP', 4500.00 );

COMMIT; 
