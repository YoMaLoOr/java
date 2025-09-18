package com.cursogetafe.agenda.config;

import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.core.env.Environment;

import javax.sql.DataSource;

@Configuration
@ComponentScan("com.cursogetafe.agenda")
@PropertySource("classpath:app.properties")
public class Config {

    @Autowired
    Environment prop;

    @Bean("dataSource")
    @Profile("jdbc")
    public DataSource getDsProduccion(){
        BasicDataSource bds = new BasicDataSource();
        bds.setUrl(prop.getProperty("bbdd.url"));
        bds.setDriverClassName(prop.getProperty("bbdd.driver"));
        bds.setUsername(prop.getProperty("bbdd.user"));
        bds.setPassword(prop.getProperty("bbdd.psw"));
        return bds;
    }

    @Bean("emf")
    @Profile({"jpa", "default"})
    public EntityManagerFactory getEmf(){
        return Persistence.createEntityManagerFactory("agendav3");
    }
}
