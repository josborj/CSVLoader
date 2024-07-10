CREATE SCHEMA mydw_db;
CREATE SCHEMA mydw_etl;

CREATE TABLE mydw_db.employee_category_cd (
	employee_category_cd varchar(20) NOT NULL,
	employee_category_desc varchar(100) NOT NULL,
	CONSTRAINT employee_category_cd_pk PRIMARY KEY (employee_category_cd));

CREATE TABLE mydw_db.employee_type_cd (
	employee_type_cd varchar(50) NOT NULL,
	employee_type_desc varchar(100) NOT NULL,
	employee_category_cd varchar(20) NOT NULL,
	CONSTRAINT employee_type_cd_pk PRIMARY KEY (employee_type_cd));

CREATE TABLE mydw_etl.file_registry_log (
	item_key varchar(1024) NOT NULL,
	file_type_cd bpchar(5) NOT NULL,
	file_registry_cd bpchar(6) NOT NULL,
	log_ts timestamp NOT NULL,
	status_cd bpchar(6) NOT NULL,
	message varchar(1024) NULL,
	update_ts timestamp NOT NULL,
	CONSTRAINT file_registry_logs_pk PRIMARY KEY (item_key, log_ts));

CREATE TABLE mydw_etl.stg_employee_category_cd (
	employee_category_cd varchar(20) NOT NULL,
	employee_category_desc varchar(100) NOT NULL);

CREATE TABLE mydw_etl.stg_employee_type_cd (
	employee_type_cd varchar(50) NOT NULL,
	employee_type_desc varchar(100) NOT NULL,
	employee_category_cd varchar(20) NOT NULL);