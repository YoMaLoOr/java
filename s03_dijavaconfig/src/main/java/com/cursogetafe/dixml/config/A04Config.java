package com.cursogetafe.dixml.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

import javax.sql.DataSource;

@Configuration
@ComponentScan({"com.cursogetafe.dixml.test4"})
@PropertySource("classpath:app.properties")
public class A04Config {

    @Autowired
    Environment prop;
    @Bean("dataSourceProduccion")
    public DataSource getDsProduccion(){
        BasicDataSource bds = new BasicDataSource();
        bds.setUrl(prop.getProperty("bbdd.url"));
        bds.setDriverClassName(prop.getProperty("bbdd.driver"));
        bds.setUsername(prop.getProperty("bbdd.user"));
        bds.setPassword(prop.getProperty("bbdd.psw"));
        return bds;
    }
    @Bean("dataSourceDesarrollo")
    public DataSource getDsDesarrollo(){
        BasicDataSource bds = new BasicDataSource();
        bds.setUrl(prop.getProperty("test.bbdd.url"));
        bds.setDriverClassName(prop.getProperty("test.bbdd.driver"));
        bds.setUsername(prop.getProperty("test.bbdd.user"));
        bds.setPassword(prop.getProperty("test.bbdd.psw"));
        return bds;
    }

}
