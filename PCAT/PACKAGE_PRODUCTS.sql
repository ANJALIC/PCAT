CREATE TABLE PACKAGE_PRODUCTS
(
  PACKAGE_ID VARCHAR2(20) NOT NULL,
  PRODUCT_ID VARCHAR2(20),
  ORDER_TYPE VARCHAR2(10),
  START_DATE DATE,
  END_DATE DATE,
  ITEM_MIN NUMBER(22, 0),
  ITEM_MAX NUMBER(22, 0),
  LAST_UPDATED DATE,
  PKG_PROD_GRANDFATHERED VARCHAR2(1),
  WORK_REQST_NO VARCHAR2(20)
)
;

ALTER TABLE PACKAGE_PRODUCTS
ADD CONSTRAINT PACKAGE_PRODUCTS_PRODUCTS_FK1 FOREIGN KEY
(
  PRODUCT_ID
)
REFERENCES PRODUCTS
(
PRODUCT_ID
) ENABLE
;

ALTER TABLE PACKAGE_PRODUCTS
ADD CONSTRAINT PACKAGE_PRODUCTS_PACKAGES_FK1 FOREIGN KEY
(
  PACKAGE_ID
)
REFERENCES PACKAGES
(
PACKAGE_ID
) ENABLE
;
