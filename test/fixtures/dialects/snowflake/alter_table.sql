ALTER TABLE my_old_table RENAME TO my_new_table;

ALTER TABLE my_existing_table SWAP WITH my_another_table;

ALTER TABLE my_existing_table ADD SEARCH OPTIMIZATION;

ALTER TABLE my_existing_table DROP SEARCH OPTIMIZATION;

ALTER TABLE my_table SET DATA_RETENTION_TIME_IN_DAYS = 30;

ALTER TABLE my_table SET DEFAULT_DDL_COLLATION = 'en-ci';

ALTER TABLE my_table SET COMMENT = 'my table comment';

ALTER TABLE table1 ADD CONSTRAINT constraint1 PRIMARY KEY ( col1 );

ALTER TABLE table1 ADD CONSTRAINT constraint1 PRIMARY KEY ( col1 ) ENFORCED VALIDATE RELY;

ALTER TABLE table1 ADD CONSTRAINT constraint1 PRIMARY KEY ( col1 ) NOT ENFORCED NOVALIDATE NORELY;

ALTER TABLE table1 ADD CONSTRAINT constraint1 UNIQUE ( col1 );

ALTER TABLE table1 ADD CONSTRAINT constraint1 UNIQUE ( col1 ) ENFORCED VALIDATE RELY;

ALTER TABLE table1 ADD CONSTRAINT constraint1 UNIQUE ( col1 ) NOT ENFORCED NOVALIDATE NORELY;

ALTER TABLE table1 ADD CONSTRAINT "constraint1" PRIMARY KEY ( col1 );

ALTER TABLE table1 ADD CONSTRAINT "constraint1" PRIMARY KEY ( col1, col2 );

ALTER TABLE table1 ADD CONSTRAINT constraint1 FOREIGN KEY ( col1 ) REFERENCES table2 ( col2 );

ALTER TABLE table1 ADD CONSTRAINT constraint1 FOREIGN KEY ( col1 ) REFERENCES table2 ( col2 ) ENFORCED VALIDATE RELY;

ALTER TABLE table1 ADD CONSTRAINT constraint1 FOREIGN KEY ( col1 ) REFERENCES table2 ( col2 ) NOT ENFORCED NOVALIDATE NORELY;

ALTER TABLE table1 ADD CONSTRAINT "constraint1" FOREIGN KEY ( col1 ) REFERENCES table2 ( col2 );

ALTER TABLE table1 ADD CONSTRAINT "constraint1" FOREIGN KEY ( col1 ) REFERENCES "schema1"."table1" ("col2");

ALTER TABLE table1 ADD CONSTRAINT "constraint1" FOREIGN KEY ( col1 ) REFERENCES "schema1"."table1" ( col1, col2 );

ALTER TABLE table1 DROP CONSTRAINT constraint1 UNIQUE pk_col, pk_col2;

ALTER TABLE table1 RENAME CONSTRAINT constraint1 TO constraint2;

ALTER TABLE "ADW_TEMP"."FRUIT_PRICE_SAT" ADD CONSTRAINT "FK_2" FOREIGN KEY ("SPECIAL_OFFER_ID") REFERENCES "ADW_TEMP"."OFFER_SAT" ("SPECIAL_OFFER_ID");

ALTER TABLE "my_table" ALTER COLUMN "my_column" SET MASKING POLICY my_masking_policy FORCE;

ALTER TABLE SAMPLE_DB.SAMPLE_SCHEMA.TBL UNSET COMMENT;

ALTER TABLE table1 UNSET COMMENT, DATA_RETENTION_TIME_IN_DAYS;

ALTER TABLE table1 ADD CONSTRAINT constraint1 FOREIGN KEY (address) REFERENCES addresses (address) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE table2 ADD CONSTRAINT constraint2 FOREIGN KEY (address) REFERENCES addresses (address) ON DELETE NO ACTION ON UPDATE SET NULL;

ALTER TABLE table3 ADD CONSTRAINT constraint3 FOREIGN KEY (address) REFERENCES addresses (address) ON DELETE SET DEFAULT;

ALTER TABLE table1 ADD CONSTRAINT constraint1 FOREIGN KEY (address) REFERENCES addresses (address) MATCH FULL;

ALTER TABLE table1 ADD CONSTRAINT constraint1 FOREIGN KEY (address) REFERENCES addresses (address) MATCH SIMPLE;

ALTER TABLE table1 ADD CONSTRAINT constraint1 FOREIGN KEY (address) REFERENCES addresses (address) MATCH PARTIAL;

ALTER TABLE table1 DROP CONSTRAINT my_constraint;
