
import java.util.Scanner;

public class Class08CalcularSalario {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String data, destination, retention;
        int hours, extra, payHour, distance;
        double baseSalary, extraHours, bruteSalary, iva, resul;

        System.out.println("Introduce la cantidad de horas trabajadas: ");
        data = sc.next();
        hours = Integer.parseInt(data);
        System.out.println("Introduce la cantidad de horas extras realizadas: ");
        data = sc.next();
        extra = Integer.parseInt(data);
        System.out.println("Introduce la distancia hasta el trabajo: ");
        data = sc.next();
        distance = Integer.parseInt(data);

        payHour = 24;
        baseSalary = hours*payHour;
        extraHours = payHour*1.5*extra;
        bruteSalary = baseSalary + extraHours;

        if(distance > 100 && distance <= 900)
            destination = "Nacional";
        else if(distance > 900)
            destination = "Internacional";
        else
            destination = "Provincial";

        iva = baseSalary*0.21;
        resul = bruteSalary-iva;

        if(resul > 250 && resul <= 500)
            retention = "20%";
        else if(resul > 500)
            retention = "50%";
        else 
            retention = "0%";

        System.out.println("---------------------------------------------------");
        System.out.println("Horas trabajadas: " + hours);
        System.out.println("Horas extras: " + extra);
        System.out.println("Importe hora: " + payHour);
        System.out.println("Distancia en KM: " + distance);
        System.out.println("Destino: " + destination);
        System.out.println("Retencion: " + retention);
        System.out.println("Salario base: " + baseSalary);
        System.out.println("Salario horas extra:" + extraHours);
        System.out.println("Salario bruto: " + bruteSalary);
        System.out.println("IVA(21%): " + iva);
        System.out.println("---------------------------------------------------");
        System.out.println("Salario neto: " + resul);
        System.out.println("---------------------------------------------------");
    }
}
