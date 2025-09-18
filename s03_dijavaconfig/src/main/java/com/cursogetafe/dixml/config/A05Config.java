package com.cursogetafe.dixml.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.core.env.Environment;

import javax.sql.DataSource;

@Configuration
@ComponentScan({"com.cursogetafe.dixml.test5"})
@Import({A05DesarrolloConfig.class, A05ProduccionConfig.class})
public class A05Config {


}
