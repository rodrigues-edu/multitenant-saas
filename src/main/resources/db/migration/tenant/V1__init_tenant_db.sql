--CREATE SEQUENCE
CREATE SEQUENCE seq_tenant_specific_data
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;


--CREATE TABLE
CREATE TABLE IF NOT EXISTS tenant_specific_data (
   id                bigint NOT NULL DEFAULT nextval('seq_tenant_specific_data'::regclass),
   current_tenant_id bigint DEFAULT NULL,
   sample_data       character varying(255) DEFAULT NULL,
   username          character varying(255) DEFAULT NULL
);

--CREATE PRIMARY KEY
ALTER TABLE tenant_specific_data ADD CONSTRAINT pk_tenant PRIMARY KEY (id);

-- CREATE TABLE IF NOT EXISTS `tenant_specific_data` (
--     `id` bigint(20) NOT NULL AUTO_INCREMENT,
--     `current_tenant_id` bigint(20) DEFAULT NULL,
--     `sample_data` varchar(255) DEFAULT NULL,
--     `username` varchar(255) DEFAULT NULL,
--     PRIMARY KEY (`id`)
--     ) ENGINE=InnoDB  DEFAULT CHARSET=utf8;