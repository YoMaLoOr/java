package com.cursogetafe.dixml.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.core.env.Environment;

import javax.sql.DataSource;

@Configuration
@Profile({"desarrollo", "default"})
@PropertySource("classpath:app.properties")
public class A05DesarrolloConfig {

    @Autowired
    Environment prop;

    @Bean("dataSource ")
    public DataSource getDsDesarrollo(){
        BasicDataSource bds = new BasicDataSource();
        bds.setUrl(prop.getProperty("test.bbdd.url"));
        bds.setDriverClassName(prop.getProperty("test.bbdd.driver"));
        bds.setUsername(prop.getProperty("test.bbdd.user"));
        bds.setPassword(prop.getProperty("test.bbdd.psw"));
        return bds;
    }

}
