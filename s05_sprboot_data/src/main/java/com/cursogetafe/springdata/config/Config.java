package com.cursogetafe.springdata.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@EnableJpaRepositories("com.cursogetafe.springdata.persistencia")
public class Config {
}
