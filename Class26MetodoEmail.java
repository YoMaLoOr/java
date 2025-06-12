
import java.util.Scanner;

public class Class26MetodoEmail {
    public static void main(String[] args) {
        Scanner teclado = new Scanner(System.in);

        System.out.println("Validando un mail");
        System.out.println("Introduzca un email");
        String dato = teclado.nextLine();
        boolean respuesta = 
            validarEmail(dato);
        if (respuesta == true){
            System.out.println("El email está correcto");
        }else{
            System.out.println("Email incorrecto, revise por favor");
        }
    }

    //QUIERO UN METODO PARA SABER SI UN EMAIL ESTA BIEN O MAL
    public static boolean validarEmail(String email){
        if (email.contains("@") == false){
            return false;
        }else if (email.indexOf("@") == 0
        || email.endsWith("@")){
            return false;
        }else if (email.indexOf("@") != email.lastIndexOf("@")){
            return false;
        }else if (email.indexOf(".") == -1){
            return false;
        }else if (email.lastIndexOf(".") < email.indexOf(("@"))){
            return false;
        }else{
            int ultimoPunto = email.lastIndexOf(".");
            String dominio = email.substring(ultimoPunto + 1);
            if (dominio.length() >= 2 && dominio.length() <= 3){
                return true;
            }else{
                return false;
            }
        }
    }
}