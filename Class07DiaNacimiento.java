
import java.util.Scanner;

public class Class07DiaNacimiento {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        String data, bornDay = "";
        int day, month, year, aux, resul;

        System.out.println("Introduce tu dia de nacimiento: ");
        data = sc.next();
        day = Integer.parseInt(data);
        System.out.println("Introduce tu mes de nacimiento: ");
        data = sc.next();
        month = Integer.parseInt(data);
        System.out.println("Introduce tu año de nacimiento: ");
        data = sc.next();
        year = Integer.parseInt(data);

        if(month == 1){
            month = 13;
            year-= 1;
        }else if(month == 2){
            month = 14;
            year--;
        }

        // aux = (month +1)*3/5;
        // resul = day + (month*2) + year + aux;
        // aux = year/4;
        // resul = resul+aux;
        // aux = year/100;
        // resul = resul-aux;
        // aux = year/400;
        // resul = resul+aux+2;

        aux = ((month +1)*3/5)+(year/4)-(year/100)+(year/400)+2;
        resul = day + (month*2) + year + aux;

        aux = resul/7;
        resul = resul - (aux*7);

        switch (resul) {
            case 0 ->
                bornDay = "Sabado";
            case 1 ->
                bornDay = "Domingo";
            case 2 ->
                bornDay = "Lunes";
            case 3 ->
                bornDay = "Martes";
            case 4 ->
                bornDay = "Miercoles";
            case 5 ->
                bornDay = "Jueves";
            case 6 ->
                bornDay = "Viernes";
            default ->
                System.out.println("Hubo un problema.");
        }

        System.out.println("El dia de la semana que naciste fue: " + bornDay);
    }
}
