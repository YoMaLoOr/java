
import java.util.Scanner;

public class Class09Bucles {
    public static void main(String[] args) {
        //bucles contador (for)
        //Debemos indicar un inicio, un final (while), un incremento
        //La variable contador se declara dentro del bucle y 
        //solamente se puede utilizar dentro de dicho bucle
        // for (int i = 1; i <= 5; i++){
        //     System.out.println("For: " + i);
        // }
        // //Podemos tener un incremento distinto
        // //de 3 en 3
        // for (int i = 1; i <= 10; i+=3){
        //     System.out.println("Tres en tres " + i);
        // }
        // //Podemos hacer que el bucle sea inverso
        // for (int i = 7; i > 0; i--){
        //     System.out.println("Inverso " + i);
        // }
        // //Bucles de condición
        // //Necesitan una condición para salir
        // //bucles infinitos
        // //Necesitamos una variable de salida del bucle
        // int contador = 1;
        // while (contador <= 5) {
        //     System.out.println("While: " + contador);
        //     //Debemos hacer "algo" para que la variable
        //     //del bucle cambie y llegue a la condición de salida
        //     contador++;
        // }

        //Necesito mostrar los 20 primeros números pares
        // for (int i = 1; i <= 20; i++){
        //     //Preguntamos si un numero es par
        //     //Se utiliza el operador del resto: %
        //     if (i % 2 == 0){
        //         System.out.println("Par: " + i);
        //     }
        // }

        //Vamos a pedir al usuario textos hasta que escriba stop
        Scanner teclado = new Scanner(System.in);
        String dato = "";
        //Java en sus String no compara con el operador == ni !=
        //Estoy comparando objetos y con String debo comparar el valor 
        //del objeto
        //se utiliza el método equals() de la clase String
        // if (dato.equals("")){
        //     System.out.println("Texto vacio!!!");
        // }else{
        //     System.out.println("Contenido");
        // }
        while (dato.equals("stop") == false){
            System.out.println("Dime algo bonito (stop para salir)");
            dato = teclado.nextLine();
        }
    }
}
