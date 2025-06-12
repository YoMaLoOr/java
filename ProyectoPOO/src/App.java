import com.objetos.Persona;

public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Probando Persona.");
        Persona guy = new Persona();
        guy.name = "Pedro";
        guy.surname = "Jimenez";
        guy.age = 25;
        System.out.println(guy.name + " " + guy.surname + ", edad: " + guy.age);
    }
}
