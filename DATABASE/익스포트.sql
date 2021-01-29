--------------------------------------------------------
--  파일이 생성됨 - 수요일-1월-27-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type REPCAT$_OBJECT_NULL_VECTOR
--------------------------------------------------------

  CREATE OR REPLACE TYPE "SYSTEM"."REPCAT$_OBJECT_NULL_VECTOR" AS OBJECT
(
  -- type owner, name, hashcode for the type represented by null_vector
  type_owner      VARCHAR2(30),
  type_name       VARCHAR2(30),
  type_hashcode   RAW(17),
  -- null_vector for a particular object instance
  -- ROBJ REVISIT: should only contain the null image, and not version#
  null_vector     RAW(2000)
)

/
--------------------------------------------------------
--  DDL for Sequence SEQ_BNO
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."SEQ_BNO"  MINVALUE 1 MAXVALUE 10000 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_RNO
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."SEQ_RNO"  MINVALUE 1 MAXVALUE 10000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table TBL_ATTACH
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TBL_ATTACH" 
   (	"SAVE_FILE_NAME" VARCHAR2(255 BYTE), 
	"REAL_FILE_NAME" VARCHAR2(255 BYTE), 
	"REG_DATE" DATE, 
	"TBL_BOARD_BNO" NUMBER(11,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SYSTEM"."TBL_ATTACH"."SAVE_FILE_NAME" IS 'UUID로 만들어지고 폴더에 저장되는 파일이름';
   COMMENT ON COLUMN "SYSTEM"."TBL_ATTACH"."REAL_FILE_NAME" IS '한글 파일명';
--------------------------------------------------------
--  DDL for Table TBL_BOARD
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TBL_BOARD" 
   (	"BNO" NUMBER(11,0), 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" CLOB, 
	"WRITER" VARCHAR2(50 BYTE), 
	"REG_DATE" TIMESTAMP (6), 
	"UPDATE_DATE" TIMESTAMP (6), 
	"VIEW_COUNT" NUMBER(11,0), 
	"REPLY_COUNT" NUMBER(11,0), 
	"BOARD_TYPE" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("CONTENT") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "SYSTEM"."TBL_BOARD"."BNO" IS '게시물 일련번호';
   COMMENT ON COLUMN "SYSTEM"."TBL_BOARD"."CONTENT" IS '글 내용';
   COMMENT ON COLUMN "SYSTEM"."TBL_BOARD"."REG_DATE" IS '등록 일시';
   COMMENT ON COLUMN "SYSTEM"."TBL_BOARD"."UPDATE_DATE" IS '수정 날짜';
--------------------------------------------------------
--  DDL for Table TBL_BOARD_TYPE
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TBL_BOARD_TYPE" 
   (	"BOARD_TYPE" VARCHAR2(45 BYTE), 
	"BOARD_NAME" VARCHAR2(45 BYTE), 
	"BOARD_SUN" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_MEMBER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TBL_MEMBER" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"USER_PW" VARCHAR2(255 BYTE), 
	"USER_NAME" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(100 BYTE), 
	"POINT" NUMBER(11,0), 
	"ENABLED" NUMBER(1,0), 
	"LEVELS" VARCHAR2(50 BYTE), 
	"REG_DATE" DATE, 
	"UPDATE_DATE" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TBL_REPLY
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."TBL_REPLY" 
   (	"RNO" NUMBER(11,0), 
	"REPLY_TEXT" VARCHAR2(1000 BYTE), 
	"REPLYER" VARCHAR2(50 BYTE), 
	"REG_DATE" DATE, 
	"UPDATE_DATE" DATE, 
	"TBL_BOARD_BNO" NUMBER(11,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "SYSTEM"."TBL_REPLY"."RNO" IS '댓글 일련번호';
--------------------------------------------------------
--  DDL for View AQ$DEF$_AQCALL
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$DEF$_AQCALL" ("QUEUE", "MSG_ID", "CORR_ID", "MSG_PRIORITY", "MSG_STATE", "DELAY", "DELAY_TIMESTAMP", "EXPIRATION", "ENQ_TIME", "ENQ_TIMESTAMP", "ENQ_USER_ID", "ENQ_TXN_ID", "DEQ_TIME", "DEQ_TIMESTAMP", "DEQ_USER_ID", "DEQ_TXN_ID", "RETRY_COUNT", "EXCEPTION_QUEUE_OWNER", "EXCEPTION_QUEUE", "USER_DATA", "ORIGINAL_QUEUE_NAME", "ORIGINAL_QUEUE_OWNER", "EXPIRATION_REASON") AS 
  SELECT q_name QUEUE, msgid MSG_ID, corrid CORR_ID, priority MSG_PRIORITY, decode(state, 0,   'READY',
                                1,   'WAIT',
                                2,   'PROCESSED',
                                3,   'EXPIRED',
                                10,  'BUFFERED_EXPIRED') MSG_STATE, cast(FROM_TZ(delay, '00:00')
                  at time zone sessiontimezone as date) DELAY, cast(FROM_TZ(delay, '00:00')
               at time zone sessiontimezone as timestamp) DELAY_TIMESTAMP, expiration, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as date) ENQ_TIME, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  ENQ_TIMESTAMP, enq_uid ENQ_USER_ID, enq_tid ENQ_TXN_ID, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as date) DEQ_TIME, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  DEQ_TIMESTAMP, deq_uid DEQ_USER_ID, deq_tid DEQ_TXN_ID, retry_count,  decode (state, 0, exception_qschema, 
                                  1, exception_qschema, 
                                  2, exception_qschema,  
                                  NULL) EXCEPTION_QUEUE_OWNER,  decode (state, 0, exception_queue, 
                                  1, exception_queue, 
                                  2, exception_queue,  
                                  NULL) EXCEPTION_QUEUE,  user_data,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_queue), NULL)
                                ORIGINAL_QUEUE_NAME,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_qschema), NULL)
                                ORIGINAL_QUEUE_OWNER,  decode(state, 3, 
                     decode(deq_time, NULL, 
                       decode(deq_tid, NULL,
                       decode (expiration , NULL , 'MAX_RETRY_EXCEEDED',
                            'TIME_EXPIRATION'),
                              'INVALID_TRANSACTION', NULL,
                              'MAX_RETRY_EXCEEDED'), NULL), NULL) 
                             EXPIRATION_REASON  FROM "DEF$_AQCALL" WHERE state != 7 AND   state != 9 WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View AQ$DEF$_AQERROR
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$DEF$_AQERROR" ("QUEUE", "MSG_ID", "CORR_ID", "MSG_PRIORITY", "MSG_STATE", "DELAY", "DELAY_TIMESTAMP", "EXPIRATION", "ENQ_TIME", "ENQ_TIMESTAMP", "ENQ_USER_ID", "ENQ_TXN_ID", "DEQ_TIME", "DEQ_TIMESTAMP", "DEQ_USER_ID", "DEQ_TXN_ID", "RETRY_COUNT", "EXCEPTION_QUEUE_OWNER", "EXCEPTION_QUEUE", "USER_DATA", "ORIGINAL_QUEUE_NAME", "ORIGINAL_QUEUE_OWNER", "EXPIRATION_REASON") AS 
  SELECT q_name QUEUE, msgid MSG_ID, corrid CORR_ID, priority MSG_PRIORITY, decode(state, 0,   'READY',
                                1,   'WAIT',
                                2,   'PROCESSED',
                                3,   'EXPIRED',
                                10,  'BUFFERED_EXPIRED') MSG_STATE, cast(FROM_TZ(delay, '00:00')
                  at time zone sessiontimezone as date) DELAY, cast(FROM_TZ(delay, '00:00')
               at time zone sessiontimezone as timestamp) DELAY_TIMESTAMP, expiration, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as date) ENQ_TIME, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  ENQ_TIMESTAMP, enq_uid ENQ_USER_ID, enq_tid ENQ_TXN_ID, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as date) DEQ_TIME, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  DEQ_TIMESTAMP, deq_uid DEQ_USER_ID, deq_tid DEQ_TXN_ID, retry_count,  decode (state, 0, exception_qschema, 
                                  1, exception_qschema, 
                                  2, exception_qschema,  
                                  NULL) EXCEPTION_QUEUE_OWNER,  decode (state, 0, exception_queue, 
                                  1, exception_queue, 
                                  2, exception_queue,  
                                  NULL) EXCEPTION_QUEUE,  user_data,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_queue), NULL)
                                ORIGINAL_QUEUE_NAME,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_qschema), NULL)
                                ORIGINAL_QUEUE_OWNER,  decode(state, 3, 
                     decode(deq_time, NULL, 
                       decode(deq_tid, NULL,
                       decode (expiration , NULL , 'MAX_RETRY_EXCEEDED',
                            'TIME_EXPIRATION'),
                              'INVALID_TRANSACTION', NULL,
                              'MAX_RETRY_EXCEEDED'), NULL), NULL) 
                             EXPIRATION_REASON  FROM "DEF$_AQERROR" WHERE state != 7 AND   state != 9 WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View AQ$_DEF$_AQCALL_F
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$_DEF$_AQCALL_F" ("Q_NAME", "ROW_ID", "MSGID", "CORRID", "PRIORITY", "STATE", "DELAY", "EXPIRATION", "ENQ_TIME", "ENQ_UID", "ENQ_TID", "DEQ_TIME", "DEQ_UID", "DEQ_TID", "RETRY_COUNT", "EXCEPTION_QSCHEMA", "EXCEPTION_QUEUE", "CSCN", "DSCN", "CHAIN_NO", "LOCAL_ORDER_NO", "TIME_MANAGER_INFO", "STEP_NO", "USER_DATA", "QUEUE_ID") AS 
  SELECT  /*+ NO_MERGE (qo) USE_NL(qt) */ qt.q_name Q_NAME, qt.rowid ROW_ID, qt.msgid MSGID, qt.corrid CORRID, qt.priority PRIORITY, qt.state STATE, cast(FROM_TZ(qt.delay, '00:00') at time zone sessiontimezone as timestamp) DELAY, qt.expiration EXPIRATION, cast(FROM_TZ(qt.enq_time, '00:00') at time zone sessiontimezone as timestamp) ENQ_TIME, qt.enq_uid ENQ_UID, qt.enq_tid ENQ_TID, cast(FROM_TZ(qt.deq_time, '00:00') at time zone sessiontimezone as timestamp) DEQ_TIME, qt.deq_uid DEQ_UID, qt.deq_tid DEQ_TID, qt.retry_count RETRY_COUNT, qt.exception_qschema EXCEPTION_QSCHEMA, qt.exception_queue EXCEPTION_QUEUE, qt.cscn CSCN, qt.dscn DSCN, qt.chain_no CHAIN_NO, qt.local_order_no LOCAL_ORDER_NO, cast(FROM_TZ(qt.time_manager_info, '00:00') at time zone sessiontimezone as timestamp)   TIME_MANAGER_INFO, qt.step_no STEP_NO, qt.user_data USER_DATA , qo.qid QUEUE_ID  FROM "DEF$_AQCALL" qt, SYS.ALL_INT_DEQUEUE_QUEUES  qo  WHERE qt.q_name = qo.name AND qo.owner = 'SYSTEM' WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View AQ$_DEF$_AQERROR_F
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$_DEF$_AQERROR_F" ("Q_NAME", "ROW_ID", "MSGID", "CORRID", "PRIORITY", "STATE", "DELAY", "EXPIRATION", "ENQ_TIME", "ENQ_UID", "ENQ_TID", "DEQ_TIME", "DEQ_UID", "DEQ_TID", "RETRY_COUNT", "EXCEPTION_QSCHEMA", "EXCEPTION_QUEUE", "CSCN", "DSCN", "CHAIN_NO", "LOCAL_ORDER_NO", "TIME_MANAGER_INFO", "STEP_NO", "USER_DATA", "QUEUE_ID") AS 
  SELECT  /*+ NO_MERGE (qo) USE_NL(qt) */ qt.q_name Q_NAME, qt.rowid ROW_ID, qt.msgid MSGID, qt.corrid CORRID, qt.priority PRIORITY, qt.state STATE, cast(FROM_TZ(qt.delay, '00:00') at time zone sessiontimezone as timestamp) DELAY, qt.expiration EXPIRATION, cast(FROM_TZ(qt.enq_time, '00:00') at time zone sessiontimezone as timestamp) ENQ_TIME, qt.enq_uid ENQ_UID, qt.enq_tid ENQ_TID, cast(FROM_TZ(qt.deq_time, '00:00') at time zone sessiontimezone as timestamp) DEQ_TIME, qt.deq_uid DEQ_UID, qt.deq_tid DEQ_TID, qt.retry_count RETRY_COUNT, qt.exception_qschema EXCEPTION_QSCHEMA, qt.exception_queue EXCEPTION_QUEUE, qt.cscn CSCN, qt.dscn DSCN, qt.chain_no CHAIN_NO, qt.local_order_no LOCAL_ORDER_NO, cast(FROM_TZ(qt.time_manager_info, '00:00') at time zone sessiontimezone as timestamp)   TIME_MANAGER_INFO, qt.step_no STEP_NO, qt.user_data USER_DATA , qo.qid QUEUE_ID  FROM "DEF$_AQERROR" qt, SYS.ALL_INT_DEQUEUE_QUEUES  qo  WHERE qt.q_name = qo.name AND qo.owner = 'SYSTEM' WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View MVIEW_EVALUATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_EVALUATIONS" ("RUNID", "MVIEW_OWNER", "MVIEW_NAME", "RANK", "STORAGE_IN_BYTES", "FREQUENCY", "CUMULATIVE_BENEFIT", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  summary_owner AS mview_owner,
  summary_name AS mview_name,
  rank# as rank,
  storage_in_bytes,
  frequency,
  cumulative_benefit,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 1
order by t1.rank#;

   COMMENT ON TABLE "SYSTEM"."MVIEW_EVALUATIONS"  IS 'This view gives DBA access to summary evaluation output'
;
--------------------------------------------------------
--  DDL for View MVIEW_EXCEPTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_EXCEPTIONS" ("RUNID", "OWNER", "TABLE_NAME", "DIMENSION_NAME", "RELATIONSHIP", "BAD_ROWID") AS 
  select
  t1.runid# as runid,
  owner,
  table_name,
  dimension_name,
  relationship,
  bad_rowid
from SYSTEM.MVIEW$_ADV_EXCEPTIONS t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_EXCEPTIONS"  IS 'This view gives DBA access to dimension validation results'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_FILTER" ("FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filter a, system.mview$_adv_log b, ALL_USERS u
   WHERE a.filterid# = b.runid#
   AND b.uname = u.username
   AND u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTER"  IS 'Workload filter records'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTERINSTANCE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_FILTERINSTANCE" ("RUNID", "FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.runid# as runid,
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filterinstance a;

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTERINSTANCE"  IS 'Workload filter instance records'
;
--------------------------------------------------------
--  DDL for View MVIEW_LOG
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_LOG" ("ID", "FILTERID", "RUN_BEGIN", "RUN_END", "TYPE", "STATUS", "MESSAGE", "COMPLETED", "TOTAL", "ERROR_CODE") AS 
  select
      m.runid# as id,
      m.filterid# as filterid,
      m.run_begin,
      m.run_end,
      decode(m.run_type,1,'EVALUATE',2,'EVALUATE_W',3,'RECOMMEND',
                      4,'RECOMMEND_W',5,'VALIDATE',6,'WORKLOAD',
                      7,'FILTER','UNKNOWN') AS type,
      decode(m.status,0,'UNUSED',1,'CANCELLED',2,'IN_PROGRESS',3,'COMPLETED',
                    4,'ERROR','UNKNOWN') AS status,
      m.message,
      m.completed,
      m.total,
      m.error_code
   from system.mview$_adv_log m, all_users u
   where m.uname = u.username
   and   u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_LOG"  IS 'Advisor session log'
;
--------------------------------------------------------
--  DDL for View MVIEW_RECOMMENDATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_RECOMMENDATIONS" ("RUNID", "ALL_TABLES", "FACT_TABLES", "GROUPING_LEVELS", "QUERY_TEXT", "RECOMMENDATION_NUMBER", "RECOMMENDED_ACTION", "MVIEW_OWNER", "MVIEW_NAME", "STORAGE_IN_BYTES", "PCT_PERFORMANCE_GAIN", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  t1.from_clause as all_tables,
  fact_tables,
  grouping_levels,
  query_text,
  rank# as recommendation_number,
  action_type as recommended_action,
  summary_owner as mview_owner,
  summary_name as mview_name,
  storage_in_bytes,
  pct_performance_gain,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 0
order by t1.rank#;

   COMMENT ON TABLE "SYSTEM"."MVIEW_RECOMMENDATIONS"  IS 'This view gives DBA access to summary recommendations'
;
--------------------------------------------------------
--  DDL for View MVIEW_WORKLOAD
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_WORKLOAD" ("WORKLOADID", "IMPORT_TIME", "QUERYID", "APPLICATION", "CARDINALITY", "RESULTSIZE", "LASTUSE", "FREQUENCY", "OWNER", "PRIORITY", "QUERY", "RESPONSETIME") AS 
  select
  a.collectionid# as workloadid,
  a.collecttime as import_time,
  a.queryid# as queryid,
  a.application,
  a.cardinality,
  a.resultsize,
  a.qdate as lastuse,
  a.frequency,
  a.uname as owner,
  a.priority,
  a.sql_text as query,
  a.exec_time as responsetime
from SYSTEM.MVIEW$_ADV_WORKLOAD A, SYSTEM.MVIEW$_ADV_LOG B, ALL_USERS D
WHERE a.collectionid# = b.runid#
AND b.uname = d.username
AND d.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_WORKLOAD"  IS 'This view gives DBA access to shared workload'
;
--------------------------------------------------------
--  DDL for View PRODUCT_PRIVS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."PRODUCT_PRIVS" ("PRODUCT", "USERID", "ATTRIBUTE", "SCOPE", "NUMERIC_VALUE", "CHAR_VALUE", "DATE_VALUE", "LONG_VALUE") AS 
  SELECT PRODUCT, USERID, ATTRIBUTE, SCOPE,
         NUMERIC_VALUE, CHAR_VALUE, DATE_VALUE, LONG_VALUE
  FROM SQLPLUS_PRODUCT_PROFILE
  WHERE USERID = 'PUBLIC' OR USER LIKE USERID
;
REM INSERTING into SYSTEM.TBL_ATTACH
SET DEFINE OFF;
REM INSERTING into SYSTEM.TBL_BOARD
SET DEFINE OFF;
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (1,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:51.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:51.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (2,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (3,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (4,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (5,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (6,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (7,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (8,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (9,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (10,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (11,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (12,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (13,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (14,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (15,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (16,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (17,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (18,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (19,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (20,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (21,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (22,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (23,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (24,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (25,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (26,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (27,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (28,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (29,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (30,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (31,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (32,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (33,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (34,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (35,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (36,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (37,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (38,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (39,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (40,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (41,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (42,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (43,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (44,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (45,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (46,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (47,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (48,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (49,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
Insert into SYSTEM.TBL_BOARD (BNO,TITLE,WRITER,REG_DATE,UPDATE_DATE,VIEW_COUNT,REPLY_COUNT,BOARD_TYPE) values (50,'게시물테스트','관리자',to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/01/27 14:55:52.000000000','RR/MM/DD HH24:MI:SSXFF'),null,null,'notice');
REM INSERTING into SYSTEM.TBL_BOARD_TYPE
SET DEFINE OFF;
REM INSERTING into SYSTEM.TBL_MEMBER
SET DEFINE OFF;
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('ADMIN','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_ADMIN',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_1','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_2','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_3','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_4','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_5','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_6','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_7','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_8','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_9','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_10','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_11','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_12','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_13','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_14','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_15','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_16','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_17','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_18','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_19','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_20','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_21','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_22','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_23','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_24','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_25','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_26','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_27','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_28','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_29','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_30','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_31','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_32','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_33','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_34','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_35','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_36','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_37','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_38','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_39','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_40','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_41','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_42','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_43','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_44','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_45','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_46','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_47','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_48','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_49','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_50','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_51','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_52','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_53','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_54','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_55','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_56','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_57','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_58','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_59','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_60','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_61','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_62','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_63','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_64','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_65','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_66','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_67','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_68','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_69','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_70','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_71','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_72','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_73','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_74','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_75','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_76','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_77','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_78','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_79','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_80','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_81','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_82','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_83','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_84','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_85','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_86','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_87','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_88','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_89','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_90','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_91','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_92','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_93','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_94','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_95','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_96','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_97','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_98','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
Insert into SYSTEM.TBL_MEMBER (USER_ID,USER_PW,USER_NAME,EMAIL,POINT,ENABLED,LEVELS,REG_DATE,UPDATE_DATE) values ('user_99','$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO','관리자',null,null,1,'ROLE_USER',to_date('21/01/27','RR/MM/DD'),to_date('21/01/27','RR/MM/DD'));
REM INSERTING into SYSTEM.TBL_REPLY
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index BNO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."BNO_PK" ON "SYSTEM"."TBL_BOARD" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TBL_ATTACH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."TBL_ATTACH_PK" ON "SYSTEM"."TBL_ATTACH" ("SAVE_FILE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TBL_BOARD_TYPE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."TBL_BOARD_TYPE_PK" ON "SYSTEM"."TBL_BOARD_TYPE" ("BOARD_TYPE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TBL_MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."TBL_MEMBER_PK" ON "SYSTEM"."TBL_MEMBER" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index TBL_REPLY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."TBL_REPLY_PK" ON "SYSTEM"."TBL_REPLY" ("RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Procedure PROC_BOARD_INSERT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."PROC_BOARD_INSERT" 
(
  P_BOARD_TYPE IN VARCHAR2 
, P_COUNT IN NUMBER 
) AS 
BEGIN
  -- 실행방법;쿼리에디터에서 CALL PROC_BOARD_INSERT('notice',50);
  FOR i IN 1..P_COUNT LOOP
        INSERT INTO TBL_BOARD
        (bno,board_type,title,content,writer,reg_date,update_date) 
        VALUES
        (SEQ_BNO.nextval,P_BOARD_TYPE,'게시물테스트','게시물내용테스트','관리자',SYSDATE,SYSDATE);
      END LOOP;
      commit;
END PROC_BOARD_INSERT;

/
--------------------------------------------------------
--  DDL for Procedure PROC_MEMBER_INSERT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."PROC_MEMBER_INSERT" 
(
  P_COUNT IN NUMBER 
, P_ROLE IN VARCHAR2 
) AS 
V_USER varchar2(20):='user';
BEGIN
  if(P_ROLE='ROLE_ADMIN') then
    V_USER:='admin';
  end if;
  -- DELETE FROM TBL_MEMBER WHERE 1 = 1;
  -- 실행방법: CALL PROC_MEMBER_INSERT(50,'ROLE_ADMIN');
  FOR i IN 1..P_COUNT LOOP
        INSERT INTO TBL_MEMBER
        (user_id,user_pw,user_name,enabled,levels,reg_date,update_date)
        VALUES
        (concat(concat(V_USER,'_'),i) ,'$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO'
        ,'관리자',1,P_ROLE,sysdate,sysdate);
      END LOOP;
      commit;
END PROC_MEMBER_INSERT;

/
--------------------------------------------------------
--  DDL for Package DBMS_REPCAT_AUTH
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "SYSTEM"."DBMS_REPCAT_AUTH" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
9
bf d6
0cfc6e4Sm6mfaMYwsbW2JygBepcwg/BKmJ4VZy/pO06UXsVUMejsissTcGWYR4qeK4TPqfDK
q7UPH+SmKP6nW9zmxMZnuK1VDzM0Iv9O4E4SvvsnHWn+EPF9hR+oBFe3fEro6RQ5R5Ejd1nr
e+fAK010dExf76gg/c6ZB3YxGPHDOqkGI4lV6HNsd57gKLwTd0bxan5UwJriIpt7Vjc=

/
--------------------------------------------------------
--  DDL for Package Body DBMS_REPCAT_AUTH
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "SYSTEM"."DBMS_REPCAT_AUTH" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
b
b9d 39c
PBMGkNCh5NDAdLezCHsLvZaVi/swg5UrNSCDfI4Zvp0VB6GpRld+By6E2nVdlFHT2g2kK9zM
8jSnsuee7mkmJD+W3Mo36HQvUfOe7jH5vP7tu1i0jDykzR0pUhJZUcY6xVrSwNPoNVPcT72N
eHhGwyRBj2+0vKbgTmcZKBMJzETRfOl2YGDDVB3FvKBSixMMqfWSX8uh3wPGOi8W9vOASC3z
0UvPqL7KR78SykUEoBCxpMGmE8pgElC/dagmVpIIt7QA6sneMlNb2OO/1zTN44ACRsm+2JAo
zD41TcuGaNUqDYNDRbPEKzeRZeXxrx1UvOWsYTNaO6icaV/NrtZbmXpDuGA/sqnz4jnKFK8S
0VC+Yjh2iJEV5edD2+8pyMgx44NVDiAQ+sjjDkpGc0IxXrm/v52yduhnj/xnkualIm/RyAv0
Q/YzRAHy7NvyavbajIvCFoZWpbO3Jw8NwkoU25ysfgvXZJrw4vPjh4hHR4Mpto6jFMM+dZPW
3N9HL971bTBgyAL0BjASEFXe83D+IoBYX0VQVk5+t7p7iUsmfyK5t+cECNpNOL6UaACcsAYB
Le+yLOAqFHSvCXlWcECxG7wXjAA2/XmBwvKBNLcggXKVp3i9cNzab0Mq9qSAcIYgRFxRdAOe
sTDZNOx6HkJTbCRKCMiJzgjQQW476DlOZD+9Gwh+AA/Y3PIDOfyhlvXT6HsjW33mASJUuORB
la5Jb3rB4syO6QO2a5vSHu26Gwib2EflS8bqC1hZhpHsvM+mAaWJ2x72JyrPe8V7Ohjbre49
gRsjAtspIYfP5958sSnHdkz32nGAXnrEY95lEHGwkuXLlj9y6I21aAyd3/lJkuEAEBxzZVnm
IaNJBwl8u33+SqGLZzILy1QxmA+pF8yUaQ+yRU/5+3n1mY4=

/
--------------------------------------------------------
--  DDL for Synonymn CATALOG
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."CATALOG" FOR "SYS"."CATALOG";
--------------------------------------------------------
--  DDL for Synonymn COL
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."COL" FOR "SYS"."COL";
--------------------------------------------------------
--  DDL for Synonymn PRODUCT_USER_PROFILE
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."PRODUCT_USER_PROFILE" FOR "SYSTEM"."SQLPLUS_PRODUCT_PROFILE";
--------------------------------------------------------
--  DDL for Synonymn PUBLICSYN
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."PUBLICSYN" FOR "SYS"."PUBLICSYN";
--------------------------------------------------------
--  DDL for Synonymn SYSCATALOG
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."SYSCATALOG" FOR "SYS"."SYSCATALOG";
--------------------------------------------------------
--  DDL for Synonymn SYSFILES
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."SYSFILES" FOR "SYS"."SYSFILES";
--------------------------------------------------------
--  DDL for Synonymn TAB
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."TAB" FOR "SYS"."TAB";
--------------------------------------------------------
--  DDL for Synonymn TABQUOTAS
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."TABQUOTAS" FOR "SYS"."TABQUOTAS";
--------------------------------------------------------
--  DDL for Queue DEF$_AQERROR
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE(
     Queue_name          => 'SYSTEM.DEF$_AQERROR',
     Queue_table         => 'SYSTEM.DEF$_AQERROR',
     Queue_type          =>  0,
     Max_retries         =>  5,
     Retry_delay         =>  0,
     dependency_tracking =>  TRUE,
     comment             => 'Error Queue for Deferred RPCs');
  END;
/
--------------------------------------------------------
--  DDL for Queue DEF$_AQCALL
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE(
     Queue_name          => 'SYSTEM.DEF$_AQCALL',
     Queue_table         => 'SYSTEM.DEF$_AQCALL',
     Queue_type          =>  0,
     Max_retries         =>  5,
     Retry_delay         =>  0,
     dependency_tracking =>  TRUE,
     comment             => 'Deferred RPC Queue');
  END;
/
--------------------------------------------------------
--  DDL for Queue Table DEF$_AQCALL
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE_TABLE(
     Queue_table        => '"SYSTEM"."DEF$_AQCALL"',
     Queue_payload_type => 'VARIANT',
     storage_clause     => 'PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 TABLESPACE SYSTEM',
     Sort_list          => 'ENQ_TIME',
     Compatible         => '8.0.3');
  END;
/
--------------------------------------------------------
--  DDL for Queue Table DEF$_AQERROR
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE_TABLE(
     Queue_table        => '"SYSTEM"."DEF$_AQERROR"',
     Queue_payload_type => 'VARIANT',
     storage_clause     => 'PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 TABLESPACE SYSTEM',
     Sort_list          => 'ENQ_TIME',
     Compatible         => '8.0.3');
  END;
/
--------------------------------------------------------
--  Constraints for Table TBL_ATTACH
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TBL_ATTACH" ADD CONSTRAINT "TBL_ATTACH_PK" PRIMARY KEY ("SAVE_FILE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."TBL_ATTACH" MODIFY ("SAVE_FILE_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_BOARD
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TBL_BOARD" MODIFY ("BOARD_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."TBL_BOARD" ADD CONSTRAINT "TBL_BOARD" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."TBL_BOARD" MODIFY ("BNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_BOARD_TYPE
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TBL_BOARD_TYPE" ADD CONSTRAINT "TBL_BOARD_TYPE_PK" PRIMARY KEY ("BOARD_TYPE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."TBL_BOARD_TYPE" MODIFY ("BOARD_TYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_MEMBER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TBL_MEMBER" ADD CONSTRAINT "TBL_MEMBER_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."TBL_MEMBER" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TBL_REPLY
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TBL_REPLY" ADD CONSTRAINT "TBL_REPLY_PK" PRIMARY KEY ("RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."TBL_REPLY" MODIFY ("RNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table TBL_ATTACH
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TBL_ATTACH" ADD CONSTRAINT "TBL_ATTACH_TBL_BOARD_FK" FOREIGN KEY ("TBL_BOARD_BNO")
	  REFERENCES "SYSTEM"."TBL_BOARD" ("BNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TBL_REPLY
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."TBL_REPLY" ADD CONSTRAINT "TBL_REPLY_TBL_BOARD_FK" FOREIGN KEY ("TBL_BOARD_BNO")
	  REFERENCES "SYSTEM"."TBL_BOARD" ("BNO") ENABLE;
