--------------------------------------------------------
--  File created - wtorek-stycznia-08-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMINISTRATOR
--------------------------------------------------------

  CREATE TABLE "ADMINISTRATOR" 
   (	"ID_ADMINISTRATORA" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BAGAZ
--------------------------------------------------------

  CREATE TABLE "BAGAZ" 
   (	"ID_BAGAZU" NUMBER(5,0), 
	"RODZAJ" VARCHAR2(12 BYTE), 
	"WAGA" NUMBER(4,0), 
	"ID_KLIENTA" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BILET
--------------------------------------------------------

  CREATE TABLE "BILET" 
   (	"ID_BILETU" NUMBER(5,0), 
	"CENA" NUMBER(4,0), 
	"RZAD" NUMBER(3,0), 
	"TYP_MIEJSCA" VARCHAR2(20 BYTE), 
	"ID_KLIENTA" NUMBER(5,0), 
	"ID_LOTU" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table KLIENT
--------------------------------------------------------

  CREATE TABLE "KLIENT" 
   (	"ID_KLIENTA" NUMBER(5,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOT
--------------------------------------------------------

  CREATE TABLE "LOT" 
   (	"ID_LOTU" NUMBER(5,0), 
	"ID_SAMOLOTU" NUMBER(5,0), 
	"ID_LOTNISKA_WYLOTU" NUMBER(5,0), 
	"ID_LOTNISKA_PRZYLOTU" NUMBER(5,0), 
	"CENA_BILETU" NUMBER(4,0), 
	"DATA_LOTU" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOTNISKO
--------------------------------------------------------

  CREATE TABLE "LOTNISKO" 
   (	"ID_LOTNISKA" NUMBER(5,0), 
	"KRAJ" VARCHAR2(20 BYTE), 
	"MIASTO" VARCHAR2(25 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NAPRAWA
--------------------------------------------------------

  CREATE TABLE "NAPRAWA" 
   (	"ID_NAPRAWY" NUMBER(*,0), 
	"TERMIN_ZLECENIA_NAPRAWY" DATE, 
	"TERMIN_UKONCZENIA_NAPRAWY" DATE, 
	"TRESC_ZLECENIA" VARCHAR2(500 BYTE), 
	"ID_SAMOLOTU" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRACOWNIK_ADMINISTRACYJNY
--------------------------------------------------------

  CREATE TABLE "PRACOWNIK_ADMINISTRACYJNY" 
   (	"ID_PRACOWNIKA" NUMBER(5,0), 
	"ID_ADMINISTRATORA" NUMBER(5,0), 
	"ZAROBKI" NUMBER(6,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRACOWNIK_TECHNICZNY
--------------------------------------------------------

  CREATE TABLE "PRACOWNIK_TECHNICZNY" 
   (	"ID_PRACOWNIKA" NUMBER(5,0), 
	"ID_ADMINISTRATORA" NUMBER(5,0), 
	"ZAROBKI" NUMBER(6,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SAMOLOT
--------------------------------------------------------

  CREATE TABLE "SAMOLOT" 
   (	"ID_SAMOLOTU" NUMBER(5,0), 
	"NAZWA" VARCHAR2(20 BYTE), 
	"MODEL" VARCHAR2(25 BYTE), 
	"ILOSC_MIEJSC" NUMBER(4,0), 
	"STAN_TECHNICZNY" VARCHAR2(20 BYTE), 
	"PRZEGLAD_OKRESOWY" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UZYTKOWNIK
--------------------------------------------------------

  CREATE TABLE "UZYTKOWNIK" 
   (	"ID_UZYTKOWNIKA" NUMBER(5,0), 
	"LOGIN" VARCHAR2(15 BYTE), 
	"HASLO" VARCHAR2(20 BYTE), 
	"NR_TELEFONU" VARCHAR2(130 BYTE), 
	"KRAJ_ZAMIESZKANIA" VARCHAR2(25 BYTE), 
	"MIEJSCOWOSC" VARCHAR2(25 BYTE), 
	"ULICA" VARCHAR2(30 BYTE), 
	"EMAIL" VARCHAR2(35 BYTE), 
	"PESEL" VARCHAR2(40 BYTE), 
	"IMIE" VARCHAR2(20 BYTE), 
	"NAZWISKO" VARCHAR2(30 BYTE), 
	"ID_KLIENTA" NUMBER(5,0), 
	"ID_PRAC_ADM" NUMBER(5,0), 
	"ID_ADMINISTRATORA" NUMBER(5,0), 
	"ID_PRAC_TECH" NUMBER(5,0), 
	"NR_DOMU" VARCHAR2(20 BYTE), 
	"NR_LOKALU" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View DMRS_INSTALLATION
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRS_INSTALLATION" ("DMRS_PERSISTENCE_VERSION", "DMRS_REPORTS_VERSION", "CREATED_ON") AS 
  select 1.6 DMRS_Persistence_Version, 1.0 DMRS_Reports_Version, to_timestamp('2018/12/01 17:22:08','YYYY/MM/DD HH24:MI:SS') Created_On from dual with read only
;
--------------------------------------------------------
--  DDL for View DMRS_VDIAGRAMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRS_VDIAGRAMS" ("DIAGRAM_NAME", "OBJECT_ID", "OVID", "DIAGRAM_TYPE", "IS_DISPLAY", "VISIBLE", "MASTER_DIAGRAM_ID", "MASTER_DIAGRAM_OVID", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "NOTATION", "SHOW_ALL_DETAILS", "SHOW_NAMES_ONLY", "SHOW_ELEMENTS", "SHOW_DATATYPE", "SHOW_KEYS", "AUTOROUTE", "BOX_IN_BOX", "DIAGRAM_SVG", "DIAGRAM_PDF", "DESIGN_OVID", "PDF_NAME") AS 
  Select Diagram_Name, Object_Id, Ovid, Diagram_Type, Is_Display, Visible, Master_Diagram_Id, Master_Diagram_Ovid, Model_Id, Model_Ovid, Model_Name, Notation, Show_All_Details, Show_Names_Only, Show_Elements, Show_Datatype,Show_Keys, Autoroute, Box_In_Box, Diagram_Svg, Diagram_Pdf,  Design_Ovid, Diagram_Name||'.PDF' from DMRS_DIAGRAMS
;
--------------------------------------------------------
--  DDL for View DMRV_AGGR_FUNC_DIMENSIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_AGGR_FUNC_DIMENSIONS" ("AGGREGATE_FUNCTION_ID", "AGGREGATE_FUNCTION_NAME", "AGGREGATE_FUNCTION_OVID", "DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "DESIGN_OVID") AS 
  select  Aggregate_Function_ID, Aggregate_Function_Name, Aggregate_Function_OVID, Dimension_ID, Dimension_Name, Dimension_OVID, Design_OVID from DMRS_AGGR_FUNC_DIMENSIONS
;
--------------------------------------------------------
--  DDL for View DMRV_AGGR_FUNC_LEVELS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_AGGR_FUNC_LEVELS" ("AGGREGATE_FUNCTION_ID", "AGGREGATE_FUNCTION_NAME", "AGGREGATE_FUNCTION_OVID", "LEVEL_ID", "LEVEL_NAME", "LEVEL_OVID", "DESIGN_OVID") AS 
  select  Aggregate_Function_ID, Aggregate_Function_Name, Aggregate_Function_OVID, Level_ID, Level_Name, Level_OVID, Design_OVID from DMRS_AGGR_FUNC_LEVELS
;
--------------------------------------------------------
--  DDL for View DMRV_ATTRIBUTES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_ATTRIBUTES" ("ATTRIBUTE_NAME", "OBJECT_ID", "OVID", "IMPORT_ID", "CONTAINER_ID", "CONTAINER_OVID", "MANDATORY", "DATATYPE_KIND", "VALUE_TYPE", "FORMULA", "SCOPEENTITY_ID", "SCOPEENTITY_OVID", "DOMAIN_ID", "DOMAIN_OVID", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "DISTINCT_TYPE_ID", "DISTINCT_TYPE_OVID", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "COLLECTION_TYPE_ID", "COLLECTION_TYPE_OVID", "CHECK_CONSTRAINT_NAME", "DEFAULT_VALUE", "USE_DOMAIN_CONSTRAINT", "DOMAIN_NAME", "LOGICAL_TYPE_NAME", "STRUCTURED_TYPE_NAME", "DISTINCT_TYPE_NAME", "COLLECTION_TYPE_NAME", "SYNONYMS", "PREFERRED_ABBREVIATION", "RELATIONSHIP_ID", "RELATIONSHIP_OVID", "ENTITY_NAME", "PK_FLAG", "FK_FLAG", "RELATIONSHIP_NAME", "SEQUENCE", "T_SIZE", "T_PRECISION", "CHAR_UNITS", "NATIVE_TYPE", "T_SCALE", "DATA_SOURCE", "SCOPEENTITY_NAME", "DESIGN_OVID") AS 
  select  Attribute_Name, Object_ID, OVID, Import_ID, Container_ID, Container_OVID, Mandatory, DataType_Kind, Value_Type, Formula, ScopeEntity_ID, ScopeEntity_OVID, Domain_ID, Domain_OVID, Logical_Type_ID, Logical_Type_OVID, Distinct_Type_ID, Distinct_Type_OVID, Structured_Type_ID, Structured_Type_OVID, Collection_Type_ID, Collection_Type_OVID, Check_Constraint_Name, Default_Value, Use_Domain_Constraint, Domain_Name, Logical_Type_Name, Structured_Type_Name, Distinct_Type_Name, Collection_Type_Name, Synonyms, Preferred_Abbreviation, Relationship_ID, Relationship_OVID, Entity_Name, PK_Flag, FK_Flag, Relationship_Name, Sequence, T_Size, T_Precision, Char_Units, Native_Type, T_Scale, Data_Source, ScopeEntity_Name, Design_OVID from DMRS_ATTRIBUTES
;
--------------------------------------------------------
--  DDL for View DMRV_AVT
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_AVT" ("DATAELEMENT_ID", "DATAELEMENT_OVID", "TYPE", "SEQUENCE", "VALUE", "SHORT_DESCRIPTION", "CONTAINER_ID", "CONTAINER_OVID", "CONTAINER_NAME", "DATAELEMENT_NAME", "DESIGN_OVID") AS 
  select  DataElement_ID, DataElement_OVID, Type, Sequence, Value, Short_Description, Container_ID, Container_OVID, Container_Name, DataElement_Name, Design_OVID from DMRS_AVT
;
--------------------------------------------------------
--  DDL for View DMRV_BUSINESS_INFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_BUSINESS_INFO" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME") AS 
  select  Design_ID, Design_OVID, Design_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name from DMRS_BUSINESS_INFO
;
--------------------------------------------------------
--  DDL for View DMRV_CHANGE_REQUEST_ELEMENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CHANGE_REQUEST_ELEMENTS" ("CHANGE_REQUEST_ID", "CHANGE_REQUEST_OVID", "CHANGE_REQUEST_NAME", "ELEMENT_ID", "ELEMENT_OVID", "ELEMENT_NAME", "ELEMENT_TYPE", "DESIGN_OVID") AS 
  select  Change_Request_ID, Change_Request_OVID, Change_Request_Name, Element_ID, Element_OVID, Element_Name, Element_Type, Design_OVID from DMRS_CHANGE_REQUEST_ELEMENTS
;
--------------------------------------------------------
--  DDL for View DMRV_CHANGE_REQUESTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CHANGE_REQUESTS" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "CHANGE_REQUEST_ID", "CHANGE_REQUEST_OVID", "CHANGE_REQUEST_NAME", "REQUEST_STATUS", "REQUEST_DATE_STRING", "COMPLETION_DATE_STRING", "IS_COMPLETED", "REASON") AS 
  select  Design_ID, Design_OVID, Design_Name, Change_Request_ID, Change_Request_OVID, Change_Request_Name, Request_Status, Request_Date_String, Completion_Date_String, Is_Completed, Reason from DMRS_CHANGE_REQUESTS
;
--------------------------------------------------------
--  DDL for View DMRV_CHECK_CONSTRAINTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CHECK_CONSTRAINTS" ("DATAELEMENT_ID", "DATAELEMENT_OVID", "TYPE", "SEQUENCE", "CONSTRAINT_NAME", "TEXT", "DATABASE_TYPE", "CONTAINER_ID", "CONTAINER_OVID", "CONTAINER_NAME", "DATAELEMENT_NAME", "DESIGN_OVID") AS 
  select  DataElement_ID, DataElement_OVID, Type, Sequence, Constraint_Name, Text, Database_Type, Container_ID, Container_OVID, Container_Name, DataElement_Name, Design_OVID from DMRS_CHECK_CONSTRAINTS
;
--------------------------------------------------------
--  DDL for View DMRV_CLASSIFICATION_TYPES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CLASSIFICATION_TYPES" ("TYPE_ID", "TYPE_OVID", "TYPE_NAME", "DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME") AS 
  select  Type_ID, Type_OVID, Type_Name, Design_ID, Design_OVID, Design_Name from DMRS_CLASSIFICATION_TYPES
;
--------------------------------------------------------
--  DDL for View DMRV_COLLECTION_TYPES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_COLLECTION_TYPES" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "COLLECTION_TYPE_ID", "COLLECTION_TYPE_OVID", "COLLECTION_TYPE_NAME", "C_TYPE", "DATATYPE_ID", "DATATYPE_OVID", "DATATYPE_NAME", "DT_TYPE", "DT_REF", "MAX_ELEMENT", "PREDEFINED") AS 
  select  Design_ID, Design_OVID, Design_Name, Collection_Type_ID, Collection_Type_OVID, Collection_Type_Name, C_Type, DataType_ID, DataType_OVID, DataType_Name, DT_Type, DT_Ref, Max_Element, Predefined from DMRS_COLLECTION_TYPES
;
--------------------------------------------------------
--  DDL for View DMRV_COLUMN_GROUPS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_COLUMN_GROUPS" ("TABLE_ID", "TABLE_OVID", "SEQUENCE", "COLUMNGROUP_ID", "COLUMNGROUP_OVID", "COLUMNGROUP_NAME", "COLUMNS", "NOTES", "TABLE_NAME", "DESIGN_OVID") AS 
  select  Table_ID, Table_OVID, Sequence, ColumnGroup_ID, ColumnGroup_OVID, ColumnGroup_Name, Columns, Notes, Table_Name, Design_OVID from DMRS_COLUMN_GROUPS
;
--------------------------------------------------------
--  DDL for View DMRV_COLUMNS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_COLUMNS" ("COLUMN_NAME", "ABBREVIATION", "OBJECT_ID", "OVID", "IMPORT_ID", "CONTAINER_ID", "CONTAINER_OVID", "MANDATORY", "DATATYPE_KIND", "VALUE_TYPE", "COMPUTED", "FORMULA", "SCOPEENTITY_ID", "SCOPEENTITY_OVID", "DOMAIN_ID", "DOMAIN_OVID", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "DISTINCT_TYPE_ID", "DISTINCT_TYPE_OVID", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "COLLECTION_TYPE_ID", "COLLECTION_TYPE_OVID", "CHECK_CONSTRAINT_NAME", "DEFAULT_VALUE", "USE_DOMAIN_CONSTRAINT", "DOMAIN_NAME", "LOGICAL_TYPE_NAME", "STRUCTURED_TYPE_NAME", "DISTINCT_TYPE_NAME", "COLLECTION_TYPE_NAME", "USES_DEFAULT", "ENGINEER", "TABLE_NAME", "PK_FLAG", "FK_FLAG", "NATIVE_TYPE", "SEQUENCE", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "T_SIZE", "T_PRECISION", "T_SCALE", "CHAR_UNITS", "PERSONALLY_ID_INFORMATION", "SENSITIVE_INFORMATION", "MASK_FOR_NONE_PRODUCTION", "SCOPEENTITY_NAME", "AUTO_INCREMENT_COLUMN", "IDENTITY_COLUMN", "AUTO_INCREMENT_GENERATE_ALWAYS", "AUTO_INCREMENT_START_WITH", "AUTO_INCREMENT_INCREMENT_BY", "AUTO_INCREMENT_MIN_VALUE", "AUTO_INCREMENT_MAX_VALUE", "AUTO_INCREMENT_CYCLE", "AUTO_INCREMENT_DISABLE_CACHE", "AUTO_INCREMENT_CACHE", "AUTO_INCREMENT_ORDER", "AUTO_INCREMENT_SEQUENCE_NAME", "AUTO_INCREMENT_TRIGGER_NAME", "DESIGN_OVID") AS 
  select  Column_Name, Abbreviation, Object_ID, OVID, Import_ID, Container_ID, Container_OVID, Mandatory, DataType_Kind, Value_Type, Computed, Formula, ScopeEntity_ID, ScopeEntity_OVID, Domain_ID, Domain_OVID, Logical_Type_ID, Logical_Type_OVID, Distinct_Type_ID, Distinct_Type_OVID, Structured_Type_ID, Structured_Type_OVID, Collection_Type_ID, Collection_Type_OVID, Check_Constraint_Name, Default_Value, Use_Domain_Constraint, Domain_Name, Logical_Type_Name, Structured_Type_Name, Distinct_Type_Name, Collection_Type_Name, Uses_Default, Engineer, Table_Name, PK_Flag, FK_Flag, Native_Type, Sequence, Model_ID, Model_OVID, Model_Name, T_Size, T_Precision, T_Scale, Char_Units, Personally_ID_Information, Sensitive_Information, Mask_For_None_Production, ScopeEntity_Name, Auto_Increment_Column, Identity_Column, Auto_Increment_Generate_Always, Auto_Increment_Start_With, Auto_Increment_Increment_By, Auto_Increment_Min_Value, Auto_Increment_Max_Value, Auto_Increment_Cycle, Auto_Increment_Disable_Cache, Auto_Increment_Cache, Auto_Increment_Order, Auto_Increment_Sequence_Name, Auto_Increment_Trigger_Name, Design_OVID from DMRS_COLUMNS
;
--------------------------------------------------------
--  DDL for View DMRV_COLUMN_UI
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_COLUMN_UI" ("LABEL", "FORMAT_MASK", "FORM_DISPLAY_WIDTH", "FORM_MAXIMUM_WIDTH", "DISPLAY_AS", "FORM_HEIGHT", "DISPLAYED_ON_FORMS", "DISPLAYED_ON_REPORTS", "READ_ONLY", "HELP_TEXT", "OBJECT_ID", "OBJECT_OVID", "OBJECT_NAME", "DESIGN_OVID") AS 
  select  Label, Format_Mask, Form_Display_Width, Form_Maximum_Width, Display_As, Form_Height, Displayed_On_Forms, Displayed_On_Reports, Read_Only, Help_Text, Object_ID, Object_OVID, Object_Name, Design_OVID from DMRS_COLUMN_UI
;
--------------------------------------------------------
--  DDL for View DMRV_CONSTR_FK_COLUMNS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CONSTR_FK_COLUMNS" ("FK_ID", "FK_OVID", "COLUMN_ID", "COLUMN_OVID", "TABLE_ID", "TABLE_OVID", "INDEX_NAME", "TABLE_NAME", "COLUMN_NAME", "SEQUENCE", "SORT_ORDER", "DESIGN_OVID") AS 
  select  Fk_ID, Fk_OVID, Column_ID, Column_OVID, Table_ID, Table_OVID, Index_Name, Table_Name, Column_Name, Sequence, Sort_Order, Design_OVID from DMRS_CONSTR_FK_COLUMNS
;
--------------------------------------------------------
--  DDL for View DMRV_CONSTR_INDEX_COLUMNS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CONSTR_INDEX_COLUMNS" ("INDEX_ID", "INDEX_OVID", "COLUMN_ID", "COLUMN_OVID", "TABLE_ID", "TABLE_OVID", "INDEX_NAME", "TABLE_NAME", "COLUMN_NAME", "SEQUENCE", "SORT_ORDER", "DESIGN_OVID") AS 
  select  Index_ID, Index_OVID, Column_ID, Column_OVID, Table_ID, Table_OVID, Index_Name, Table_Name, Column_Name, Sequence, Sort_Order, Design_OVID from DMRS_CONSTR_INDEX_COLUMNS
;
--------------------------------------------------------
--  DDL for View DMRV_CONTACT_EMAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CONTACT_EMAILS" ("CONTACT_ID", "CONTACT_OVID", "CONTACT_NAME", "EMAIL_ID", "EMAIL_OVID", "EMAIL_NAME", "DESIGN_OVID") AS 
  select  Contact_ID, Contact_OVID, Contact_Name, Email_ID, Email_OVID, Email_Name, Design_OVID from DMRS_CONTACT_EMAILS
;
--------------------------------------------------------
--  DDL for View DMRV_CONTACT_LOCATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CONTACT_LOCATIONS" ("CONTACT_ID", "CONTACT_OVID", "CONTACT_NAME", "LOCATION_ID", "LOCATION_OVID", "LOCATION_NAME", "DESIGN_OVID") AS 
  select  Contact_ID, Contact_OVID, Contact_Name, Location_ID, Location_OVID, Location_Name, Design_OVID from DMRS_CONTACT_LOCATIONS
;
--------------------------------------------------------
--  DDL for View DMRV_CONTACT_RES_LOCATORS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CONTACT_RES_LOCATORS" ("CONTACT_ID", "CONTACT_OVID", "CONTACT_NAME", "RESOURCE_LOCATOR_ID", "RESOURCE_LOCATOR_OVID", "RESOURCE_LOCATOR_NAME", "DESIGN_OVID") AS 
  select  Contact_ID, Contact_OVID, Contact_Name, Resource_Locator_ID, Resource_Locator_OVID, Resource_Locator_Name, Design_OVID from DMRS_CONTACT_RES_LOCATORS
;
--------------------------------------------------------
--  DDL for View DMRV_CONTACTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CONTACTS" ("CONTACT_ID", "CONTACT_OVID", "CONTACT_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "DESIGN_OVID") AS 
  select  Contact_ID, Contact_OVID, Contact_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Design_OVID from DMRS_CONTACTS
;
--------------------------------------------------------
--  DDL for View DMRV_CONTACT_TELEPHONES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CONTACT_TELEPHONES" ("CONTACT_ID", "CONTACT_OVID", "CONTACT_NAME", "TELEPHONE_ID", "TELEPHONE_OVID", "TELEPHONE_NAME", "DESIGN_OVID") AS 
  select  Contact_ID, Contact_OVID, Contact_Name, Telephone_ID, Telephone_OVID, Telephone_Name, Design_OVID from DMRS_CONTACT_TELEPHONES
;
--------------------------------------------------------
--  DDL for View DMRV_CUBE_DIMENSIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CUBE_DIMENSIONS" ("CUBE_ID", "CUBE_NAME", "CUBE_OVID", "DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "DESIGN_OVID") AS 
  select  Cube_ID, Cube_Name, Cube_OVID, Dimension_ID, Dimension_Name, Dimension_OVID, Design_OVID from DMRS_CUBE_DIMENSIONS
;
--------------------------------------------------------
--  DDL for View DMRV_CUBES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_CUBES" ("CUBE_ID", "CUBE_NAME", "CUBE_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "PART_DIMENSION_ID", "PART_DIMENSION_NAME", "PART_DIMENSION_OVID", "PART_HIERARCHY_ID", "PART_HIERARCHY_NAME", "PART_HIERARCHY_OVID", "PART_LEVEL_ID", "PART_LEVEL_NAME", "PART_LEVEL_OVID", "FULL_CUBE_SLICE_ID", "FULL_CUBE_SLICE_NAME", "FULL_CUBE_SLICE_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "IS_COMPRESSED_COMPOSITES", "IS_GLOBAL_COMPOSITES", "IS_PARTITIONED", "IS_VIRTUAL", "PART_DESCRIPTION", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Cube_ID, Cube_Name, Cube_OVID, Model_ID, Model_Name, Model_OVID, Part_Dimension_ID, Part_Dimension_Name, Part_Dimension_OVID, Part_Hierarchy_ID, Part_Hierarchy_Name, Part_Hierarchy_OVID, Part_Level_ID, Part_Level_Name, Part_Level_OVID, Full_Cube_Slice_ID, Full_Cube_Slice_Name, Full_Cube_Slice_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Is_Compressed_Composites, Is_Global_Composites, Is_Partitioned, Is_Virtual, Part_Description, Description, Design_OVID from DMRS_CUBES
;
--------------------------------------------------------
--  DDL for View DMRV_DATA_FLOW_DIAGRAM_INFOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DATA_FLOW_DIAGRAM_INFOS" ("DIAGRAM_ID", "DIAGRAM_OVID", "DIAGRAM_NAME", "INFO_STORE_ID", "INFO_STORE_OVID", "INFO_STORE_NAME", "DESIGN_OVID") AS 
  select  Diagram_ID, Diagram_OVID, Diagram_Name, Info_Store_ID, Info_Store_OVID, Info_Store_Name, Design_OVID from DMRS_DATA_FLOW_DIAGRAM_INFOS
;
--------------------------------------------------------
--  DDL for View DMRV_DESIGNS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DESIGNS" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "DATE_PUBLISHED", "PUBLISHED_BY", "PERSISTENCE_VERSION", "VERSION_COMMENTS") AS 
  select  Design_ID, Design_OVID, Design_Name, Date_Published, Published_By, Persistence_Version, Version_Comments from DMRS_DESIGNS
;
--------------------------------------------------------
--  DDL for View DMRV_DIAGRAM_ELEMENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DIAGRAM_ELEMENTS" ("NAME", "TYPE", "GEOMETRY_TYPE", "OBJECT_ID", "OVID", "VIEW_ID", "SOURCE_ID", "SOURCE_OVID", "SOURCE_VIEW_ID", "TARGET_ID", "TARGET_OVID", "TARGET_VIEW_ID", "MODEL_ID", "MODEL_OVID", "LOCATION_X", "HEIGHT", "WIDTH", "BG_COLOR", "FG_COLOR", "USE_DEFAULT_COLOR", "FORMATTING", "POINTS", "DIAGRAM_OVID", "DIAGRAM_ID", "DIAGRAM_NAME", "SOURCE_NAME", "TARGET_NAME", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Name, Type, Geometry_Type, Object_ID, OVID, View_ID, Source_ID, Source_OVID, Source_View_ID, Target_ID, Target_OVID, Target_View_ID, Model_ID, Model_OVID, Location_X, Height, Width, BG_Color, FG_Color, Use_Default_Color, Formatting, Points, Diagram_OVID, Diagram_ID, Diagram_Name, Source_Name, Target_Name, Model_Name, Design_OVID from DMRS_DIAGRAM_ELEMENTS
;
--------------------------------------------------------
--  DDL for View DMRV_DIAGRAMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DIAGRAMS" ("DIAGRAM_NAME", "OBJECT_ID", "OVID", "DIAGRAM_TYPE", "IS_DISPLAY", "VISIBLE", "MASTER_DIAGRAM_ID", "MASTER_DIAGRAM_OVID", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "SUBVIEW_ID", "SUBVIEW_OVID", "SUBVIEW_NAME", "DISPLAY_ID", "DISPLAY_OVID", "DISPLAY_NAME", "NOTATION", "SHOW_ALL_DETAILS", "SHOW_NAMES_ONLY", "SHOW_ELEMENTS", "SHOW_DATATYPE", "SHOW_KEYS", "AUTOROUTE", "BOX_IN_BOX", "MASTER_DIAGRAM_NAME", "DIAGRAM_SVG", "DIAGRAM_PDF", "DESIGN_OVID") AS 
  select  Diagram_Name, Object_ID, OVID, Diagram_Type, Is_Display, Visible, Master_Diagram_ID, Master_Diagram_OVID, Model_ID, Model_OVID, Model_Name, Subview_ID, Subview_OVID, Subview_Name, Display_ID, Display_OVID, Display_Name, Notation, Show_All_Details, Show_Names_Only, Show_Elements, Show_Datatype, Show_Keys, Autoroute, Box_In_box, Master_Diagram_Name, Diagram_SVG, Diagram_PDF, Design_OVID from DMRS_DIAGRAMS
;
--------------------------------------------------------
--  DDL for View DMRV_DIMENSION_CALC_ATTRS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DIMENSION_CALC_ATTRS" ("DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "CALC_ATTRIBUTE_ID", "CALC_ATTRIBUTE_NAME", "CALC_ATTRIBUTE_OVID", "CALCULATED_EXPR", "DESIGN_OVID") AS 
  select  Dimension_ID, Dimension_Name, Dimension_OVID, Calc_Attribute_ID, Calc_Attribute_Name, Calc_Attribute_OVID, Calculated_Expr, Design_OVID from DMRS_DIMENSION_CALC_ATTRS
;
--------------------------------------------------------
--  DDL for View DMRV_DIMENSION_LEVELS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DIMENSION_LEVELS" ("DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "LEVEL_ID", "LEVEL_NAME", "LEVEL_OVID", "DESIGN_OVID") AS 
  select  Dimension_ID, Dimension_Name, Dimension_OVID, Level_ID, Level_Name, Level_OVID, Design_OVID from DMRS_DIMENSION_LEVELS
;
--------------------------------------------------------
--  DDL for View DMRV_DIMENSIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DIMENSIONS" ("DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "BASE_ENTITY_ID", "BASE_ENTITY_NAME", "BASE_ENTITY_OVID", "BASE_LEVEL_ID", "BASE_LEVEL_NAME", "BASE_LEVEL_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Dimension_ID, Dimension_Name, Dimension_OVID, Model_ID, Model_Name, Model_OVID, Base_Entity_ID, Base_Entity_Name, Base_Entity_OVID, Base_Level_ID, Base_Level_Name, Base_Level_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Description, Design_OVID from DMRS_DIMENSIONS
;
--------------------------------------------------------
--  DDL for View DMRV_DISTINCT_TYPES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DISTINCT_TYPES" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "DISTINCT_TYPE_ID", "DISTINCT_TYPE_OVID", "DISTINCT_TYPE_NAME", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "LOGICAL_TYPE_NAME", "T_SIZE", "T_PRECISION", "T_SCALE") AS 
  select  Design_ID, Design_OVID, Design_Name, Distinct_Type_ID, Distinct_Type_OVID, Distinct_Type_Name, Logical_Type_ID, Logical_Type_OVID, Logical_Type_Name, T_Size, T_Precision, T_Scale from DMRS_DISTINCT_TYPES
;
--------------------------------------------------------
--  DDL for View DMRV_DOCUMENT_ELEMENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DOCUMENT_ELEMENTS" ("DOCUMENT_ID", "DOCUMENT_OVID", "DOCUMENT_NAME", "ELEMENT_ID", "ELEMENT_OVID", "ELEMENT_NAME", "ELEMENT_TYPE", "DESIGN_OVID") AS 
  select  Document_ID, Document_OVID, Document_Name, Element_ID, Element_OVID, Element_Name, Element_Type, Design_OVID from DMRS_DOCUMENT_ELEMENTS
;
--------------------------------------------------------
--  DDL for View DMRV_DOCUMENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DOCUMENTS" ("DOCUMENT_ID", "DOCUMENT_OVID", "DOCUMENT_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "PARENT_ID", "PARENT_OVID", "PARENT_NAME", "DOC_REFERENCE", "DOC_TYPE", "DESIGN_OVID") AS 
  select  Document_ID, Document_OVID, Document_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Parent_ID, Parent_OVID, Parent_Name, Doc_Reference, Doc_Type, Design_OVID from DMRS_DOCUMENTS
;
--------------------------------------------------------
--  DDL for View DMRV_DOMAIN_AVT
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DOMAIN_AVT" ("DOMAIN_ID", "DOMAIN_OVID", "SEQUENCE", "VALUE", "SHORT_DESCRIPTION", "DOMAIN_NAME", "DESIGN_OVID") AS 
  select  Domain_ID, Domain_OVID, Sequence, Value, Short_Description, Domain_Name, Design_OVID from DMRS_DOMAIN_AVT
;
--------------------------------------------------------
--  DDL for View DMRV_DOMAIN_CHECK_CONSTRAINTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DOMAIN_CHECK_CONSTRAINTS" ("DOMAIN_ID", "DOMAIN_OVID", "SEQUENCE", "TEXT", "DATABASE_TYPE", "DOMAIN_NAME", "DESIGN_OVID") AS 
  select  Domain_ID, Domain_OVID, Sequence, Text, Database_Type, Domain_Name, Design_OVID from DMRS_DOMAIN_CHECK_CONSTRAINTS
;
--------------------------------------------------------
--  DDL for View DMRV_DOMAINS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DOMAINS" ("DOMAIN_ID", "DOMAIN_NAME", "OVID", "SYNONYMS", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "T_SIZE", "T_PRECISION", "T_SCALE", "NATIVE_TYPE", "LT_NAME", "DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "DEFAULT_VALUE", "UNIT_OF_MEASURE", "CHAR_UNITS") AS 
  select  Domain_ID, Domain_Name, OVID, Synonyms, Logical_Type_ID, Logical_Type_OVID, T_Size, T_Precision, T_Scale, Native_Type, LT_Name, Design_ID, Design_OVID, Design_Name, Default_Value, Unit_Of_Measure, Char_Units from DMRS_DOMAINS
;
--------------------------------------------------------
--  DDL for View DMRV_DOMAIN_VALUE_RANGES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_DOMAIN_VALUE_RANGES" ("DOMAIN_ID", "DOMAIN_OVID", "SEQUENCE", "BEGIN_VALUE", "END_VALUE", "SHORT_DESCRIPTION", "DOMAIN_NAME", "DESIGN_OVID") AS 
  select  Domain_ID, Domain_OVID, Sequence, Begin_Value, End_Value, Short_Description, Domain_Name, Design_OVID from DMRS_DOMAIN_VALUE_RANGES
;
--------------------------------------------------------
--  DDL for View DMRV_EMAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_EMAILS" ("EMAIL_ID", "EMAIL_OVID", "EMAIL_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "EMAIL_ADDRESS", "EMAIL_TYPE", "DESIGN_OVID") AS 
  select  Email_ID, Email_OVID, Email_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Email_Address, Email_Type, Design_OVID from DMRS_EMAILS
;
--------------------------------------------------------
--  DDL for View DMRV_ENTITIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_ENTITIES" ("ENTITY_NAME", "OBJECT_ID", "OVID", "IMPORT_ID", "MODEL_ID", "MODEL_OVID", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "NUMBER_DATA_ELEMENTS", "CLASSIFICATION_TYPE_ID", "CLASSIFICATION_TYPE_OVID", "CLASSIFICATION_TYPE_NAME", "ALLOW_TYPE_SUBSTITUTION", "MIN_VOLUME", "EXPECTED_VOLUME", "MAX_VOLUME", "GROWTH_RATE_PERCENTS", "GROWTH_RATE_INTERVAL", "NORMAL_FORM", "TEMPORARY_OBJECT_SCOPE", "ADEQUATELY_NORMALIZED", "SUBSTITUTION_PARENT", "SUBSTITUTION_PARENT_OVID", "SYNONYMS", "SYNONYM_TO_DISPLAY", "PREFERRED_ABBREVIATION", "SUPERTYPEENTITY_ID", "SUPERTYPEENTITY_OVID", "ENGINEERING_STRATEGY", "OWNER", "ENTITY_SOURCE", "MODEL_NAME", "SUBSTITUTION_PARENT_NAME", "SUPERTYPEENTITY_NAME", "DESIGN_OVID") AS 
  select  Entity_Name, Object_ID, OVID, Import_ID, Model_ID, Model_OVID, Structured_Type_ID, Structured_Type_OVID, Structured_Type_Name, Number_Data_Elements, Classification_Type_ID, Classification_Type_OVID, Classification_Type_Name, Allow_Type_Substitution, Min_Volume, Expected_Volume, Max_Volume, Growth_Rate_Percents, Growth_Rate_Interval, Normal_Form, Temporary_Object_Scope, Adequately_Normalized, Substitution_Parent, Substitution_Parent_OVID, Synonyms, Synonym_To_Display, Preferred_Abbreviation, SuperTypeEntity_ID, SuperTypeEntity_OVID, Engineering_Strategy, Owner, Entity_Source, Model_Name, Substitution_Parent_Name, SuperTypeEntity_Name, Design_OVID from DMRS_ENTITIES
;
--------------------------------------------------------
--  DDL for View DMRV_ENTITYVIEWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_ENTITYVIEWS" ("ENTITYVIEW_NAME", "OBJECT_ID", "OVID", "MODEL_ID", "MODEL_OVID", "IMPORT_ID", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "USER_DEFINED", "VIEW_TYPE", "MODEL_NAME", "DESIGN_OVID") AS 
  select  EntityView_Name, Object_ID, OVID, Model_ID, Model_OVID, Import_ID, Structured_Type_ID, Structured_Type_OVID, Structured_Type_Name, User_Defined, View_Type, Model_Name, Design_OVID from DMRS_ENTITYVIEWS
;
--------------------------------------------------------
--  DDL for View DMRV_EVENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_EVENTS" ("EVENT_ID", "EVENT_OVID", "EVENT_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "FLOW_ID", "FLOW_OVID", "FLOW_NAME", "EVENT_TYPE", "TIMES_WHEN_RUN", "DAY_OF_WEEK", "MONTHS", "FREQUENCY", "TIME_FREQUENCY", "MINUTE", "HOUR", "DAY_OF_MONTH", "QUARTER", "YEAR", "ON_DAY", "AT_TIME", "FISCAL", "TEXT", "DESIGN_OVID") AS 
  select  Event_ID, Event_OVID, Event_Name, Model_ID, Model_OVID, Model_Name, Flow_ID, Flow_OVID, Flow_Name, Event_Type, Times_When_Run, Day_Of_Week, Months, Frequency, Time_Frequency, Minute, Hour, Day_Of_Month, Quarter, Year, On_Day, At_Time, Fiscal, Text, Design_OVID from DMRS_EVENTS
;
--------------------------------------------------------
--  DDL for View DMRV_EXT_AGENT_EXT_DATAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_EXT_AGENT_EXT_DATAS" ("EXTERNAL_AGENT_ID", "EXTERNAL_AGENT_OVID", "EXTERNAL_AGENT_NAME", "EXTERNAL_DATA_ID", "EXTERNAL_DATA_OVID", "EXTERNAL_DATA_NAME", "DESIGN_OVID") AS 
  select  External_Agent_ID, External_Agent_OVID, External_Agent_Name, External_Data_ID, External_Data_OVID, External_Data_Name, Design_OVID from DMRS_EXT_AGENT_EXT_DATAS
;
--------------------------------------------------------
--  DDL for View DMRV_EXT_AGENT_FLOWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_EXT_AGENT_FLOWS" ("EXTERNAL_AGENT_ID", "EXTERNAL_AGENT_OVID", "EXTERNAL_AGENT_NAME", "FLOW_ID", "FLOW_OVID", "FLOW_NAME", "INCOMING_OUTGOING_FLAG", "DESIGN_OVID") AS 
  select  External_Agent_ID, External_Agent_OVID, External_Agent_Name, Flow_ID, Flow_OVID, Flow_Name, Incoming_Outgoing_Flag, Design_OVID from DMRS_EXT_AGENT_FLOWS
;
--------------------------------------------------------
--  DDL for View DMRV_EXTERNAL_AGENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_EXTERNAL_AGENTS" ("EXTERNAL_AGENT_ID", "EXTERNAL_AGENT_OVID", "EXTERNAL_AGENT_NAME", "DIAGRAM_ID", "DIAGRAM_OVID", "DIAGRAM_NAME", "EXTERNAL_AGENT_TYPE", "FILE_LOCATION", "FILE_SOURCE", "FILE_NAME", "FILE_TYPE", "FILE_OWNER", "DATA_CAPTURE_TYPE", "FIELD_SEPARATOR", "TEXT_DELIMITER", "SKIP_RECORDS", "SELF_DESCRIBING", "DESIGN_OVID") AS 
  select  External_Agent_ID, External_Agent_OVID, External_Agent_Name, Diagram_ID, Diagram_OVID, Diagram_Name, External_Agent_Type, File_Location, File_Source, File_Name, File_Type, File_Owner, Data_Capture_Type, Field_Separator, Text_Delimiter, Skip_Records, Self_Describing, Design_OVID from DMRS_EXTERNAL_AGENTS
;
--------------------------------------------------------
--  DDL for View DMRV_EXTERNAL_DATAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_EXTERNAL_DATAS" ("EXTERNAL_DATA_ID", "EXTERNAL_DATA_OVID", "EXTERNAL_DATA_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "LOGICAL_TYPE_NAME", "RECORD_STRUCTURE_TYPE_ID", "RECORD_STRUCTURE_TYPE_OVID", "RECORD_STRUCTURE_TYPE_NAME", "STARTING_POS", "DESCRIPTION", "DESIGN_OVID") AS 
  select  External_Data_ID, External_Data_OVID, External_Data_Name, Model_ID, Model_OVID, Model_Name, Logical_Type_ID, Logical_Type_OVID, Logical_Type_Name, Record_Structure_Type_ID, Record_Structure_Type_OVID, Record_Structure_Type_Name, Starting_Pos, Description, Design_OVID from DMRS_EXTERNAL_DATAS
;
--------------------------------------------------------
--  DDL for View DMRV_FACT_ENTITIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_FACT_ENTITIES" ("CUBE_ID", "CUBE_NAME", "CUBE_OVID", "ENTITY_ID", "ENTITY_NAME", "ENTITY_OVID", "DESIGN_OVID") AS 
  select  Cube_ID, Cube_Name, Cube_OVID, Entity_ID, Entity_Name, Entity_OVID, Design_OVID from DMRS_FACT_ENTITIES
;
--------------------------------------------------------
--  DDL for View DMRV_FACT_ENTITIES_JOINS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_FACT_ENTITIES_JOINS" ("JOIN_ID", "JOIN_NAME", "JOIN_OVID", "CUBE_ID", "CUBE_NAME", "CUBE_OVID", "LEFT_ENTITY_ID", "LEFT_ENTITY_NAME", "LEFT_ENTITY_OVID", "RIGHT_ENTITY_ID", "RIGHT_ENTITY_NAME", "RIGHT_ENTITY_OVID", "DESIGN_OVID") AS 
  select  Join_ID, Join_Name, Join_OVID, Cube_ID, Cube_Name, Cube_OVID, Left_Entity_ID, Left_Entity_Name, Left_Entity_OVID, Right_Entity_ID, Right_Entity_Name, Right_Entity_OVID, Design_OVID from DMRS_FACT_ENTITIES_JOINS
;
--------------------------------------------------------
--  DDL for View DMRV_FLOW_INFO_STRUCTURES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_FLOW_INFO_STRUCTURES" ("FLOW_ID", "FLOW_OVID", "FLOW_NAME", "INFO_STRUCTURE_ID", "INFO_STRUCTURE_OVID", "INFO_STRUCTURE_NAME", "DESIGN_OVID") AS 
  select  Flow_ID, Flow_OVID, Flow_Name, Info_Structure_ID, Info_Structure_OVID, Info_Structure_Name, Design_OVID from DMRS_FLOW_INFO_STRUCTURES
;
--------------------------------------------------------
--  DDL for View DMRV_FLOWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_FLOWS" ("FLOW_ID", "FLOW_OVID", "FLOW_NAME", "DIAGRAM_ID", "DIAGRAM_OVID", "DIAGRAM_NAME", "EVENT_ID", "EVENT_OVID", "EVENT_NAME", "SOURCE_ID", "SOURCE_OVID", "SOURCE_NAME", "DESTINATION_ID", "DESTINATION_OVID", "DESTINATION_NAME", "PARENT_ID", "PARENT_OVID", "PARENT_NAME", "SOURCE_TYPE", "DESTINATION_TYPE", "SYSTEM_OBJECTIVE", "LOGGING", "OP_CREATE", "OP_READ", "OP_UPDATE", "OP_DELETE", "CRUD_CODE", "DESIGN_OVID") AS 
  select  Flow_ID, Flow_OVID, Flow_Name, Diagram_ID, Diagram_OVID, Diagram_Name, Event_ID, Event_OVID, Event_Name, Source_ID, Source_OVID, Source_Name, Destination_ID, Destination_OVID, Destination_Name, Parent_ID, Parent_OVID, Parent_Name, Source_Type, Destination_Type, System_Objective, Logging, Op_Create, Op_Read, Op_Update, Op_Delete, CRUD_Code, Design_OVID from DMRS_FLOWS
;
--------------------------------------------------------
--  DDL for View DMRV_FOREIGNKEYS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_FOREIGNKEYS" ("FK_NAME", "MODEL_ID", "MODEL_OVID", "OBJECT_ID", "OVID", "IMPORT_ID", "CHILD_TABLE_NAME", "REFERRED_TABLE_NAME", "ENGINEER", "DELETE_RULE", "CHILD_TABLE_ID", "CHILD_TABLE_OVID", "REFERRED_TABLE_ID", "REFERRED_TABLE_OVID", "REFERRED_KEY_ID", "REFERRED_KEY_OVID", "NUMBER_OF_COLUMNS", "MANDATORY", "TRANSFERABLE", "IN_ARC", "ARC_ID", "MODEL_NAME", "REFERRED_KEY_NAME", "DESIGN_OVID") AS 
  select  FK_Name, Model_ID, Model_OVID, Object_ID, OVID, Import_ID, Child_Table_Name, Referred_Table_Name, Engineer, Delete_Rule, Child_Table_ID, Child_Table_OVID, Referred_Table_ID, Referred_Table_OVID, Referred_Key_ID, Referred_Key_OVID, Number_Of_Columns, Mandatory, Transferable, In_Arc, Arc_ID, Model_Name, Referred_Key_Name, Design_OVID from DMRS_FOREIGNKEYS
;
--------------------------------------------------------
--  DDL for View DMRV_GLOSSARIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_GLOSSARIES" ("GLOSSARY_ID", "GLOSSARY_OVID", "GLOSSARY_NAME", "FILE_NAME", "DESCRIPTION", "INCOMPLETE_MODIFIERS", "CASE_SENSITIVE", "UNIQUE_ABBREVS", "SEPARATOR_TYPE", "SEPARATOR_CHAR", "DATE_PUBLISHED", "PUBLISHED_BY", "PERSISTENCE_VERSION", "VERSION_COMMENTS") AS 
  select  Glossary_ID, Glossary_OVID, Glossary_Name, File_Name, Description, Incomplete_Modifiers, Case_Sensitive, Unique_Abbrevs, Separator_Type, Separator_Char, Date_Published, Published_By, Persistence_Version, Version_Comments from DMRS_GLOSSARIES
;
--------------------------------------------------------
--  DDL for View DMRV_GLOSSARY_TERMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_GLOSSARY_TERMS" ("TERM_ID", "TERM_OVID", "TERM_NAME", "SHORT_DESCRIPTION", "ABBREV", "ALT_ABBREV", "PRIME_WORD", "CLASS_WORD", "MODIFIER", "QUALIFIER", "GLOSSARY_ID", "GLOSSARY_OVID", "GLOSSARY_NAME") AS 
  select  Term_ID, Term_OVID, Term_Name, Short_Description, Abbrev, Alt_Abbrev, Prime_Word, Class_Word, Modifier, Qualifier, Glossary_ID, Glossary_OVID, Glossary_Name from DMRS_GLOSSARY_TERMS
;
--------------------------------------------------------
--  DDL for View DMRV_HIERARCHIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_HIERARCHIES" ("HIERARCHY_ID", "HIERARCHY_NAME", "HIERARCHY_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "IS_DEFAULT_HIERARCHY", "IS_RAGGED_HIERARCHY", "IS_VALUE_BASED_HIERARCHY", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Hierarchy_ID, Hierarchy_Name, Hierarchy_OVID, Model_ID, Model_Name, Model_OVID, Dimension_ID, Dimension_Name, Dimension_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Is_Default_Hierarchy, Is_Ragged_Hierarchy, Is_Value_Based_Hierarchy, Description, Design_OVID from DMRS_HIERARCHIES
;
--------------------------------------------------------
--  DDL for View DMRV_HIERARCHY_LEVELS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_HIERARCHY_LEVELS" ("HIERARCHY_ID", "HIERARCHY_NAME", "HIERARCHY_OVID", "LEVEL_ID", "LEVEL_NAME", "LEVEL_OVID", "DESIGN_OVID") AS 
  select  Hierarchy_ID, Hierarchy_Name, Hierarchy_OVID, Level_ID, Level_Name, Level_OVID, Design_OVID from DMRS_HIERARCHY_LEVELS
;
--------------------------------------------------------
--  DDL for View DMRV_HIERARCHY_ROLLUP_LINKS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_HIERARCHY_ROLLUP_LINKS" ("HIERARCHY_ID", "HIERARCHY_NAME", "HIERARCHY_OVID", "ROLLUP_LINK_ID", "ROLLUP_LINK_NAME", "ROLLUP_LINK_OVID", "DESIGN_OVID") AS 
  select  Hierarchy_ID, Hierarchy_Name, Hierarchy_OVID, Rollup_Link_ID, Rollup_Link_Name, Rollup_Link_OVID, Design_OVID from DMRS_HIERARCHY_ROLLUP_LINKS
;
--------------------------------------------------------
--  DDL for View DMRV_INDEXES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_INDEXES" ("INDEX_NAME", "OBJECT_ID", "OVID", "IMPORT_ID", "CONTAINER_ID", "CONTAINER_OVID", "STATE", "FUNCTIONAL", "EXPRESSION", "ENGINEER", "TABLE_NAME", "SPATIAL_INDEX", "SPATIAL_LAYER_TYPE", "GEODETIC_INDEX", "NUMBER_OF_DIMENSIONS", "DESIGN_OVID") AS 
  select  Index_Name, Object_ID, OVID, Import_ID, Container_ID, Container_OVID, State, Functional, Expression, Engineer, Table_Name, Spatial_Index, Spatial_Layer_Type, Geodetic_Index, Number_Of_Dimensions, Design_OVID from DMRS_INDEXES
;
--------------------------------------------------------
--  DDL for View DMRV_INFO_STORES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_INFO_STORES" ("INFO_STORE_ID", "INFO_STORE_OVID", "INFO_STORE_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "INFO_STORE_TYPE", "OBJECT_TYPE", "IMPLEMENTATION_NAME", "LOCATION", "SOURCE", "FILE_NAME", "FILE_TYPE", "OWNER", "RDBMS_SITE", "SCOPE", "TRANSFER_TYPE", "FIELD_SEPARATOR", "TEXT_DELIMITER", "SKIP_RECORDS", "SELF_DESCRIBING", "SYSTEM_OBJECTIVE", "DESIGN_OVID") AS 
  select  Info_Store_ID, Info_Store_OVID, Info_Store_Name, Model_ID, Model_OVID, Model_Name, Info_Store_Type, Object_Type, Implementation_Name, Location, Source, File_Name, File_Type, Owner, Rdbms_Site, Scope, Transfer_Type, Field_Separator, Text_Delimiter, Skip_Records, Self_Describing, System_Objective, Design_OVID from DMRS_INFO_STORES
;
--------------------------------------------------------
--  DDL for View DMRV_INFO_STRUCT_ATTRS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_INFO_STRUCT_ATTRS" ("INFO_STRUCTURE_ID", "INFO_STRUCTURE_OVID", "INFO_STRUCTURE_NAME", "ATTRIBUTE_ID", "ATTRIBUTE_OVID", "ATTRIBUTE_NAME", "ENTITY_ID", "ENTITY_OVID", "ENTITY_NAME", "DESIGN_OVID") AS 
  select  Info_Structure_ID, Info_Structure_OVID, Info_Structure_Name, Attribute_ID, Attribute_OVID, Attribute_Name, Entity_ID, Entity_OVID, Entity_Name, Design_OVID from DMRS_INFO_STRUCT_ATTRS
;
--------------------------------------------------------
--  DDL for View DMRV_INFO_STRUCTURES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_INFO_STRUCTURES" ("INFO_STRUCTURE_ID", "INFO_STRUCTURE_OVID", "INFO_STRUCTURE_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "GROWTH_RATE_UNIT", "GROWTH_RATE_PERCENT", "VOLUME", "DESIGN_OVID") AS 
  select  Info_Structure_ID, Info_Structure_OVID, Info_Structure_Name, Model_ID, Model_OVID, Model_Name, Growth_Rate_Unit, Growth_Rate_Percent, Volume, Design_OVID from DMRS_INFO_STRUCTURES
;
--------------------------------------------------------
--  DDL for View DMRV_KEY_ATTRIBUTES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_KEY_ATTRIBUTES" ("KEY_ID", "KEY_OVID", "ATTRIBUTE_ID", "ATTRIBUTE_OVID", "ENTITY_ID", "ENTITY_OVID", "KEY_NAME", "ENTITY_NAME", "ATTRIBUTE_NAME", "SEQUENCE", "RELATIONSHIP_ID", "RELATIONSHIP_OVID", "RELATIONSHIP_NAME", "DESIGN_OVID") AS 
  select  Key_ID, Key_OVID, Attribute_ID, Attribute_OVID, Entity_ID, Entity_OVID, Key_Name, Entity_Name, Attribute_Name, Sequence, Relationship_ID, Relationship_OVID, Relationship_Name, Design_OVID from DMRS_KEY_ATTRIBUTES
;
--------------------------------------------------------
--  DDL for View DMRV_KEY_ELEMENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_KEY_ELEMENTS" ("KEY_ID", "KEY_OVID", "TYPE", "ELEMENT_ID", "ELEMENT_OVID", "ELEMENT_NAME", "SEQUENCE", "SOURCE_LABEL", "TARGET_LABEL", "ENTITY_ID", "KEY_NAME", "ENTITY_OVID", "ENTITY_NAME", "DESIGN_OVID") AS 
  select  Key_ID, Key_OVID, Type, Element_ID, Element_OVID, Element_Name, Sequence, Source_Label, Target_Label, Entity_ID, Key_Name, Entity_OVID, Entity_Name, Design_OVID from DMRS_KEY_ELEMENTS
;
--------------------------------------------------------
--  DDL for View DMRV_KEYS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_KEYS" ("KEY_NAME", "OBJECT_ID", "OVID", "IMPORT_ID", "CONTAINER_ID", "CONTAINER_OVID", "STATE", "SYNONYMS", "ENTITY_NAME", "DESIGN_OVID") AS 
  select  Key_Name, Object_ID, OVID, Import_ID, Container_ID, Container_OVID, State, Synonyms, Entity_Name, Design_OVID from DMRS_KEYS
;
--------------------------------------------------------
--  DDL for View DMRV_LARGE_TEXT
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_LARGE_TEXT" ("OBJECT_ID", "OVID", "OBJECT_NAME", "TYPE", "TEXT", "DESIGN_OVID") AS 
  select  Object_ID, OVID, Object_Name, Type, Text, Design_OVID from DMRS_LARGE_TEXT
;
--------------------------------------------------------
--  DDL for View DMRV_LEVEL_ATTRS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_LEVEL_ATTRS" ("LEVEL_ID", "LEVEL_NAME", "LEVEL_OVID", "ATTRIBUTE_ID", "ATTRIBUTE_NAME", "ATTRIBUTE_OVID", "IS_DEFAULT_ATTR", "IS_LEVEL_KEY_ATTR", "IS_PARENT_KEY_ATTR", "IS_DESCRIPTIVE_KEY_ATTR", "IS_CALCULATED_ATTR", "DESCRIPTIVE_NAME", "DESCRIPTIVE_IS_INDEXED", "DESCRIPTIVE_SLOW_CHANGING", "CALCULATED_EXPR", "DESIGN_OVID") AS 
  select  Level_ID, Level_Name, Level_OVID, Attribute_ID, Attribute_Name, Attribute_OVID, Is_Default_Attr, Is_Level_Key_Attr, Is_Parent_Key_Attr, Is_Descriptive_Key_Attr, Is_Calculated_Attr, Descriptive_Name, Descriptive_Is_Indexed, Descriptive_Slow_Changing, Calculated_Expr, Design_OVID from DMRS_LEVEL_ATTRS
;
--------------------------------------------------------
--  DDL for View DMRV_LEVELS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_LEVELS" ("LEVEL_ID", "LEVEL_NAME", "LEVEL_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "ENTITY_ID", "ENTITY_NAME", "ENTITY_OVID", "NAME_COLUMN_ID", "NAME_COLUMN_NAME", "NAME_COLUMN_OVID", "VALUE_COLUMN_ID", "VALUE_COLUMN_NAME", "VALUE_COLUMN_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "ROOT_IDENTIFICATION", "IDENTIFICATION_VALUE", "SELECTION_CRITERIA", "SELECTION_CRITERIA_DESCRIPTION", "IS_VALUE_BASED_HIERARCHY", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Level_ID, Level_Name, Level_OVID, Model_ID, Model_Name, Model_OVID, Entity_ID, Entity_Name, Entity_OVID, Name_Column_ID, Name_Column_Name, Name_Column_OVID, Value_Column_ID, Value_Column_Name, Value_Column_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Root_Identification, Identification_Value, Selection_Criteria, Selection_Criteria_Description, Is_Value_Based_Hierarchy, Description, Design_OVID from DMRS_LEVELS
;
--------------------------------------------------------
--  DDL for View DMRV_LOCATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_LOCATIONS" ("LOCATION_ID", "LOCATION_OVID", "LOCATION_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "LOC_ADDRESS", "LOC_CITY", "LOC_POST_CODE", "LOC_AREA", "LOC_COUNTRY", "LOC_TYPE", "DESIGN_OVID") AS 
  select  Location_ID, Location_OVID, Location_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Loc_Address, Loc_City, Loc_Post_Code, Loc_Area, Loc_Country, Loc_Type, Design_OVID from DMRS_LOCATIONS
;
--------------------------------------------------------
--  DDL for View DMRV_LOGICAL_TO_NATIVE
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_LOGICAL_TO_NATIVE" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "LT_NAME", "NATIVE_TYPE", "RDBMS_TYPE", "RDBMS_VERSION", "HAS_SIZE", "HAS_PRECISION", "HAS_SCALE") AS 
  select  Design_ID, Design_OVID, Design_Name, Logical_Type_ID, Logical_Type_OVID, LT_Name, Native_Type, RDBMS_Type, RDBMS_Version, Has_Size, Has_Precision, Has_Scale from DMRS_LOGICAL_TO_NATIVE
;
--------------------------------------------------------
--  DDL for View DMRV_LOGICAL_TYPES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_LOGICAL_TYPES" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "LOGICAL_TYPE_ID", "OVID", "LT_NAME") AS 
  select  Design_ID, Design_OVID, Design_Name, Logical_Type_ID, OVID, LT_Name from DMRS_LOGICAL_TYPES
;
--------------------------------------------------------
--  DDL for View DMRV_MAPPINGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_MAPPINGS" ("LOGICAL_MODEL_ID", "LOGICAL_MODEL_OVID", "LOGICAL_MODEL_NAME", "LOGICAL_OBJECT_ID", "LOGICAL_OBJECT_OVID", "LOGICAL_OBJECT_NAME", "LOGICAL_OBJECT_TYPE", "RELATIONAL_MODEL_ID", "RELATIONAL_MODEL_OVID", "RELATIONAL_MODEL_NAME", "RELATIONAL_OBJECT_ID", "RELATIONAL_OBJECT_OVID", "RELATIONAL_OBJECT_NAME", "RELATIONAL_OBJECT_TYPE", "ENTITY_ID", "ENTITY_OVID", "ENTITY_NAME", "TABLE_ID", "TABLE_OVID", "TABLE_NAME", "DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME") AS 
  select  Logical_Model_ID, Logical_Model_OVID, Logical_Model_Name, Logical_Object_ID, Logical_Object_OVID, Logical_Object_Name, Logical_Object_Type, Relational_Model_ID, Relational_Model_OVID, Relational_Model_Name, Relational_Object_ID, Relational_Object_OVID, Relational_Object_Name, Relational_Object_Type, Entity_ID, Entity_OVID, Entity_Name, Table_ID, Table_OVID, Table_Name, Design_ID, Design_OVID, Design_Name from DMRS_MAPPINGS
;
--------------------------------------------------------
--  DDL for View DMRV_MAPPING_TARGETS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_MAPPING_TARGETS" ("OBJECT_ID", "OBJECT_OVID", "OBJECT_NAME", "TARGET_ID", "TARGET_OVID", "TARGET_NAME", "OBJECT_TYPE", "TARGET_TYPE", "TRANSFORMATION_TYPE", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Object_ID, Object_OVID, Object_Name, Target_ID, Target_OVID, Target_Name, Object_Type, Target_Type, Transformation_Type, Description, Design_OVID from DMRS_MAPPING_TARGETS
;
--------------------------------------------------------
--  DDL for View DMRV_MAPPING_TARGET_SOURCES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_MAPPING_TARGET_SOURCES" ("OBJECT_ID", "OBJECT_OVID", "OBJECT_NAME", "TARGET_ID", "TARGET_OVID", "TARGET_NAME", "SOURCE_ID", "SOURCE_OVID", "SOURCE_NAME", "OBJECT_TYPE", "TARGET_TYPE", "SOURCE_TYPE", "DESIGN_OVID") AS 
  select  Object_ID, Object_OVID, Object_Name, Target_ID, Target_OVID, Target_Name, Source_ID, Source_OVID, Source_Name, Object_Type, Target_Type, Source_Type, Design_OVID from DMRS_MAPPING_TARGET_SOURCES
;
--------------------------------------------------------
--  DDL for View DMRV_MEASURE_AGGR_FUNCS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_MEASURE_AGGR_FUNCS" ("MEASURE_ID", "MEASURE_NAME", "MEASURE_OVID", "AGGREGATE_FUNCTION_ID", "AGGREGATE_FUNCTION_NAME", "AGGREGATE_FUNCTION_OVID", "MEASURE_ALIAS", "IS_DEFAULT", "DESIGN_OVID") AS 
  select  Measure_ID, Measure_Name, Measure_OVID, Aggregate_Function_ID, Aggregate_Function_Name, Aggregate_Function_OVID, Measure_Alias, Is_Default, Design_OVID from DMRS_MEASURE_AGGR_FUNCS
;
--------------------------------------------------------
--  DDL for View DMRV_MEASURE_FOLDER_MEASURES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_MEASURE_FOLDER_MEASURES" ("MEASURE_FOLDER_ID", "MEASURE_FOLDER_NAME", "MEASURE_FOLDER_OVID", "MEASURE_ID", "MEASURE_NAME", "MEASURE_OVID", "PARENT_OBJECT_ID", "PARENT_OBJECT_NAME", "PARENT_OBJECT_OVID", "PARENT_OBJECT_TYPE", "DESIGN_OVID") AS 
  select  Measure_Folder_ID, Measure_Folder_Name, Measure_Folder_OVID, Measure_ID, Measure_Name, Measure_OVID, Parent_Object_ID, Parent_Object_Name, Parent_Object_OVID, Parent_Object_Type, Design_OVID from DMRS_MEASURE_FOLDER_MEASURES
;
--------------------------------------------------------
--  DDL for View DMRV_MEASURE_FOLDERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_MEASURE_FOLDERS" ("MEASURE_FOLDER_ID", "MEASURE_FOLDER_NAME", "MEASURE_FOLDER_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "PARENT_FOLDER_ID", "PARENT_FOLDER_NAME", "PARENT_FOLDER_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "IS_LEAF", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Measure_Folder_ID, Measure_Folder_Name, Measure_Folder_OVID, Model_ID, Model_Name, Model_OVID, Parent_Folder_ID, Parent_Folder_Name, Parent_Folder_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Is_Leaf, Description, Design_OVID from DMRS_MEASURE_FOLDERS
;
--------------------------------------------------------
--  DDL for View DMRV_MEASURES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_MEASURES" ("MEASURE_ID", "MEASURE_NAME", "MEASURE_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "CUBE_ID", "CUBE_NAME", "CUBE_OVID", "FACT_OBJECT_ID", "FACT_OBJECT_NAME", "FACT_OBJECT_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "FACT_OBJECT_TYPE", "ADDITIVITY_TYPE", "IS_FACT_DIMENSION", "IS_FORMULA", "IS_CUSTOM_FORMULA", "FORMULA", "WHERE_CLAUSE", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Measure_ID, Measure_Name, Measure_OVID, Model_ID, Model_Name, Model_OVID, Cube_ID, Cube_Name, Cube_OVID, Fact_Object_ID, Fact_Object_Name, Fact_Object_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Fact_Object_Type, Additivity_Type, Is_Fact_Dimension, Is_Formula, Is_Custom_Formula, Formula, Where_Clause, Description, Design_OVID from DMRS_MEASURES
;
--------------------------------------------------------
--  DDL for View DMRV_MODEL_DISPLAYS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_MODEL_DISPLAYS" ("DISPLAY_ID", "DISPLAY_OVID", "DISPLAY_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Display_ID, Display_OVID, Display_Name, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_MODEL_DISPLAYS
;
--------------------------------------------------------
--  DDL for View DMRV_MODEL_NAMING_OPTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_MODEL_NAMING_OPTIONS" ("OBJECT_TYPE", "MAX_NAME_LENGTH", "CHARACTER_CASE", "VALID_CHARACTERS", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "MODEL_TYPE", "DESIGN_OVID") AS 
  select  Object_type, Max_Name_Length, Character_Case, Valid_Characters, Model_ID, Model_OVID, Model_Name, Model_Type, Design_OVID from DMRS_MODEL_NAMING_OPTIONS
;
--------------------------------------------------------
--  DDL for View DMRV_MODELS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_MODELS" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "MODEL_TYPE", "RDBMS_TYPE") AS 
  select  Design_ID, Design_OVID, Design_Name, Model_ID, Model_OVID, Model_Name, Model_Type, RDBMS_Type from DMRS_MODELS
;
--------------------------------------------------------
--  DDL for View DMRV_MODEL_SUBVIEWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_MODEL_SUBVIEWS" ("SUBVIEW_ID", "SUBVIEW_OVID", "SUBVIEW_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Subview_ID, Subview_OVID, Subview_Name, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_MODEL_SUBVIEWS
;
--------------------------------------------------------
--  DDL for View DMRV_NATIVE_TO_LOGICAL
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_NATIVE_TO_LOGICAL" ("RDBMS_TYPE", "RDBMS_VERSION", "NATIVE_TYPE", "LT_NAME", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME") AS 
  select  RDBMS_Type, RDBMS_Version, Native_Type, LT_Name, Logical_Type_ID, Logical_Type_OVID, Design_ID, Design_OVID, Design_Name from DMRS_NATIVE_TO_LOGICAL
;
--------------------------------------------------------
--  DDL for View DMRV_NOTES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_NOTES" ("OBJECT_ID", "OVID", "OBJECT_NAME", "MODEL_OVID", "MODEL_ID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Object_ID, OVID, Object_Name, Model_OVID, Model_ID, Model_Name, Design_OVID from DMRS_NOTES
;
--------------------------------------------------------
--  DDL for View DMRV_PK_OID_COLUMNS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_PK_OID_COLUMNS" ("COLUMN_ID", "COLUMN_OVID", "TABLE_ID", "TABLE_OVID", "TABLE_NAME", "COLUMN_NAME", "DESIGN_OVID") AS 
  select  Column_ID, Column_OVID, Table_ID, Table_OVID, Table_Name, Column_Name, Design_OVID from DMRS_PK_OID_COLUMNS
;
--------------------------------------------------------
--  DDL for View DMRV_PROCESS_ATTRIBUTES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_PROCESS_ATTRIBUTES" ("PROCESS_ID", "PROCESS_OVID", "ENTITY_ID", "ENTITY_OVID", "FLOW_ID", "FLOW_OVID", "DFD_ID", "DFD_OVID", "PROCESS_NAME", "ENTITY_NAME", "FLOW_NAME", "DFD_NAME", "OP_READ", "OP_CREATE", "OP_UPDATE", "OP_DELETE", "CRUD_CODE", "FLOW_DIRECTION", "ATTRIBUTE_ID", "ATTRIBUTE_OVID", "ATTRIBUTE_NAME", "DESIGN_OVID") AS 
  select  Process_ID, Process_OVID, Entity_ID, Entity_OVID, Flow_ID, Flow_OVID, DFD_ID, DFD_OVID, Process_Name, Entity_Name, Flow_Name, DFD_Name, OP_Read, OP_Create, OP_Update, OP_Delete, CRUD_Code, Flow_Direction, Attribute_ID, Attribute_OVID, Attribute_Name, Design_OVID from DMRS_PROCESS_ATTRIBUTES
;
--------------------------------------------------------
--  DDL for View DMRV_PROCESS_ENTITIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_PROCESS_ENTITIES" ("PROCESS_ID", "PROCESS_OVID", "ENTITY_ID", "ENTITY_OVID", "FLOW_ID", "FLOW_OVID", "DFD_ID", "DFD_OVID", "PROCESS_NAME", "ENTITY_NAME", "FLOW_NAME", "DFD_NAME", "OP_READ", "OP_CREATE", "OP_UPDATE", "OP_DELETE", "CRUD_CODE", "FLOW_DIRECTION", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Process_ID, Process_OVID, Entity_ID, Entity_OVID, Flow_ID, Flow_OVID, DFD_ID, DFD_OVID, Process_Name, Entity_Name, Flow_Name, DFD_Name, OP_Read, OP_Create, OP_Update, OP_Delete, CRUD_Code, Flow_Direction, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_PROCESS_ENTITIES
;
--------------------------------------------------------
--  DDL for View DMRV_PROCESSES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_PROCESSES" ("PROCESS_ID", "PROCESS_OVID", "PROCESS_NAME", "DIAGRAM_ID", "DIAGRAM_OVID", "DIAGRAM_NAME", "TRANSFORMATION_TASK_ID", "TRANSFORMATION_TASK_OVID", "TRANSFORMATION_TASK_NAME", "PARENT_PROCESS_ID", "PARENT_PROCESS_OVID", "PARENT_PROCESS_NAME", "PROCESS_NUMBER", "PROCESS_TYPE", "PROCESS_MODE", "PRIORITY", "FREQUENCY_TIMES", "FREQUENCY_TIME_UNIT", "PEAK_PERIODS_STRING", "PARAMETERS_WRAPPERS_STRING", "INTERACTIVE_MAX_RESPONSE_TIME", "INTERACTIVE_RESPONSE_TIME_UNIT", "BATCH_MIN_TRANSACTIONS", "BATCH_TIME_UNIT", "DESIGN_OVID") AS 
  select  Process_ID, Process_OVID, Process_Name, Diagram_ID, Diagram_OVID, Diagram_Name, Transformation_Task_ID, Transformation_Task_OVID, Transformation_Task_Name, Parent_Process_ID, Parent_Process_OVID, Parent_Process_Name, Process_Number, Process_Type, Process_Mode, Priority, Frequency_Times, Frequency_Time_Unit, Peak_Periods_String, Parameters_Wrappers_String, Interactive_Max_Response_Time, Interactive_Response_Time_Unit, Batch_Min_Transactions, Batch_Time_Unit, Design_OVID from DMRS_PROCESSES
;
--------------------------------------------------------
--  DDL for View DMRV_RAGGED_HIER_LINK_ATTRS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_RAGGED_HIER_LINK_ATTRS" ("RAGGED_HIER_LINK_ID", "RAGGED_HIER_LINK_NAME", "RAGGED_HIER_LINK_OVID", "ATTRIBUTE_ID", "ATTRIBUTE_NAME", "ATTRIBUTE_OVID", "DESIGN_OVID") AS 
  select  Ragged_Hier_Link_ID, Ragged_Hier_Link_Name, Ragged_Hier_Link_OVID, Attribute_ID, Attribute_Name, Attribute_OVID, Design_OVID from DMRS_RAGGED_HIER_LINK_ATTRS
;
--------------------------------------------------------
--  DDL for View DMRV_RAGGED_HIER_LINKS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_RAGGED_HIER_LINKS" ("RAGGED_HIER_LINK_ID", "RAGGED_HIER_LINK_NAME", "RAGGED_HIER_LINK_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "PARENT_LEVEL_ID", "PARENT_LEVEL_NAME", "PARENT_LEVEL_OVID", "CHILD_LEVEL_ID", "CHILD_LEVEL_NAME", "CHILD_LEVEL_OVID", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Ragged_Hier_Link_ID, Ragged_Hier_Link_Name, Ragged_Hier_Link_OVID, Model_ID, Model_Name, Model_OVID, Parent_Level_ID, Parent_Level_Name, Parent_Level_OVID, Child_Level_ID, Child_Level_Name, Child_Level_OVID, Description, Design_OVID from DMRS_RAGGED_HIER_LINKS
;
--------------------------------------------------------
--  DDL for View DMRV_RDBMS_SITES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_RDBMS_SITES" ("SITE_NAME", "SITE_ID", "SITE_OVID", "RDBMS_TYPE", "DESIGN_OVID") AS 
  select  Site_Name, Site_ID, Site_OVID, RDBMS_Type, Design_OVID from DMRS_RDBMS_SITES
;
--------------------------------------------------------
--  DDL for View DMRV_RECORD_STRUCT_EXT_DATAS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_RECORD_STRUCT_EXT_DATAS" ("RECORD_STRUCTURE_ID", "RECORD_STRUCTURE_OVID", "RECORD_STRUCTURE_NAME", "EXTERNAL_DATA_ID", "EXTERNAL_DATA_OVID", "EXTERNAL_DATA_NAME", "DESIGN_OVID") AS 
  select  Record_Structure_ID, Record_Structure_OVID, Record_Structure_Name, External_Data_ID, External_Data_OVID, External_Data_Name, Design_OVID from DMRS_RECORD_STRUCT_EXT_DATAS
;
--------------------------------------------------------
--  DDL for View DMRV_RECORD_STRUCTURES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_RECORD_STRUCTURES" ("RECORD_STRUCTURE_ID", "RECORD_STRUCTURE_OVID", "RECORD_STRUCTURE_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Record_Structure_ID, Record_Structure_OVID, Record_Structure_Name, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_RECORD_STRUCTURES
;
--------------------------------------------------------
--  DDL for View DMRV_RELATIONSHIPS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_RELATIONSHIPS" ("RELATIONSHIP_NAME", "MODEL_ID", "MODEL_OVID", "OBJECT_ID", "OVID", "IMPORT_ID", "SOURCE_ENTITY_NAME", "TARGET_ENTITY_NAME", "SOURCE_LABEL", "TARGET_LABEL", "SOURCETO_TARGET_CARDINALITY", "TARGETTO_SOURCE_CARDINALITY", "SOURCE_OPTIONAL", "TARGET_OPTIONAL", "DOMINANT_ROLE", "IDENTIFYING", "SOURCE_ID", "SOURCE_OVID", "TARGET_ID", "TARGET_OVID", "NUMBER_OF_ATTRIBUTES", "TRANSFERABLE", "IN_ARC", "ARC_ID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Relationship_Name, Model_ID, Model_OVID, Object_ID, OVID, Import_ID, Source_Entity_Name, Target_Entity_Name, Source_Label, Target_Label, SourceTo_Target_Cardinality, TargetTo_Source_Cardinality, Source_Optional, Target_Optional, Dominant_Role, Identifying, Source_ID, Source_OVID, Target_ID, Target_OVID, Number_Of_Attributes, Transferable, In_Arc, Arc_ID, Model_Name, Design_OVID from DMRS_RELATIONSHIPS
;
--------------------------------------------------------
--  DDL for View DMRV_REPORTS_VERSION_1_0
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_REPORTS_VERSION_1_0" ("DMRS_PERSISTENCE_VERSION", "DMRS_REPORTS_VERSION", "CREATED_ON") AS 
  select 1.6 DMRS_Persistence_Version, 1.0 DMRS_Reports_Version, to_timestamp('2018/12/01 17:22:08','YYYY/MM/DD HH24:MI:SS') Created_On from dual with read only
;
--------------------------------------------------------
--  DDL for View DMRV_RESOURCE_LOCATORS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_RESOURCE_LOCATORS" ("RESOURCE_LOCATOR_ID", "RESOURCE_LOCATOR_OVID", "RESOURCE_LOCATOR_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "URL", "DESIGN_OVID") AS 
  select  Resource_Locator_ID, Resource_Locator_OVID, Resource_Locator_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Url, Design_OVID from DMRS_RESOURCE_LOCATORS
;
--------------------------------------------------------
--  DDL for View DMRV_RES_PARTY_CONTACTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_RES_PARTY_CONTACTS" ("RESPONSIBLE_PARTY_ID", "RESPONSIBLE_PARTY_OVID", "RESPONSIBLE_PARTY_NAME", "CONTACT_ID", "CONTACT_OVID", "CONTACT_NAME", "DESIGN_OVID") AS 
  select  Responsible_Party_ID, Responsible_Party_OVID, Responsible_Party_Name, Contact_ID, Contact_OVID, Contact_Name, Design_OVID from DMRS_RES_PARTY_CONTACTS
;
--------------------------------------------------------
--  DDL for View DMRV_RES_PARTY_ELEMENTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_RES_PARTY_ELEMENTS" ("RESPONSIBLE_PARTY_ID", "RESPONSIBLE_PARTY_OVID", "RESPONSIBLE_PARTY_NAME", "ELEMENT_ID", "ELEMENT_OVID", "ELEMENT_NAME", "ELEMENT_TYPE", "DESIGN_OVID") AS 
  select  Responsible_Party_ID, Responsible_Party_OVID, Responsible_Party_Name, Element_ID, Element_OVID, Element_Name, Element_Type, Design_OVID from DMRS_RES_PARTY_ELEMENTS
;
--------------------------------------------------------
--  DDL for View DMRV_RESPONSIBLE_PARTIES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_RESPONSIBLE_PARTIES" ("RESPONSIBLE_PARTY_ID", "RESPONSIBLE_PARTY_OVID", "RESPONSIBLE_PARTY_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "PARENT_ID", "PARENT_OVID", "PARENT_NAME", "RESPONSIBILITY", "DESIGN_OVID") AS 
  select  Responsible_Party_ID, Responsible_Party_OVID, Responsible_Party_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Parent_ID, Parent_OVID, Parent_Name, Responsibility, Design_OVID from DMRS_RESPONSIBLE_PARTIES
;
--------------------------------------------------------
--  DDL for View DMRV_ROLE_PROCESSES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_ROLE_PROCESSES" ("ROLE_ID", "ROLE_OVID", "ROLE", "PROCESS_ID", "PROCESS_OVID", "PROCESS_NAME", "DESIGN_OVID") AS 
  select  Role_ID, Role_OVID, Role_Name, Process_ID, Process_OVID, Process_Name, Design_OVID from DMRS_ROLE_PROCESSES
;
--------------------------------------------------------
--  DDL for View DMRV_ROLES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_ROLES" ("ROLE_ID", "ROLE_OVID", "ROLE", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Role_ID, Role_OVID, Role_Name, Model_ID, Model_OVID, Model_Name, Description, Design_OVID from DMRS_ROLES
;
--------------------------------------------------------
--  DDL for View DMRV_ROLLUP_LINK_ATTRS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_ROLLUP_LINK_ATTRS" ("ROLLUP_LINK_ID", "ROLLUP_LINK_NAME", "ROLLUP_LINK_OVID", "ATTRIBUTE_ID", "ATTRIBUTE_NAME", "ATTRIBUTE_OVID", "DESIGN_OVID") AS 
  select  Rollup_Link_ID, Rollup_Link_Name, Rollup_Link_OVID, Attribute_ID, Attribute_Name, Attribute_OVID, Design_OVID from DMRS_ROLLUP_LINK_ATTRS
;
--------------------------------------------------------
--  DDL for View DMRV_ROLLUP_LINKS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_ROLLUP_LINKS" ("ROLLUP_LINK_ID", "ROLLUP_LINK_NAME", "ROLLUP_LINK_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "PARENT_OBJECT_ID", "PARENT_OBJECT_NAME", "PARENT_OBJECT_OVID", "CHILD_OBJECT_ID", "CHILD_OBJECT_NAME", "CHILD_OBJECT_OVID", "FACT_ENTITY_ID", "FACT_ENTITY_NAME", "FACT_ENTITY_OVID", "PARENT_OBJECT_TYPE", "CHILD_OBJECT_TYPE", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "DEFAULT_AGGR_OPERATOR", "IS_ROLE_PLAYING", "IS_SPARSE_DIMENSION", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Rollup_Link_ID, Rollup_Link_Name, Rollup_Link_OVID, Model_ID, Model_Name, Model_OVID, Parent_Object_ID, Parent_Object_Name, Parent_Object_OVID, Child_Object_ID, Child_Object_Name, Child_Object_OVID, Fact_Entity_ID, Fact_Entity_Name, Fact_Entity_OVID, Parent_Object_Type, Child_Object_Type, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Default_Aggr_Operator, Is_Role_Playing, Is_Sparse_Dimension, Description, Design_OVID from DMRS_ROLLUP_LINKS
;
--------------------------------------------------------
--  DDL for View DMRV_SLICE_DIM_HIER_LEVEL
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_SLICE_DIM_HIER_LEVEL" ("SLICE_ID", "SLICE_NAME", "SLICE_OVID", "DIMENSION_ID", "DIMENSION_NAME", "DIMENSION_OVID", "HIERARCHY_ID", "HIERARCHY_NAME", "HIERARCHY_OVID", "LEVEL_ID", "LEVEL_NAME", "LEVEL_OVID", "DESIGN_OVID") AS 
  select  Slice_ID, Slice_Name, Slice_OVID, Dimension_ID, Dimension_Name, Dimension_OVID, Hierarchy_ID, Hierarchy_Name, Hierarchy_OVID, Level_ID, Level_Name, Level_OVID, Design_OVID from DMRS_SLICE_DIM_HIER_LEVEL
;
--------------------------------------------------------
--  DDL for View DMRV_SLICE_MEASURES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_SLICE_MEASURES" ("SLICE_ID", "SLICE_NAME", "SLICE_OVID", "MEASURE_ID", "MEASURE_NAME", "MEASURE_OVID", "AGGREGATE_FUNCTION_ID", "AGGREGATE_FUNCTION_NAME", "AGGREGATE_FUNCTION_OVID", "MEASURE_ALIAS", "DESIGN_OVID") AS 
  select  Slice_ID, Slice_Name, Slice_OVID, Measure_ID, Measure_Name, Measure_OVID, Aggregate_Function_ID, Aggregate_Function_Name, Aggregate_Function_OVID, Measure_Alias, Design_OVID from DMRS_SLICE_MEASURES
;
--------------------------------------------------------
--  DDL for View DMRV_SLICES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_SLICES" ("SLICE_ID", "SLICE_NAME", "SLICE_OVID", "MODEL_ID", "MODEL_NAME", "MODEL_OVID", "CUBE_ID", "CUBE_NAME", "CUBE_OVID", "ENTITY_ID", "ENTITY_NAME", "ENTITY_OVID", "ORACLE_LONG_NAME", "ORACLE_PLURAL_NAME", "ORACLE_SHORT_NAME", "IS_FULLY_REALIZED", "IS_READ_ONLY", "DESCRIPTION", "DESIGN_OVID") AS 
  select  Slice_ID, Slice_Name, Slice_OVID, Model_ID, Model_Name, Model_OVID, Cube_ID, Cube_Name, Cube_OVID, Entity_ID, Entity_Name, Entity_OVID, Oracle_Long_Name, Oracle_Plural_Name, Oracle_Short_Name, Is_Fully_Realized, Is_Read_Only, Description, Design_OVID from DMRS_SLICES
;
--------------------------------------------------------
--  DDL for View DMRV_SOURCE_INFO
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_SOURCE_INFO" ("SOURCE_INFO_OVID", "SOURCE_INFO_TYPE", "DDL_FILE_NAME", "DDL_PATH_NAME", "DDL_DB_TYPE", "DATADICT_CONNECTION_NAME", "DATADICT_CONNECTION_URL", "DATADICT_DB_TYPE", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  Source_Info_OVID, Source_Info_Type, DDL_File_Name, DDL_Path_Name, DDL_DB_Type, DataDict_Connection_Name, DataDict_Connection_Url, DataDict_DB_Type, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_SOURCE_INFO
;
--------------------------------------------------------
--  DDL for View DMRV_SPATIAL_COLUMN_DEFINITION
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_SPATIAL_COLUMN_DEFINITION" ("TABLE_ID", "TABLE_OVID", "DEFINITION_ID", "DEFINITION_OVID", "DEFINITION_NAME", "TABLE_NAME", "COLUMN_ID", "COLUMN_OVID", "COLUMN_NAME", "USE_FUNCTION", "FUNCTION_EXPRESSION", "COORDINATE_SYSTEM_ID", "HAS_SPATIAL_INDEX", "SPATIAL_INDEX_ID", "SPATIAL_INDEX_OVID", "SPATIAL_INDEX_NAME", "DESIGN_OVID") AS 
  select  Table_ID, Table_OVID, Definition_ID, Definition_OVID, Definition_Name, Table_Name, Column_ID, Column_OVID, Column_Name, Use_Function, Function_Expression, Coordinate_System_ID, Has_Spatial_Index, Spatial_Index_ID, Spatial_Index_OVID, Spatial_Index_Name, Design_OVID from DMRS_SPATIAL_COLUMN_DEFINITION
;
--------------------------------------------------------
--  DDL for View DMRV_SPATIAL_DIMENSIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_SPATIAL_DIMENSIONS" ("DEFINITION_ID", "DEFINITION_OVID", "DEFINITION_NAME", "DIMENSION_NAME", "LOW_BOUNDARY", "UPPER_BOUNDARY", "TOLERANCE", "DESIGN_OVID") AS 
  select  Definition_ID, Definition_OVID, Definition_Name, Dimension_Name, Low_Boundary, Upper_Boundary, Tolerance, Design_OVID from DMRS_SPATIAL_DIMENSIONS
;
--------------------------------------------------------
--  DDL for View DMRV_STRUCT_TYPE_ATTRS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_STRUCT_TYPE_ATTRS" ("ATTRIBUTE_ID", "ATTRIBUTE_OVID", "ATTRIBUTE_NAME", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "MANDATORY", "REFERENCE", "T_SIZE", "T_PRECISION", "T_SCALE", "TYPE_ID", "TYPE_OVID", "TYPE_NAME", "DESIGN_OVID") AS 
  SELECT Attribute_ID, Attribute_OVID, Attribute_Name, Structured_Type_ID, Structured_Type_OVID, Structured_Type_Name, Mandatory, Reference, T_Size, T_Precision, T_Scale, Type_ID, Type_OVID, Type_Name, Design_OVID FROM DMRS_STRUCT_TYPE_ATTRS
;
--------------------------------------------------------
--  DDL for View DMRV_STRUCT_TYPE_METHOD_PARS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_STRUCT_TYPE_METHOD_PARS" ("PARAMETER_ID", "PARAMETER_OVID", "PARAMETER_NAME", "METHOD_ID", "METHOD_OVID", "METHOD_NAME", "RETURN_VALUE", "REFERENCE", "SEQ", "T_SIZE", "T_PRECISION", "T_SCALE", "TYPE_ID", "TYPE_OVID", "TYPE_NAME", "DESIGN_OVID") AS 
  SELECT  Parameter_ID, Parameter_OVID, Parameter_Name, Method_ID, Method_OVID, Method_Name, Return_Value, Reference, Seq, T_Size, T_Precision, T_Scale, Type_ID, Type_OVID, Type_Name, Design_OVID FROM DMRS_STRUCT_TYPE_METHOD_PARS
;
--------------------------------------------------------
--  DDL for View DMRV_STRUCT_TYPE_METHODS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_STRUCT_TYPE_METHODS" ("METHOD_ID", "METHOD_OVID", "METHOD_NAME", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "BODY", "CONSTRUCTOR", "OVERRIDDEN_METHOD_ID", "OVERRIDDEN_METHOD_OVID", "OVERRIDDEN_METHOD_NAME", "DESIGN_OVID") AS 
  SELECT stm.Method_ID, stm.Method_OVID, stm.Method_Name, stm.Structured_Type_ID, stm.Structured_Type_OVID, stm.Structured_Type_Name, lt.Text, stm.Constructor, stm.Overridden_Method_ID, stm.Overridden_Method_OVID, stm.Overridden_Method_Name, stm.Design_OVID FROM DMRS_STRUCT_TYPE_METHODS stm, DMRS_LARGE_TEXT lt WHERE stm.Method_id  = lt.Object_id
;
--------------------------------------------------------
--  DDL for View DMRV_STRUCTURED_TYPES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_STRUCTURED_TYPES" ("DESIGN_ID", "DESIGN_OVID", "DESIGN_NAME", "MODEL_OVID", "MODEL_NAME", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "SUPER_TYPE_ID", "SUPER_TYPE_OVID", "SUPER_TYPE_NAME", "PREDEFINED", "ST_FINAL", "ST_INSTANTIABLE") AS 
  select  Design_ID, Design_OVID, Design_Name, Model_OVID, Model_Name, Structured_Type_ID, Structured_Type_OVID, Structured_Type_Name, Super_Type_ID, Super_Type_OVID, Super_Type_Name, Predefined, ST_Final, ST_Instantiable from DMRS_STRUCTURED_TYPES
;
--------------------------------------------------------
--  DDL for View DMRV_TABLE_CONSTRAINTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_TABLE_CONSTRAINTS" ("TABLE_ID", "TABLE_OVID", "SEQUENCE", "CONSTRAINT_ID", "CONSTRAINT_OVID", "CONSTRAINT_NAME", "TEXT", "TABLE_NAME", "DESIGN_OVID") AS 
  select  Table_ID, Table_OVID, Sequence, Constraint_ID, Constraint_OVID, Constraint_Name, Text, Table_Name, Design_OVID from DMRS_TABLE_CONSTRAINTS
;
--------------------------------------------------------
--  DDL for View DMRV_TABLE_INCLUDE_SCRIPTS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_TABLE_INCLUDE_SCRIPTS" ("TABLE_ID", "TABLE_OVID", "TABLE_NAME", "TYPE", "SEQUENCE", "TEXT", "DESIGN_OVID") AS 
  select  Table_ID, Table_OVID, Table_Name, Type, Sequence, Text, Design_OVID from DMRS_TABLE_INCLUDE_SCRIPTS
;
--------------------------------------------------------
--  DDL for View DMRV_TABLES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_TABLES" ("TABLE_NAME", "ABBREVIATION", "OBJECT_ID", "OVID", "IMPORT_ID", "MODEL_ID", "MODEL_OVID", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "NUMBER_DATA_ELEMENTS", "CLASSIFICATION_TYPE_ID", "CLASSIFICATION_TYPE_OVID", "CLASSIFICATION_TYPE_NAME", "ALLOW_TYPE_SUBSTITUTION", "MIN_VOLUME", "EXPECTED_VOLUME", "MAX_VOLUME", "GROWTH_RATE_PERCENTS", "GROWTH_RATE_INTERVAL", "NORMAL_FORM", "TEMPORARY_OBJECT_SCOPE", "ADEQUATELY_NORMALIZED", "SUBSTITUTION_PARENT", "SUBSTITUTION_PARENT_OVID", "ENGINEER", "SPATIAL_TABLE", "OID_IS_PK", "OID_IS_USER_DEFINED", "INCLUDE_SCRIPTS_INTO_DDL", "MODEL_NAME", "SUBSTITUTION_PARENT_NAME", "SOURCE_INFO_OVID", "SOURCE_DATADICT_SCHEMA_NAME", "SOURCE_DATADICT_OBJECT_NAME", "DESIGN_OVID") AS 
  select  Table_Name, Abbreviation, Object_ID, OVID, Import_ID, Model_ID, Model_OVID, Structured_Type_ID, Structured_Type_OVID, Structured_Type_Name, Number_Data_Elements, Classification_Type_ID, Classification_Type_OVID, Classification_Type_Name, Allow_Type_Substitution, Min_Volume, Expected_Volume, Max_Volume, Growth_Rate_Percents, Growth_Rate_Interval, Normal_Form, Temporary_Object_Scope, Adequately_Normalized, Substitution_Parent, Substitution_Parent_OVID, Engineer, Spatial_Table, OID_is_PK, OID_is_User_Defined, Include_Scripts_Into_DDL, Model_Name, Substitution_Parent_Name, Source_Info_OVID, Source_DataDict_Schema_Name, Source_DataDict_Object_Name, Design_OVID from DMRS_TABLES
;
--------------------------------------------------------
--  DDL for View DMRV_TABLEVIEWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_TABLEVIEWS" ("TABLEVIEW_NAME", "OBJECT_ID", "OVID", "IMPORT_ID", "MODEL_ID", "MODEL_OVID", "STRUCTURED_TYPE_ID", "STRUCTURED_TYPE_OVID", "STRUCTURED_TYPE_NAME", "WHERE_CLAUSE", "HAVING_CLAUSE", "USER_DEFINED", "ENGINEER", "ALLOW_TYPE_SUBSTITUTION", "OID_COLUMNS", "MODEL_NAME", "DESIGN_OVID") AS 
  select  TableView_Name, Object_ID, OVID, Import_ID, Model_ID, Model_OVID, Structured_Type_ID, Structured_Type_OVID, Structured_Type_Name, Where_Clause, Having_Clause, User_Defined, Engineer, Allow_Type_Substitution, OID_Columns, Model_Name, Design_OVID from DMRS_TABLEVIEWS
;
--------------------------------------------------------
--  DDL for View DMRV_TASK_PARAMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_TASK_PARAMS" ("TASK_PARAMS_ID", "TASK_PARAMS_OVID", "TASK_PARAMS_NAME", "TRANSFORMATION_TASK_ID", "TRANSFORMATION_TASK_OVID", "TRANSFORMATION_TASK_NAME", "TASK_PARAMS_TYPE", "MULTIPLICITY", "SYSTEM_OBJECTIVE", "DESIGN_OVID") AS 
  select  Task_Params_ID, Task_Params_OVID, Task_Params_Name, Transformation_Task_ID, Transformation_Task_OVID, Transformation_Task_Name, Task_Params_Type, Multiplicity, System_Objective, Design_OVID from DMRS_TASK_PARAMS
;
--------------------------------------------------------
--  DDL for View DMRV_TASK_PARAMS_ITEMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_TASK_PARAMS_ITEMS" ("TASK_PARAMS_ITEM_ID", "TASK_PARAMS_ITEM_OVID", "TASK_PARAMS_ITEM_NAME", "TASK_PARAMS_ID", "TASK_PARAMS_OVID", "TASK_PARAMS_NAME", "LOGICAL_TYPE_ID", "LOGICAL_TYPE_OVID", "LOGICAL_TYPE_NAME", "TASK_PARAMS_ITEM_TYPE", "DESIGN_OVID") AS 
  select  Task_Params_Item_ID, Task_Params_Item_OVID, Task_Params_Item_Name, Task_Params_ID, Task_Params_OVID, Task_Params_Name, Logical_Type_ID, Logical_Type_OVID, Logical_Type_Name, Task_Params_Item_Type, Design_OVID from DMRS_TASK_PARAMS_ITEMS
;
--------------------------------------------------------
--  DDL for View DMRV_TELEPHONES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_TELEPHONES" ("TELEPHONE_ID", "TELEPHONE_OVID", "TELEPHONE_NAME", "BUSINESS_INFO_ID", "BUSINESS_INFO_OVID", "BUSINESS_INFO_NAME", "PHONE_NUMBER", "PHONE_TYPE", "DESIGN_OVID") AS 
  select  Telephone_ID, Telephone_OVID, Telephone_Name, Business_Info_ID, Business_Info_OVID, Business_Info_Name, Phone_Number, Phone_Type, Design_OVID from DMRS_TELEPHONES
;
--------------------------------------------------------
--  DDL for View DMRV_TRANSFORMATION_FLOWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_TRANSFORMATION_FLOWS" ("TRANSFORMATION_FLOW_ID", "TRANSFORMATION_FLOW_OVID", "TRANSFORMATION_FLOW_NAME", "TRANSFORMATION_TASK_ID", "TRANSFORMATION_TASK_OVID", "TRANSFORMATION_TASK_NAME", "SOURCE_ID", "SOURCE_OVID", "SOURCE_NAME", "DESTINATION_ID", "DESTINATION_OVID", "DESTINATION_NAME", "SOURCE_TYPE", "DESTINATION_TYPE", "SYSTEM_OBJECTIVE", "LOGGING", "OP_CREATE", "OP_READ", "OP_UPDATE", "OP_DELETE", "CRUD_CODE", "DESIGN_OVID") AS 
  select  Transformation_Flow_ID, Transformation_Flow_OVID, Transformation_Flow_Name, Transformation_Task_ID, Transformation_Task_OVID, Transformation_Task_Name, Source_ID, Source_OVID, Source_Name, Destination_ID, Destination_OVID, Destination_Name, Source_Type, Destination_Type, System_Objective, Logging, Op_Create, Op_Read, Op_Update, Op_Delete, CRUD_Code, Design_OVID from DMRS_TRANSFORMATION_FLOWS
;
--------------------------------------------------------
--  DDL for View DMRV_TRANSFORMATION_PACKAGES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_TRANSFORMATION_PACKAGES" ("TRANSFORMATION_PACKAGE_ID", "TRANSFORMATION_PACKAGE_OVID", "TRANSFORMATION_PACKAGE_NAME", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "SYSTEM_OBJECTIVE", "DESIGN_OVID") AS 
  select  Transformation_Package_ID, Transformation_Package_OVID, Transformation_Package_Name, Model_ID, Model_OVID, Model_Name, System_Objective, Design_OVID from DMRS_TRANSFORMATION_PACKAGES
;
--------------------------------------------------------
--  DDL for View DMRV_TRANSFORMATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_TRANSFORMATIONS" ("TRANSFORMATION_ID", "TRANSFORMATION_OVID", "TRANSFORMATION_NAME", "TRANSFORMATION_TASK_ID", "TRANSFORMATION_TASK_OVID", "TRANSFORMATION_TASK_NAME", "FILTER_CONDITION", "JOIN_CONDITION", "PRIMARY", "DESIGN_OVID") AS 
  select  Transformation_ID, Transformation_OVID, Transformation_Name, Transformation_Task_ID, Transformation_Task_OVID, Transformation_Task_Name, Filter_Condition, Join_Condition, Primary, Design_OVID from DMRS_TRANSFORMATIONS
;
--------------------------------------------------------
--  DDL for View DMRV_TRANSFORMATION_TASK_INFOS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_TRANSFORMATION_TASK_INFOS" ("TRANSFORMATION_TASK_ID", "TRANSFORMATION_TASK_OVID", "TRANSFORMATION_TASK_NAME", "INFO_STORE_ID", "INFO_STORE_OVID", "INFO_STORE_NAME", "SOURCE_TARGET_FLAG", "DESIGN_OVID") AS 
  select  Transformation_Task_ID, Transformation_Task_OVID, Transformation_Task_Name, Info_Store_ID, Info_Store_OVID, Info_Store_Name, Source_Target_Flag, Design_OVID from DMRS_TRANSFORMATION_TASK_INFOS
;
--------------------------------------------------------
--  DDL for View DMRV_TRANSFORMATION_TASKS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_TRANSFORMATION_TASKS" ("TRANSFORMATION_TASK_ID", "TRANSFORMATION_TASK_OVID", "TRANSFORMATION_TASK_NAME", "TRANSFORMATION_PACKAGE_ID", "TRANSFORMATION_PACKAGE_OVID", "TRANSFORMATION_PACKAGE_NAME", "PROCESS_ID", "PROCESS_OVID", "PROCESS_NAME", "TOP_LEVEL", "DESIGN_OVID") AS 
  select  Transformation_Task_ID, Transformation_Task_OVID, Transformation_Task_Name, Transformation_Package_ID, Transformation_Package_OVID, Transformation_Package_Name, Process_ID, Process_OVID, Process_Name, Top_Level, Design_OVID from DMRS_TRANSFORMATION_TASKS
;
--------------------------------------------------------
--  DDL for View DMRV_VALUE_RANGES
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_VALUE_RANGES" ("DATAELEMENT_ID", "DATAELEMENT_OVID", "TYPE", "SEQUENCE", "BEGIN_VALUE", "END_VALUE", "SHORT_DESCRIPTION", "CONTAINER_ID", "CONTAINER_OVID", "CONTAINER_NAME", "DATAELEMENT_NAME", "DESIGN_OVID") AS 
  select  DataElement_ID, DataElement_OVID, Type, Sequence, Begin_Value, End_Value, Short_Description, Container_ID, Container_OVID, Container_Name, DataElement_Name, Design_OVID from DMRS_VALUE_RANGES
;
--------------------------------------------------------
--  DDL for View DMRV_VIEW_COLUMNS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_VIEW_COLUMNS" ("VIEW_OVID", "VIEW_ID", "VIEW_NAME", "CONTAINER_ID", "CONTAINER_OVID", "CONTAINER_NAME", "CONTAINER_ALIAS", "IS_EXPRESSION", "COLUMN_ID", "COLUMN_OVID", "COLUMN_NAME", "COLUMN_ALIAS", "NATIVE_TYPE", "TYPE", "EXPRESSION", "SEQUENCE", "PERSONALLY_ID_INFORMATION", "SENSITIVE_INFORMATION", "MASK_FOR_NONE_PRODUCTION", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  View_OVID, View_ID, View_Name, Container_ID, Container_OVID, Container_Name, Container_Alias, Is_Expression, Column_ID, Column_OVID, Column_Name, Column_Alias, Native_Type, Type, Expression, Sequence, Personally_ID_Information, Sensitive_Information, Mask_For_None_Production, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_VIEW_COLUMNS
;
--------------------------------------------------------
--  DDL for View DMRV_VIEW_CONTAINERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_VIEW_CONTAINERS" ("VIEW_OVID", "VIEW_ID", "VIEW_NAME", "CONTAINER_ID", "CONTAINER_OVID", "CONTAINER_NAME", "TYPE", "ALIAS", "SEQUENCE", "MODEL_ID", "MODEL_OVID", "MODEL_NAME", "DESIGN_OVID") AS 
  select  View_OVID, View_ID, View_Name, Container_ID, Container_OVID, Container_Name, Type, Alias, Sequence, Model_ID, Model_OVID, Model_Name, Design_OVID from DMRS_VIEW_CONTAINERS
;
--------------------------------------------------------
--  DDL for View DMRV_VIEW_ORDER_GROUPBY
--------------------------------------------------------

  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DMRV_VIEW_ORDER_GROUPBY" ("VIEW_OVID", "VIEW_ID", "VIEW_NAME", "CONTAINER_ID", "CONTAINER_OVID", "CONTAINER_NAME", "CONTAINER_ALIAS", "IS_EXPRESSION", "USAGE", "SEQUENCE", "COLUMN_ID", "COLUMN_OVID", "COLUMN_NAME", "COLUMN_ALIAS", "SORT_ORDER", "EXPRESSION", "DESIGN_OVID") AS 
  select  View_OVID, View_ID, View_Name, Container_ID, Container_OVID, Container_Name, Container_Alias, Is_Expression, Usage, Sequence, Column_ID, Column_OVID, Column_Name, Column_Alias, Sort_Order, Expression, Design_OVID from DMRS_VIEW_ORDER_GROUPBY
;
REM INSERTING into ADMINISTRATOR
SET DEFINE OFF;
Insert into ADMINISTRATOR (ID_ADMINISTRATORA) values ('1');
REM INSERTING into BAGAZ
SET DEFINE OFF;
Insert into BAGAZ (ID_BAGAZU,RODZAJ,WAGA,ID_KLIENTA) values ('1','rejestrowany','3','1');
Insert into BAGAZ (ID_BAGAZU,RODZAJ,WAGA,ID_KLIENTA) values ('2','podreczny','3','2');
Insert into BAGAZ (ID_BAGAZU,RODZAJ,WAGA,ID_KLIENTA) values ('3','podreczny','3','3');
Insert into BAGAZ (ID_BAGAZU,RODZAJ,WAGA,ID_KLIENTA) values ('4','rejestrowany','3','3');
REM INSERTING into BILET
SET DEFINE OFF;
Insert into BILET (ID_BILETU,CENA,RZAD,TYP_MIEJSCA,ID_KLIENTA,ID_LOTU) values ('10','600','1','srodek','1','8');
Insert into BILET (ID_BILETU,CENA,RZAD,TYP_MIEJSCA,ID_KLIENTA,ID_LOTU) values ('3','400','1','przejscie','1','4');
Insert into BILET (ID_BILETU,CENA,RZAD,TYP_MIEJSCA,ID_KLIENTA,ID_LOTU) values ('5','400','1','okno','1','4');
REM INSERTING into KLIENT
SET DEFINE OFF;
Insert into KLIENT (ID_KLIENTA) values ('1');
Insert into KLIENT (ID_KLIENTA) values ('2');
Insert into KLIENT (ID_KLIENTA) values ('3');
Insert into KLIENT (ID_KLIENTA) values ('4');
Insert into KLIENT (ID_KLIENTA) values ('5');
Insert into KLIENT (ID_KLIENTA) values ('6');
Insert into KLIENT (ID_KLIENTA) values ('7');
Insert into KLIENT (ID_KLIENTA) values ('8');
Insert into KLIENT (ID_KLIENTA) values ('9');
Insert into KLIENT (ID_KLIENTA) values ('10');
Insert into KLIENT (ID_KLIENTA) values ('11');
Insert into KLIENT (ID_KLIENTA) values ('12');
Insert into KLIENT (ID_KLIENTA) values ('13');
Insert into KLIENT (ID_KLIENTA) values ('14');
Insert into KLIENT (ID_KLIENTA) values ('15');
Insert into KLIENT (ID_KLIENTA) values ('16');
Insert into KLIENT (ID_KLIENTA) values ('17');
Insert into KLIENT (ID_KLIENTA) values ('18');
Insert into KLIENT (ID_KLIENTA) values ('19');
Insert into KLIENT (ID_KLIENTA) values ('20');
Insert into KLIENT (ID_KLIENTA) values ('21');
Insert into KLIENT (ID_KLIENTA) values ('22');
Insert into KLIENT (ID_KLIENTA) values ('23');
Insert into KLIENT (ID_KLIENTA) values ('24');
Insert into KLIENT (ID_KLIENTA) values ('25');
Insert into KLIENT (ID_KLIENTA) values ('26');
Insert into KLIENT (ID_KLIENTA) values ('27');
REM INSERTING into LOT
SET DEFINE OFF;
Insert into LOT (ID_LOTU,ID_SAMOLOTU,ID_LOTNISKA_WYLOTU,ID_LOTNISKA_PRZYLOTU,CENA_BILETU,DATA_LOTU) values ('10','3','2','4','250',to_date('19/01/11 18:00','RR/MM/DD HH24:MI'));
Insert into LOT (ID_LOTU,ID_SAMOLOTU,ID_LOTNISKA_WYLOTU,ID_LOTNISKA_PRZYLOTU,CENA_BILETU,DATA_LOTU) values ('8','2','4','1','600',to_date('18/12/31 18:30','RR/MM/DD HH24:MI'));
Insert into LOT (ID_LOTU,ID_SAMOLOTU,ID_LOTNISKA_WYLOTU,ID_LOTNISKA_PRZYLOTU,CENA_BILETU,DATA_LOTU) values ('13','1','2','1','300',to_date('18/12/31 15:30','RR/MM/DD HH24:MI'));
Insert into LOT (ID_LOTU,ID_SAMOLOTU,ID_LOTNISKA_WYLOTU,ID_LOTNISKA_PRZYLOTU,CENA_BILETU,DATA_LOTU) values ('14','4','2','3','300',to_date('18/12/31 15:30','RR/MM/DD HH24:MI'));
Insert into LOT (ID_LOTU,ID_SAMOLOTU,ID_LOTNISKA_WYLOTU,ID_LOTNISKA_PRZYLOTU,CENA_BILETU,DATA_LOTU) values ('17','8','2','3','320',to_date('18/12/31 15:31','RR/MM/DD HH24:MI'));
Insert into LOT (ID_LOTU,ID_SAMOLOTU,ID_LOTNISKA_WYLOTU,ID_LOTNISKA_PRZYLOTU,CENA_BILETU,DATA_LOTU) values ('18','6','2','3','320',to_date('18/12/31 15:31','RR/MM/DD HH24:MI'));
Insert into LOT (ID_LOTU,ID_SAMOLOTU,ID_LOTNISKA_WYLOTU,ID_LOTNISKA_PRZYLOTU,CENA_BILETU,DATA_LOTU) values ('20','10','5','2','301',to_date('19/11/05 23:59','RR/MM/DD HH24:MI'));
Insert into LOT (ID_LOTU,ID_SAMOLOTU,ID_LOTNISKA_WYLOTU,ID_LOTNISKA_PRZYLOTU,CENA_BILETU,DATA_LOTU) values ('4','1','3','1','400',to_date('18/12/15 08:38','RR/MM/DD HH24:MI'));
REM INSERTING into LOTNISKO
SET DEFINE OFF;
Insert into LOTNISKO (ID_LOTNISKA,KRAJ,MIASTO) values ('1','POLSKA','KRAKOW');
Insert into LOTNISKO (ID_LOTNISKA,KRAJ,MIASTO) values ('2','NIEMCY','BERLIN');
Insert into LOTNISKO (ID_LOTNISKA,KRAJ,MIASTO) values ('3','CZECHY','PRAGA');
Insert into LOTNISKO (ID_LOTNISKA,KRAJ,MIASTO) values ('5','NIEMCY','MONACHIUM');
Insert into LOTNISKO (ID_LOTNISKA,KRAJ,MIASTO) values ('4','POLSKA','WARSZAWA');
REM INSERTING into NAPRAWA
SET DEFINE OFF;
Insert into NAPRAWA (ID_NAPRAWY,TERMIN_ZLECENIA_NAPRAWY,TERMIN_UKONCZENIA_NAPRAWY,TRESC_ZLECENIA,ID_SAMOLOTU) values ('2',to_date('19/01/03 00:00','RR/MM/DD HH24:MI'),to_date('19/01/04 00:00','RR/MM/DD HH24:MI'),'Naprawa','1');
Insert into NAPRAWA (ID_NAPRAWY,TERMIN_ZLECENIA_NAPRAWY,TERMIN_UKONCZENIA_NAPRAWY,TRESC_ZLECENIA,ID_SAMOLOTU) values ('3',to_date('19/01/03 00:00','RR/MM/DD HH24:MI'),to_date('19/01/05 00:00','RR/MM/DD HH24:MI'),'Wymiana p³ynu','5');
Insert into NAPRAWA (ID_NAPRAWY,TERMIN_ZLECENIA_NAPRAWY,TERMIN_UKONCZENIA_NAPRAWY,TRESC_ZLECENIA,ID_SAMOLOTU) values ('1',to_date('18/01/26 12:55','RR/MM/DD HH24:MI'),to_date('18/01/31 12:55','RR/MM/DD HH24:MI'),'Wymiana oleju','1');
Insert into NAPRAWA (ID_NAPRAWY,TERMIN_ZLECENIA_NAPRAWY,TERMIN_UKONCZENIA_NAPRAWY,TRESC_ZLECENIA,ID_SAMOLOTU) values ('6',to_date('19/01/05 00:00','RR/MM/DD HH24:MI'),to_date('19/01/16 00:00','RR/MM/DD HH24:MI'),'Wymiana skrzyd³a','1');
Insert into NAPRAWA (ID_NAPRAWY,TERMIN_ZLECENIA_NAPRAWY,TERMIN_UKONCZENIA_NAPRAWY,TRESC_ZLECENIA,ID_SAMOLOTU) values ('4',to_date('19/01/05 00:00','RR/MM/DD HH24:MI'),to_date('19/01/05 00:00','RR/MM/DD HH24:MI'),'Wymiana p³ynu','10');
Insert into NAPRAWA (ID_NAPRAWY,TERMIN_ZLECENIA_NAPRAWY,TERMIN_UKONCZENIA_NAPRAWY,TRESC_ZLECENIA,ID_SAMOLOTU) values ('5',to_date('19/01/05 00:00','RR/MM/DD HH24:MI'),to_date('19/01/05 00:00','RR/MM/DD HH24:MI'),'Wymiana p³ynu','11');
REM INSERTING into PRACOWNIK_ADMINISTRACYJNY
SET DEFINE OFF;
Insert into PRACOWNIK_ADMINISTRACYJNY (ID_PRACOWNIKA,ID_ADMINISTRATORA,ZAROBKI) values ('1','1','3444,99');
REM INSERTING into PRACOWNIK_TECHNICZNY
SET DEFINE OFF;
Insert into PRACOWNIK_TECHNICZNY (ID_PRACOWNIKA,ID_ADMINISTRATORA,ZAROBKI) values ('1','1','3000');
Insert into PRACOWNIK_TECHNICZNY (ID_PRACOWNIKA,ID_ADMINISTRATORA,ZAROBKI) values ('2','1','2000');
REM INSERTING into SAMOLOT
SET DEFINE OFF;
Insert into SAMOLOT (ID_SAMOLOTU,NAZWA,MODEL,ILOSC_MIEJSC,STAN_TECHNICZNY,PRZEGLAD_OKRESOWY) values ('1','BOEING','747','300','niesprawny',to_date('19/01/02 00:00','RR/MM/DD HH24:MI'));
Insert into SAMOLOT (ID_SAMOLOTU,NAZWA,MODEL,ILOSC_MIEJSC,STAN_TECHNICZNY,PRZEGLAD_OKRESOWY) values ('4','Dornier','228','240','niesprawny',null);
Insert into SAMOLOT (ID_SAMOLOTU,NAZWA,MODEL,ILOSC_MIEJSC,STAN_TECHNICZNY,PRZEGLAD_OKRESOWY) values ('5','Dornier','228','210','sprawny',to_date('18/12/31 00:00','RR/MM/DD HH24:MI'));
Insert into SAMOLOT (ID_SAMOLOTU,NAZWA,MODEL,ILOSC_MIEJSC,STAN_TECHNICZNY,PRZEGLAD_OKRESOWY) values ('6','Dornier','228','210','sprawny',to_date('19/01/02 00:00','RR/MM/DD HH24:MI'));
Insert into SAMOLOT (ID_SAMOLOTU,NAZWA,MODEL,ILOSC_MIEJSC,STAN_TECHNICZNY,PRZEGLAD_OKRESOWY) values ('2','Boeing','747','210','sprawny',to_date('19/01/05 00:00','RR/MM/DD HH24:MI'));
Insert into SAMOLOT (ID_SAMOLOTU,NAZWA,MODEL,ILOSC_MIEJSC,STAN_TECHNICZNY,PRZEGLAD_OKRESOWY) values ('3','Boeing','747','210','sprawny',to_date('18/12/30 00:00','RR/MM/DD HH24:MI'));
Insert into SAMOLOT (ID_SAMOLOTU,NAZWA,MODEL,ILOSC_MIEJSC,STAN_TECHNICZNY,PRZEGLAD_OKRESOWY) values ('7','Dornier','228','180','niesprawny',null);
Insert into SAMOLOT (ID_SAMOLOTU,NAZWA,MODEL,ILOSC_MIEJSC,STAN_TECHNICZNY,PRZEGLAD_OKRESOWY) values ('8','Dornier','228','180','sprawny',null);
Insert into SAMOLOT (ID_SAMOLOTU,NAZWA,MODEL,ILOSC_MIEJSC,STAN_TECHNICZNY,PRZEGLAD_OKRESOWY) values ('9','Boeing','737','60','niesprawny',null);
Insert into SAMOLOT (ID_SAMOLOTU,NAZWA,MODEL,ILOSC_MIEJSC,STAN_TECHNICZNY,PRZEGLAD_OKRESOWY) values ('10','Boeing','737','60','niesprawny',null);
Insert into SAMOLOT (ID_SAMOLOTU,NAZWA,MODEL,ILOSC_MIEJSC,STAN_TECHNICZNY,PRZEGLAD_OKRESOWY) values ('11','Boeing','737','90','niesprawny',to_date('19/01/04 00:00','RR/MM/DD HH24:MI'));
REM INSERTING into UZYTKOWNIK
SET DEFINE OFF;
Insert into UZYTKOWNIK (ID_UZYTKOWNIKA,LOGIN,HASLO,NR_TELEFONU,KRAJ_ZAMIESZKANIA,MIEJSCOWOSC,ULICA,EMAIL,PESEL,IMIE,NAZWISKO,ID_KLIENTA,ID_PRAC_ADM,ID_ADMINISTRATORA,ID_PRAC_TECH,NR_DOMU,NR_LOKALU) values ('13','login','haslo','551263012','Polska','Krakow','Pawia','login@mail.com','9803129612','Imie','Nazwisko','27',null,null,null,'6',null);
Insert into UZYTKOWNIK (ID_UZYTKOWNIKA,LOGIN,HASLO,NR_TELEFONU,KRAJ_ZAMIESZKANIA,MIEJSCOWOSC,ULICA,EMAIL,PESEL,IMIE,NAZWISKO,ID_KLIENTA,ID_PRAC_ADM,ID_ADMINISTRATORA,ID_PRAC_TECH,NR_DOMU,NR_LOKALU) values ('12','d','d','12312','d','d','d','d','123','d','d',null,'1',null,null,'3','3');
Insert into UZYTKOWNIK (ID_UZYTKOWNIKA,LOGIN,HASLO,NR_TELEFONU,KRAJ_ZAMIESZKANIA,MIEJSCOWOSC,ULICA,EMAIL,PESEL,IMIE,NAZWISKO,ID_KLIENTA,ID_PRAC_ADM,ID_ADMINISTRATORA,ID_PRAC_TECH,NR_DOMU,NR_LOKALU) values ('3','b','b','0','b','b','b',null,'213123','b','b',null,null,'1',null,'3',null);
Insert into UZYTKOWNIK (ID_UZYTKOWNIKA,LOGIN,HASLO,NR_TELEFONU,KRAJ_ZAMIESZKANIA,MIEJSCOWOSC,ULICA,EMAIL,PESEL,IMIE,NAZWISKO,ID_KLIENTA,ID_PRAC_ADM,ID_ADMINISTRATORA,ID_PRAC_TECH,NR_DOMU,NR_LOKALU) values ('2','a','a','0','polska','krakow','dluga ',null,'1231231','a','a','1',null,null,null,'7','2');
Insert into UZYTKOWNIK (ID_UZYTKOWNIKA,LOGIN,HASLO,NR_TELEFONU,KRAJ_ZAMIESZKANIA,MIEJSCOWOSC,ULICA,EMAIL,PESEL,IMIE,NAZWISKO,ID_KLIENTA,ID_PRAC_ADM,ID_ADMINISTRATORA,ID_PRAC_TECH,NR_DOMU,NR_LOKALU) values ('11','c','c','889614653','polska','Krakow','Dluga',null,'66120912312','Jan','Kowalski',null,null,null,'1','3',null);
--------------------------------------------------------
--  DDL for Index PK_ADMIN
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ADMIN" ON "ADMINISTRATOR" ("ID_ADMINISTRATORA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_KLIENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_KLIENT" ON "KLIENT" ("ID_KLIENTA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PRAC_ADM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRAC_ADM" ON "PRACOWNIK_ADMINISTRACYJNY" ("ID_PRACOWNIKA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PRAC_TECH
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRAC_TECH" ON "PRACOWNIK_TECHNICZNY" ("ID_PRACOWNIKA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UZYTKOWNIK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "UZYTKOWNIK_PK" ON "UZYTKOWNIK" ("ID_UZYTKOWNIKA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STAN_TECHNICZNY_IDX
--------------------------------------------------------

  CREATE INDEX "STAN_TECHNICZNY_IDX" ON "SAMOLOT" ("STAN_TECHNICZNY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MIASTO_UNIQUE_INDEX
--------------------------------------------------------

  CREATE UNIQUE INDEX "MIASTO_UNIQUE_INDEX" ON "LOTNISKO" ("MIASTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index KRAJ_UNIQUE_INDEX
--------------------------------------------------------

  CREATE INDEX "KRAJ_UNIQUE_INDEX" ON "LOTNISKO" ("KRAJ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RODZAJ_IDX
--------------------------------------------------------

  CREATE INDEX "RODZAJ_IDX" ON "BAGAZ" ("RODZAJ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ID_LOT_BILET_IDX
--------------------------------------------------------

  CREATE INDEX "ID_LOT_BILET_IDX" ON "BILET" ("ID_LOTU") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure DEL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "DEL" AS
    nazwa   VARCHAR(60);
    temp    VARCHAR(60);
BEGIN
    FOR rec IN 1..138 LOOP
        SELECT
            table_name
        INTO nazwa
        FROM
            all_tables
        WHERE
            table_name LIKE 'DMRS_%' FETCH FIRST 1 ROWS with ties;
            
        temp := 'drop table ' + nazwa;
        EXECUTE IMMEDIATE temp;
    END LOOP;
END del;

/
--------------------------------------------------------
--  DDL for Procedure DODAJ_BAGAZ
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "DODAJ_BAGAZ" 
(
  RODZAJ IN VARCHAR2 
, WAGA IN NUMBER
, ID_KLIENTA IN NUMBER
) AS 
    bagazId NUMBER;
    maxId NUMBER;
    rodzajBag VARCHAR2(12);
BEGIN
   
    SELECT MAX(ID_BAGAZU) INTO bagazId FROM BAGAZ;
    IF (bagazId IS NULL) THEN
    bagazId:=1;
    ELSE 
    bagazId:= bagazId+1;
    END IF;
    rodzajBag := rodzaj;
    
    IF(upper(rodzajBag)!='REJESTROWANY') THEN 
    rodzajBag := 'podreczny';
    ELSE 
    rodzajBag := 'rejestrowany';
    END IF;

    
    INSERT INTO BAGAZ VALUES(bagazId,rodzajBag,waga,id_klienta);
    


END DODAJ_BAGAZ;

/
--------------------------------------------------------
--  DDL for Procedure DODAJ_LOT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "DODAJ_LOT" 
(
  ID_SAMOLOTU IN NUMBER 
  ,CENA_BILETU IN NUMBER
  ,DATA_LOT IN DATE
 , LOTNISKO_WYLOTU IN VARCHAR2
, LOTNISKO_PRZYLOTU IN VARCHAR2 
) AS 
 idLotu NUMBER;
 idLotniskaWylotu NUMBER;
 idLotniskaPrzylotu NUMBER;
BEGIN

    SELECT ID_LOTNISKA INTO idLotniskaWylotu FROM LOTNISKO WHERE LOTNISKO_WYLOTU LIKE MIASTO;
    SELECT ID_LOTNISKA INTO idLotniskaPrzylotu FROM LOTNISKO WHERE LOTNISKO_PRZYLOTU LIKE MIASTO;
    SELECT MAX(ID_LOTU) INTO idLotu FROM LOT; 
  
    IF(idLotu is NULL) THEN
    idLotu:=1;
    ELSE 
    idLotu:=idLotu+1;
    END IF;
    INSERT INTO LOT VALUES(idLotu,ID_SAMOLOTU, idLotniskaWylotu,idLotniskaPrzylotu,CENA_BILETU,DATA_LOT);

END DODAJ_LOT;

/
--------------------------------------------------------
--  DDL for Procedure DODAJ_PRACOWNIKA_ADMINISTRACYJNEGO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "DODAJ_PRACOWNIKA_ADMINISTRACYJNEGO" 
(
  LOGIN IN VARCHAR2 
, PASS IN VARCHAR2 
, FIRSTNAME IN VARCHAR2 
, LASTNAME IN VARCHAR2 
, PESEL IN VARCHAR2 
, PHONE IN VARCHAR2 
, EMAIL IN VARCHAR2 
, COUNTRY IN VARCHAR2 
, CITY IN VARCHAR2 
, STREET IN VARCHAR2 
, HOUSENR IN VARCHAR2 
, FLATNR IN VARCHAR2
, ZAROBKI IN NUMBER
, ID_ADMIN IN NUMBER
) AS 
    workerId NUMBER;
    maxId NUMBER;
    userLogin VARCHAR2(15);
BEGIN
    
    SELECT MAX(ID_PRACOWNIKA) INTO workerId FROM PRACOWNIK_ADMINISTRACYJNY;
    INSERT INTO PRACOWNIK_ADMINISTRACYJNY VALUES (workerId +1,ID_ADMIN,ZAROBKI);
    SELECT MAX(ID_UZYTKOWNIKA) INTO maxId FROM UZYTKOWNIK;
    INSERT INTO uzytkownik VALUES (maxId+1,LOGIN,PASS,PHONE,COUNTRY,CITY,STREET,EMAIL,PESEL,FIRSTNAME,LASTNAME,null,workerId,null,null,HOUSENR,FLATNR);
    


END DODAJ_PRACOWNIKA_ADMINISTRACYJNEGO;

/
--------------------------------------------------------
--  DDL for Procedure DODAJ_PRACOWNIKA_TECHNICZNEGO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "DODAJ_PRACOWNIKA_TECHNICZNEGO" 
(
  LOGIN IN VARCHAR2 
, PASS IN VARCHAR2 
, FIRSTNAME IN VARCHAR2 
, LASTNAME IN VARCHAR2 
, PESEL IN VARCHAR2 
, PHONE IN VARCHAR2 
, EMAIL IN VARCHAR2 
, COUNTRY IN VARCHAR2 
, CITY IN VARCHAR2 
, STREET IN VARCHAR2 
, HOUSENR IN VARCHAR2 
, FLATNR IN VARCHAR2
, ZAROBKI IN NUMBER
, ID_ADMIN IN NUMBER
) AS 
    workerId NUMBER;
    maxId NUMBER;
    userLogin VARCHAR2(15);
BEGIN
    
    SELECT MAX(ID_PRACOWNIKA) INTO workerId FROM PRACOWNIK_TECHNICZNY;
    INSERT INTO PRACOWNIK_TECHNICZNY VALUES (workerId +1,ID_ADMIN,ZAROBKI);
    SELECT MAX(ID_UZYTKOWNIKA) INTO maxId FROM UZYTKOWNIK;
    INSERT INTO uzytkownik VALUES (maxId+1,LOGIN,PASS,PHONE,COUNTRY,CITY,STREET,EMAIL,PESEL,FIRSTNAME,LASTNAME,null,null,null,workerId,HOUSENR,FLATNR);
    


END DODAJ_PRACOWNIKA_TECHNICZNEGO;

/
--------------------------------------------------------
--  DDL for Procedure KUP_BILET
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "KUP_BILET" (
    typ                 IN VARCHAR2,
    rzad                IN NUMBER,
    id_klienta          IN NUMBER,
    lotnisko_wylotu     IN VARCHAR2,
    lotnisko_przylotu   IN VARCHAR2,
    data_lotu           IN DATE
) AS
    biletid     NUMBER;
    cena        NUMBER;
    idlotu      NUMBER;
    czyzajete   BOOLEAN;
    idmiejsca   NUMBER;
BEGIN
    SELECT
        MAX(id_biletu)
    INTO biletid
    FROM
        bilet;

    IF ( biletid IS NULL ) THEN
        biletid := 1;
    ELSE
        biletid := biletid + 1;
    END IF;

    idlotu := get_id_lotu('KRAKOW','BERLIN',data_lotu);
    SELECT
        cena_biletu
    INTO cena
    FROM
        lot
    WHERE
        lot.id_lotu = idlotu;

    czyzajete := czy_zajete(idlotu,rzad,typ);
    IF ( czyzajete = true ) THEN
        dbms_output.put_line('miejsce zajete');
    ELSE
        dbms_output.put_line('miejsce wolne');
        INSERT INTO bilet VALUES (
            biletid,
            cena,
            rzad,
            typ,
            id_klienta,
            idlotu
        );

        SELECT
            MAX(id_miejsca)
        INTO idmiejsca
        FROM
            zajete_miejsca;

        IF ( idmiejsca IS NULL ) THEN
            idmiejsca := 1;
        ELSE
            idmiejsca := idmiejsca + 1;
        END IF;

        INSERT INTO zajete_miejsca VALUES (
            idmiejsca,
            idlotu,
            rzad,
            typ
        );

    END IF;

END kup_bilet;

/
--------------------------------------------------------
--  DDL for Procedure REJESTRACJA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "REJESTRACJA" 
(
  LOGIN IN VARCHAR2 
, PASS IN VARCHAR2 
, FIRSTNAME IN VARCHAR2 
, LASTNAME IN VARCHAR2 
, PESEL IN VARCHAR2 
, PHONE IN VARCHAR2 
, EMAIL IN VARCHAR2 
, COUNTRY IN VARCHAR2 
, CITY IN VARCHAR2 
, STREET IN VARCHAR2 
, HOUSENR IN VARCHAR2 
, FLATNR IN VARCHAR2 
) AS 
    clientId NUMBER;
    maxId NUMBER;
    userLogin VARCHAR2(15);
BEGIN
    
    SELECT MAX(ID_KLIENTA) INTO clientId FROM KLIENT;
    INSERT INTO KLIENT("ID_KLIENTA") VALUES (clientId +1);
    SELECT MAX(ID_UZYTKOWNIKA) INTO maxId FROM UZYTKOWNIK;
    INSERT INTO uzytkownik VALUES (maxId+1,LOGIN,PASS,PHONE,COUNTRY,CITY,STREET,EMAIL,PESEL,FIRSTNAME,LASTNAME,clientId,null,null,null,HOUSENR,FLATNR);
    


END REJESTRACJA;

/
--------------------------------------------------------
--  DDL for Function CZY_ZAJETE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "CZY_ZAJETE" (
    id_lot   IN NUMBER,
    rz       IN NUMBER,
    typ      IN VARCHAR2
) RETURN BOOLEAN AS
    czyzajete     BOOLEAN;
    iloscmiejsc   NUMBER;
    idmiejsca     NUMBER;
BEGIN
    SELECT
        ilosc_miejsc
    INTO iloscmiejsc
    FROM
        samolot
        NATURAL JOIN lot
    WHERE
        id_lotu LIKE id_lot;

    IF ( rz > iloscmiejsc / 6 ) THEN -- W KAZDYM RZÊDZIE 6 OSÓB 
        czyzajete := true;
    ELSE
    
     BEGIN
        SELECT
            id_miejsca
        INTO idmiejsca
        FROM
            zajete_miejsca
        WHERE
            id_lotu LIKE id_lot
            AND rzad LIKE rz
            AND typ_miejsca LIKE typ;
    exception
    when no_data_found then
        idmiejsca := null;
    END;
    
        IF ( idmiejsca IS NULL ) THEN
            czyzajete := false;
        ELSE
            czyzajete := true;
        END IF;

    END IF;

    RETURN czyzajete;
END czy_zajete;

/
--------------------------------------------------------
--  DDL for Function GET_ID_LOTU
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "GET_ID_LOTU" 
(
  LOTNISKO_WYLOTU IN VARCHAR2
, LOTNISKO_PRZYLOTU IN VARCHAR2
, DATA_LOT IN DATE
 )
 RETURN NUMBER 
AS 
 idLotu NUMBER;
 idLotniskaWylotu NUMBER;
 idLotniskaPrzylotu NUMBER;
BEGIN

    SELECT ID_LOTNISKA INTO idLotniskaWylotu FROM LOTNISKO WHERE LOTNISKO_WYLOTU LIKE MIASTO;
    SELECT ID_LOTNISKA INTO idLotniskaPrzylotu FROM LOTNISKO WHERE LOTNISKO_PRZYLOTU LIKE MIASTO;
    
    SELECT ID_LOTU INTO idLotu from LOT WHERE idLotniskaWylotu LIKE ID_LOTNISKA_WYLOTU AND idLotniskaPrzylotu 
    LIKE ID_LOTNISKA_PRZYLOTU AND DATA_LOTU LIKE DATA_LOT;
    

  RETURN idLotu;
END GET_ID_LOTU;

/
--------------------------------------------------------
--  Constraints for Table PRACOWNIK_ADMINISTRACYJNY
--------------------------------------------------------

  ALTER TABLE "PRACOWNIK_ADMINISTRACYJNY" MODIFY ("ID_PRACOWNIKA" NOT NULL ENABLE);
  ALTER TABLE "PRACOWNIK_ADMINISTRACYJNY" ADD CONSTRAINT "PK_PRAC_ADM" PRIMARY KEY ("ID_PRACOWNIKA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRACOWNIK_ADMINISTRACYJNY" MODIFY ("ID_ADMINISTRATORA" NOT NULL ENABLE);
  ALTER TABLE "PRACOWNIK_ADMINISTRACYJNY" MODIFY ("ZAROBKI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BAGAZ
--------------------------------------------------------

  ALTER TABLE "BAGAZ" ADD CHECK (rodzaj IN ('rejestrowany', 'podreczny')) ENABLE;
  ALTER TABLE "BAGAZ" ADD PRIMARY KEY ("ID_BAGAZU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BAGAZ" MODIFY ("ID_KLIENTA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRACOWNIK_TECHNICZNY
--------------------------------------------------------

  ALTER TABLE "PRACOWNIK_TECHNICZNY" MODIFY ("ID_PRACOWNIKA" NOT NULL ENABLE);
  ALTER TABLE "PRACOWNIK_TECHNICZNY" ADD CONSTRAINT "PK_PRAC_TECH" PRIMARY KEY ("ID_PRACOWNIKA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRACOWNIK_TECHNICZNY" MODIFY ("ID_ADMINISTRATORA" NOT NULL ENABLE);
  ALTER TABLE "PRACOWNIK_TECHNICZNY" MODIFY ("ZAROBKI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NAPRAWA
--------------------------------------------------------

  ALTER TABLE "NAPRAWA" ADD PRIMARY KEY ("ID_NAPRAWY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "NAPRAWA" MODIFY ("TERMIN_ZLECENIA_NAPRAWY" NOT NULL ENABLE);
  ALTER TABLE "NAPRAWA" MODIFY ("TERMIN_UKONCZENIA_NAPRAWY" NOT NULL ENABLE);
  ALTER TABLE "NAPRAWA" MODIFY ("TRESC_ZLECENIA" NOT NULL ENABLE);
  ALTER TABLE "NAPRAWA" MODIFY ("ID_SAMOLOTU" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMINISTRATOR
--------------------------------------------------------

  ALTER TABLE "ADMINISTRATOR" MODIFY ("ID_ADMINISTRATORA" NOT NULL ENABLE);
  ALTER TABLE "ADMINISTRATOR" ADD CONSTRAINT "PK_ADMIN" PRIMARY KEY ("ID_ADMINISTRATORA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table KLIENT
--------------------------------------------------------

  ALTER TABLE "KLIENT" MODIFY ("ID_KLIENTA" NOT NULL ENABLE);
  ALTER TABLE "KLIENT" ADD CONSTRAINT "PK_KLIENT" PRIMARY KEY ("ID_KLIENTA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UZYTKOWNIK
--------------------------------------------------------

  ALTER TABLE "UZYTKOWNIK" ADD CONSTRAINT "UZYTKOWNIK_PK" PRIMARY KEY ("ID_UZYTKOWNIKA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "UZYTKOWNIK" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "UZYTKOWNIK" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "UZYTKOWNIK" MODIFY ("LOGIN" NOT NULL ENABLE);
  ALTER TABLE "UZYTKOWNIK" MODIFY ("HASLO" NOT NULL ENABLE);
  ALTER TABLE "UZYTKOWNIK" MODIFY ("PESEL" NOT NULL ENABLE);
  ALTER TABLE "UZYTKOWNIK" MODIFY ("NR_DOMU" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BILET
--------------------------------------------------------

  ALTER TABLE "BILET" MODIFY ("CENA" NOT NULL ENABLE);
  ALTER TABLE "BILET" MODIFY ("RZAD" NOT NULL ENABLE);
  ALTER TABLE "BILET" ADD CHECK (typ_miejsca IN('okno','srodek','przejscie')) ENABLE;
  ALTER TABLE "BILET" ADD PRIMARY KEY ("ID_BILETU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "BILET" MODIFY ("ID_KLIENTA" NOT NULL ENABLE);
  ALTER TABLE "BILET" MODIFY ("TYP_MIEJSCA" NOT NULL ENABLE);
  ALTER TABLE "BILET" MODIFY ("ID_LOTU" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LOTNISKO
--------------------------------------------------------

  ALTER TABLE "LOTNISKO" MODIFY ("KRAJ" NOT NULL ENABLE);
  ALTER TABLE "LOTNISKO" MODIFY ("MIASTO" NOT NULL ENABLE);
  ALTER TABLE "LOTNISKO" ADD PRIMARY KEY ("ID_LOTNISKA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOT
--------------------------------------------------------

  ALTER TABLE "LOT" ADD CONSTRAINT "ID_LOTU" PRIMARY KEY ("ID_LOTU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "LOT" MODIFY ("ID_LOTNISKA_WYLOTU" NOT NULL ENABLE);
  ALTER TABLE "LOT" MODIFY ("ID_LOTNISKA_PRZYLOTU" NOT NULL ENABLE);
  ALTER TABLE "LOT" MODIFY ("ID_SAMOLOTU" NOT NULL ENABLE);
  ALTER TABLE "LOT" MODIFY ("DATA_LOTU" NOT NULL ENABLE);
  ALTER TABLE "LOT" MODIFY ("CENA_BILETU" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SAMOLOT
--------------------------------------------------------

  ALTER TABLE "SAMOLOT" MODIFY ("NAZWA" NOT NULL ENABLE);
  ALTER TABLE "SAMOLOT" MODIFY ("MODEL" NOT NULL ENABLE);
  ALTER TABLE "SAMOLOT" MODIFY ("ILOSC_MIEJSC" NOT NULL ENABLE);
  ALTER TABLE "SAMOLOT" ADD PRIMARY KEY ("ID_SAMOLOTU")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SAMOLOT" ADD CONSTRAINT "SAMOLOT_CHK1" CHECK (stan_techniczny IN('sprawny','niesprawny')) ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BAGAZ
--------------------------------------------------------

  ALTER TABLE "BAGAZ" ADD CONSTRAINT "FK_KLIENTA_BAGAZ" FOREIGN KEY ("ID_KLIENTA")
	  REFERENCES "KLIENT" ("ID_KLIENTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BILET
--------------------------------------------------------

  ALTER TABLE "BILET" ADD CONSTRAINT "FK_ID_LOTU" FOREIGN KEY ("ID_LOTU")
	  REFERENCES "LOT" ("ID_LOTU") ENABLE;
  ALTER TABLE "BILET" ADD CONSTRAINT "FK_BILET_KLIENT" FOREIGN KEY ("ID_KLIENTA")
	  REFERENCES "KLIENT" ("ID_KLIENTA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOT
--------------------------------------------------------

  ALTER TABLE "LOT" ADD CONSTRAINT "FK_SAMOLOT" FOREIGN KEY ("ID_SAMOLOTU")
	  REFERENCES "SAMOLOT" ("ID_SAMOLOTU") ENABLE;
  ALTER TABLE "LOT" ADD CONSTRAINT "FK_LOT_LOTNISKO_WYL" FOREIGN KEY ("ID_LOTNISKA_WYLOTU")
	  REFERENCES "LOTNISKO" ("ID_LOTNISKA") ENABLE;
  ALTER TABLE "LOT" ADD CONSTRAINT "FK_LOT_LOTNISKO_PRZYL" FOREIGN KEY ("ID_LOTNISKA_PRZYLOTU")
	  REFERENCES "LOTNISKO" ("ID_LOTNISKA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NAPRAWA
--------------------------------------------------------

  ALTER TABLE "NAPRAWA" ADD FOREIGN KEY ("ID_SAMOLOTU")
	  REFERENCES "SAMOLOT" ("ID_SAMOLOTU") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRACOWNIK_ADMINISTRACYJNY
--------------------------------------------------------

  ALTER TABLE "PRACOWNIK_ADMINISTRACYJNY" ADD CONSTRAINT "FK_PRAC" FOREIGN KEY ("ID_ADMINISTRATORA")
	  REFERENCES "ADMINISTRATOR" ("ID_ADMINISTRATORA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRACOWNIK_TECHNICZNY
--------------------------------------------------------

  ALTER TABLE "PRACOWNIK_TECHNICZNY" ADD CONSTRAINT "ID_ADMINISTRATORA" FOREIGN KEY ("ID_ADMINISTRATORA")
	  REFERENCES "ADMINISTRATOR" ("ID_ADMINISTRATORA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UZYTKOWNIK
--------------------------------------------------------

  ALTER TABLE "UZYTKOWNIK" ADD CONSTRAINT "FK_U_KLIENT" FOREIGN KEY ("ID_KLIENTA")
	  REFERENCES "KLIENT" ("ID_KLIENTA") ENABLE;
  ALTER TABLE "UZYTKOWNIK" ADD CONSTRAINT "FK_U_PRAC_ADM" FOREIGN KEY ("ID_PRAC_ADM")
	  REFERENCES "PRACOWNIK_ADMINISTRACYJNY" ("ID_PRACOWNIKA") ENABLE;
  ALTER TABLE "UZYTKOWNIK" ADD CONSTRAINT "FK_U_ADMINISTRATOR" FOREIGN KEY ("ID_ADMINISTRATORA")
	  REFERENCES "ADMINISTRATOR" ("ID_ADMINISTRATORA") ENABLE;
  ALTER TABLE "UZYTKOWNIK" ADD CONSTRAINT "FK_U_PRAC_TECH" FOREIGN KEY ("ID_PRAC_TECH")
	  REFERENCES "PRACOWNIK_TECHNICZNY" ("ID_PRACOWNIKA") ENABLE;
