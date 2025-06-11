public class Class24Metodos {
    //ESTO ES UN METODO
    //HASTA AHORA, SOLAMENTE ESCRIBIMOS AQUI
    public static void main(String[] args) {
        System.out.println("Ejemplo métodos");
        //LLAMADA AL METODO
        metodoAccion();
        //EN LOS METODOS RETURN, DEBEMOS ALMACENAR
        //LA RESPUESTA EN ALGUNA VARIABLE
        String saludo = metodoSaludo();
        System.out.println(saludo);
        int valor = sumarNumeros(3, 4);
        System.out.println("La suma es " + valor);
        System.out.println("fin de programa");
    }

    //LOS METODOS SIEMPRE VAN A NIVEL DE CLASE
    public static void metodoAccion() {
        //UN METODO DE ACCION EJECUTA CODIGO
        System.out.println("Soy un método de acciones");
    }

    //METODOS RETURN
    public static String metodoSaludo(){
        //ACCIONES DEL METODO
        return "Mi primer método return, que ilusión";
    }

    //LOS METODOS PUEDEN RECIBIR PARAMETROS
    //METODO PARA SUMAR DOS NUMEROS Y QUE DEVUELVA LA SUMA
    public static int sumarNumeros(int num1, int num2){
        int suma = num1 + num2;
        return suma;
    }
}