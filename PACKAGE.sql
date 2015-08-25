
  CREATE TABLE "SYSTEM"."PACKAGE" 
   (	"PACKAGE_ID" VARCHAR2(20 BYTE) NOT NULL ENABLE, 
	"PACKAGE_NAME" VARCHAR2(100 BYTE), 
	"BILLING_CODE" VARCHAR2(25 BYTE), 
	"CATEGORY_ID" VARCHAR2(22 BYTE) NOT NULL ENABLE, 
	"GRANDFATHERED" VARCHAR2(1 BYTE), 
	"PACKAGE_TYPE" VARCHAR2(30 BYTE), 
	"LAST_UPDATED" DATE, 
	"PKG_DETAIL_DESCR" VARCHAR2(100 BYTE), 
	"PCR_DROP_DATE" DATE, 
	"WORK_REQST_NO" VARCHAR2(20 BYTE), 
	 CONSTRAINT "PACKAGES_PK" PRIMARY KEY ("PACKAGE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE, 
	 CONSTRAINT "PACKAGES_UK1" UNIQUE ("PACKAGE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 

  CREATE UNIQUE INDEX "SYSTEM"."PACKAGES_PK" ON "SYSTEM"."PACKAGE" ("PACKAGE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 
  CREATE UNIQUE INDEX "SYSTEM"."PACKAGES_UK1" ON "SYSTEM"."PACKAGE" ("PACKAGE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
 