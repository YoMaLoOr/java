package com.cursogetafe.dixml;

import com.cursogetafe.dixml.business.Negocio;
import com.cursogetafe.dixml.config.A02Config;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Test02 {
	public static void main(String[] args) {
		BeanFactory ctx = new AnnotationConfigApplicationContext(A02Config.class);
		
		Negocio neg = ctx.getBean("negocio", Negocio.class);

		System.out.println(neg.proceso(78));


	}
}
