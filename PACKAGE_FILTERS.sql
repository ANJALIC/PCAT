
  CREATE TABLE "SYSTEM"."PACKAGE_FILTERS" 
   (	"PACKAGE_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"PRODUCT_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"START_DATE" DATE, 
	"FILTER_TYPE" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"END_DATE" DATE, 
	"FILTER_VALUE1" VARCHAR2(4000 BYTE), 
	"LAST_UPDATED" DATE, 
	"IS_ACTIVE" VARCHAR2(20 BYTE), 
	"WORK_REQST_NO" VARCHAR2(20 BYTE), 
	 CONSTRAINT "PACKAGE_FILTERS_PK" PRIMARY KEY ("PACKAGE_ID", "PRODUCT_ID", "FILTER_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "PACKAGE_FILTERS_PACKAGES_FK1" FOREIGN KEY ("PACKAGE_ID")
	  REFERENCES "SYSTEM"."PACKAGE" ("PACKAGE_ID") ENABLE, 
	 CONSTRAINT "PACKAGE_FILTERS_PRODUCTS_FK1" FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "SYSTEM"."PRODUCTS" ("PRODUCT_ID") ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 