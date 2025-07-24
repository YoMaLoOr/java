package com.cursogetafe.agenda.vista;

import java.util.Scanner;
import java.util.Set;

import com.cursogetafe.agenda.modelo.Contacto;
import com.cursogetafe.agenda.negocio.Agenda;

public class BuscarContactoCadena {
    Agenda agenda;
	
	public BuscarContactoCadena(Agenda agenda) {
		this.agenda = agenda;
		init();
	}
	
	private void init() {
        Scanner sc = new Scanner(System.in);
        String buscado = sc.nextLine();
		Set<Contacto> todos = agenda.buscarContactoPorNombre(buscado);
		
		System.out.println("\nTODOS LOS CONTACTOS");
		for (Contacto contacto : todos) {
			System.out.println(contacto.getIdContacto() + "\t" + contacto.getNombre() + "\t" + contacto.getApellidos() + 
					"\t" + contacto.getApodo() + "\t" + contacto.getTelefonos() + "\t" + contacto.getCorreos());
		}
	}
}
