WHENEVER OSERROR EXIT 1
WHENEVER SQLERROR EXIT 2

SET SERVEROUTPUT ON

CREATE TABLESPACE &1
DATAFILE '&3'
SIZE 1M AUTOEXTEND ON NEXT 10M MAXSIZE 51M;

CREATE USER &1 IDENTIFIED BY &2 DEFAULT TABLESPACE &1;
GRANT CONNECT TO &1;
GRANT RESOURCE TO &1;
--GRANT SELECT_CATALOG_ROLE TO &1;
GRANT EXP_FULL_DATABASE TO &1;

EXIT 0