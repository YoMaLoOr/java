
import java.util.ArrayList;

public class Class21ArrayList {
    public static void main(String[] args) {
        ArrayList<Integer> coleccionNumeros = new ArrayList<Integer>();

        ArrayList<String> coleccion = new ArrayList<String>();
        //AGREGAMOS CUATRO ELEMENTOS y UNO REPETIDO
        coleccion.add("Elemento 1");
        coleccion.add("Elemento 2");
        coleccion.add("Elemento 3");
        coleccion.add("Elemento 1");

        //PROBAMOS A MODIFICAR UN ELEMENTO
        coleccion.set(1, "Nuevo elemento 2");
        //PODEMOS INSERTAR ELEMENTOS
        coleccion.add(1, "Insertado elemento");
        //PODEMOS ELIMINAR ELEMENTOS, SI ENVIAMOS EL OBJETO
        //ELIMINA EL PRIMERO QUE ENCUENTRA EN LA COLECCION
        //coleccion.remove("Elemento 1");
        //ELIMINAR POR INDEX PERMITE MAYOR PRECISION
        //coleccion.remove(4);
        //BUSCAMOS DENTRO DE LA COLECCION
        System.out.println("Primera Posicion Elemento 1: " 
            + coleccion.indexOf("Elemento 1"));
        System.out.println("Ultima posición Elemento 1: "
            + coleccion.lastIndexOf("Elemento 1"));
        System.out.println("Número de elementos: " + coleccion.size());
        //VAMOS A REALIZAR UN BUCLE PARA VISUALIZAR LOS ELEMENTOS 
        //Y COMO SE COMPORTAN A MEDIDA QUE VAMOS TRABAJANDO
        for (int i = 0; i < coleccion.size(); i++){
            //RECUPERAMOS CADA ELEMENTO DE LA COLECCION
            String elemento = coleccion.get(i);
            System.out.println(elemento);
            // coleccion.add("Nuevo elemento");
        }
        //SINTAXIS DE BUCLES POR REFERENCIA
        //for (Tipo variable: CONJUNTO)
        // for (String elemento : coleccion){
        //     System.out.println(elemento);
        // }
        //ELIMINAR TODA LA COLECCION
        coleccion.clear();
        System.out.println("Número de elementos: " + coleccion.size());
    }
}