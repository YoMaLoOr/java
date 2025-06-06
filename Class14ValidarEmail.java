
import java.util.Scanner;

public class Class14ValidarEmail {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduce tu email: ");
        String data = sc.nextLine();

        if(data.contains("@") == false || data.contains(".") == false){
            System.out.println("El email introducido no es correcto. No hay \"@\" o \".\"");
        }else{
            if(data.startsWith("@") == true || data.endsWith("@") == true){
                System.out.println("El email introducido no es correcto. El formato no es correcto");
            }else{
                if(data.indexOf("@") != data.lastIndexOf("@")){
                    System.out.println("El email introducido no es correcto. Hay demasiados \"@\"");
                }else{
                    if(data.indexOf("@") > data.lastIndexOf(".")){
                        System.out.println("El email introducido no es correcto. No hay dominio.");
                    }else{
                        if((data.length() - data.lastIndexOf("."))<3 || (data.length() - data.lastIndexOf("."))>4){
                            System.out.println("El email introducido no es correcto. El dominio no es correcto.");
                            System.out.println(data.length() - data.lastIndexOf("."));
                        }else{
                            System.out.println("El email introducido si es correcto");
                        }
                    }
                }
            }
        }
    }
}
