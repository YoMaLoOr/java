import com.objetos.Persona;

public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Probando la clase Persona");
        try {
            //CUANDO HABLAMOS DE CLASES, NECESITAMOS OBJETOS PARA 
            //TRABAJAR CON DICHAS CLASES
            //INSTANCIAMOS EL OBJETO PERSONA
            Persona personaje = new Persona();
            //YA PODEMOS UTILIZAR LA PERSONA Y SUS PROPIEDADES
            personaje.setNombre("Jon");
            personaje.setApellidos("Nieve");
            personaje.setEdad(29);
            System.out.println(personaje.getNombre() + " "
            + personaje.getApellidos() + ", Edad: " + personaje.getEdad()); 
            personaje.setGenero(Persona.tipoGenero.MASCULINO);
            System.out.println("Género: " + personaje.getGenero());
            System.out.println(personaje.getNombreCompleto());
            System.out.println(personaje.getNombreCompleto(true));
            System.out.println(personaje.getNombreCompleto(19));
            System.out.println("Dni del personaje: ");
            personaje.setDni(12345678);
            System.out.println("Letra del dni: " + personaje.getLetrasnif());
        } catch (Exception e) {
            //NUNCA DEJAREMOS UN CATCH VACIO
            System.out.println("Error: " + e.getMessage());
        }
    }
}
