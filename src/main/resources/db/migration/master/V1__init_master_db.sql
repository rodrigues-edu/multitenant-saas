--CREATE TABLE
CREATE TABLE IF NOT EXISTS tenant (
    tenant_id     bigint NOT NULL,
    database_name character varying(255) DEFAULT NULL,
    enabled       boolean  NOT NULL,
    tenant_name   character varying(255) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS user_tenant
(
    user_name   character varying(255) NOT NULL,
    enabled     boolean DEFAULT NULL,
    tenant_id   bigint NULL
);


--CREATE PRIMARY KEY
ALTER TABLE tenant ADD CONSTRAINT pk_tenant PRIMARY KEY (tenant_id);
ALTER TABLE user_tenant ADD CONSTRAINT pk_user_tenant PRIMARY KEY (user_name);


--CREATE UNIQUE CONSTRAINT
ALTER TABLE tenant ADD CONSTRAINT uk_tenant_001 UNIQUE (database_name);
ALTER TABLE tenant ADD CONSTRAINT uk_tenant_002 UNIQUE (tenant_name);


--CREATE FOREIGN KEY CONSTRAINT
ALTER TABLE tenant
    ADD CONSTRAINT fk_user_tenant_001
        FOREIGN KEY (tenant_id) REFERENCES tenant (tenant_id);



-- CREATE TABLE IF NOT EXISTS `tenant` (
--     `tenant_id` bigint(20) NOT NULL,
--     `database_name` varchar(255) DEFAULT NULL,
--     `enabled` bit(1) DEFAULT NULL,
--     `tenant_name` varchar(255) DEFAULT NULL,
--     PRIMARY KEY (`tenant_id`),
--     UNIQUE KEY `UK_database_name` (`database_name`),
--     UNIQUE KEY `UK_tenant_name` (`tenant_name`)
--     ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- CREATE TABLE IF NOT EXISTS `user_tenant` (
--     `user_name` varchar(255) NOT NULL,
--     `enabled` bit(1) DEFAULT NULL,
--     `tenant_id` bigint(20) NOT NULL,
--     PRIMARY KEY (`user_name`),
--     KEY `FK_tenant_id` (`tenant_id`)
--     ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

