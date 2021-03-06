CREATE TABLE PACKAGES
(
  PACKAGE_ID VARCHAR2(20) PRIMARY KEY,
  PACKAGE_NAME VARCHAR2(100) NOT NULL UNIQUE,
  BILLING_CODE VARCHAR2(25) NOT NULL,
  CATEGORY_ID VARCHAR2(22) NOT NULL,
  GRANDFATHERED VARCHAR2(1),
  PACKAGE_TYPE VARCHAR2(30) NOT NULL,
  LAST_UPDATED DATE,
  PKG_DETAIL_DESCR VARCHAR2(100),
  PCR_DROP_DATE DATE,
  WORK_REQST_NO VARCHAR2(20)
);