package com.cursogetafe.agenda.vista;


import com.cursogetafe.agenda.config.BeanFactory;
import com.cursogetafe.agenda.negocio.Agenda;
import com.cursogetafe.agenda.util.Util;

public class MenuPrincipal {
	
	private Agenda agenda;
	
	public MenuPrincipal() {
		agenda = BeanFactory.getAgenda();
		menu();
	}
	
	public void menu() {
		System.out.println("SUPER AGENDA XX 7 PLUS");
		System.out.println("----------------------");
		boolean salir = false;
		int opcion;
		
		do {
			System.out.println("\nMenu Principal");
			System.out.println("1 - Nuevo Contacto");
			System.out.println("2 - Buscar contactos");
			System.out.println("3 - Listar todos");
			System.out.println("4 - Eliminar Contacto");
			System.out.println("5 - Importar contactos");
			System.out.println("9 - Salir");
			System.out.println("Opción: ");
			opcion = Util.leerInt();
			
			switch (opcion) {
			case 1->
				new NuevoContacto(agenda);
			case 2->{
				System.out.println("1 - Buscar por ID");
				System.out.println("2 - Buscar cadena");
				int subopcion = Util.leerInt();
				switch(subopcion){
					case 1->
						new BuscarContacto(agenda);
					case 2 ->
						new BuscarContactoCadena(agenda);
				}
			}
			case 3->
				new ConsultarTodos(agenda);
			case 9->
				salir = true;
			}
		} while(!salir);
	}
}
