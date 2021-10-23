package com.example.multitenant.config.database;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

@Configuration
public class TenantDatabaseConfig {

    @Bean(name = "tenantAwareDataSource")
    @Primary
    public DataSource tenantAwareDataSource() {
        return new TenantAwareDataSource();
    }

}
