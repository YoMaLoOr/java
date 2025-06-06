import java.util.Scanner;

public class Class13CalcularDni {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Seleccione una opción");
        System.out.println("1.- Comprobar NIF");
        System.out.println("2.- Averiguar letra NIF");
        String data = sc.nextLine();
        int option = Integer.parseInt(data);
        String dniChars = "TRWAGMYFPDXBNJZSQVHLCKET";
        if (option == 1){
            System.out.println("Introduzca su NIF (12345678X)");
            String dni = sc.nextLine();
            char dniType = dni.charAt(dni.length() - 1);
            String temp = dni.substring(0, dni.length() - 1);
            int dniNum = Integer.parseInt(temp);
            int resul = (dniNum - (dniNum / 23) * 23);
            char type = dniChars.charAt(resul);
            if (dniType == type){
                System.out.println("Su DNI es correcto");
            }else{
                System.out.println("Su DNI es incorrecto, su letra es " + type);
            }
        } else {
            System.out.println("Introduzca número DNI");
            data = sc.nextLine();
            int dniNum = Integer.parseInt(data);
            int resul = (dniNum - (dniNum / 23) * 23);
            char type = dniChars.charAt(resul);
            System.out.println("Su letra del DNI es " + type);
        }
    }
}
