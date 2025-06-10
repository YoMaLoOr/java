public class Class19Arrays {
    public static void main(String[] args) {
        //VAMOS A DECLARAR UN ARRAY PARA GUARDAR NOMBRES
        String[] nombres = new String[3];
        //PODEMOS ACCEDER A SUS POSICIONES MEDIANTE EL INDICE
        //PODEMOS VISUALIZAR LA LONGITUD
        System.out.println("Longitud del Array: " + nombres.length);
        //nombres[0] = "Lucia";
        nombres[1] = "Adrian";
        nombres[2] = "Diana";
        //nombres[4] = "jajajajaja";
        for (int i = 0; i < nombres.length; i++){
            System.out.println("Nombres: " + i + " = " + nombres[i]);
        }
        //TAMBIEN PODEMOS TENER UN ARRAY INICIALIZADO CON CONTENIDO
        int[] numeros = new int[] {11,14,15,66,55,44,22,88};
        System.out.println("Elementos en Array de int: " + numeros.length);
    }
}