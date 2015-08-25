CREATE TABLE PRODUCTS
(
  PRODUCT_ID VARCHAR2(20) PRIMARY KEY,
  PRODUCT_NAME VARCHAR2(150) NOT NULL,
  PRODUCT_DESC VARCHAR2(250),
  BILLING_SYSTEM VARCHAR2(10) NOT NULL,
  BILLING_CODE VARCHAR2(25) NOT NULL,
  PRODUCT_TYPE VARCHAR2(20) NOT NULL,
  PRODUCT_TYPE_VALUE VARCHAR2(50) NOT NULL,
  GRANDFATHERED VARCHAR2(1),
  LAST_UPDATED DATE,
  PROD_STARTDATE DATE,
  PROD_ENDDATE DATE,
  WORK_REQST_NO VARCHAR2(20)
);

create sequence PRODUCTS_ID_SEQ
minvalue 0
start with 1
increment by 1
nocache;

create sequence WORK_REQST_SEQ
minvalue 0
start with 1
increment by 1
nocache;

CREATE or REPLACE PROCEDURE addToProducts 
(
PRODUCT_NAME VARCHAR2, 
PRODUCT_DESC VARCHAR2, 
PRODUCT_TYPE VARCHAR2, 
PRODUCT_TYPE_VALUE VARCHAR2,
GRANDFATHERED VARCHAR2,
PROD_ENDDATE DATE,
WORK_REQST_ID VARCHAR2
) AS 
ProductSequence VARCHAR2(20);
CurrentDate DATE;
Work_Reqst_No VARCHAR2(20);
  BEGIN
      SELECT 'VZ'||to_char(PRODUCTS_ID_SEQ.nextval) 
        into ProductSequence 
        from dual;
      SELECT TO_CHAR (SYSDATE,  'DD-MON-YYYY') "NOW" 
        INTO CurrentDate 
        FROM DUAL;
      SELECT WORK_REQST_ID||to_char(WORK_REQST_SEQ.nextval) 
        into Work_Reqst_No 
        from dual;
      INSERT INTO products 
        values(ProductSequence, product_name, product_desc, 'BES', '007',
        product_type, product_type_value, grandfathered, CurrentDate, 
        CurrentDate, prod_enddate, Work_Reqst_No);
   END;

execute addToProducts ('Access', 'VES Product', 'Basic', 'Enterprise', 'N', '23-JUL-2041', 'AR');

select * from products;