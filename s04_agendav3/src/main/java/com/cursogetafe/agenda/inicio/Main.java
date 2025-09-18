package com.cursogetafe.agenda.inicio;

import com.cursogetafe.agenda.config.Config;
import com.cursogetafe.agenda.vista.MenuPrincipal;
import com.cursogetafe.agenda.vista.swing.VInicial;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {
    public static void main(String[] args) {
        new AnnotationConfigApplicationContext(Config.class);
    }
}