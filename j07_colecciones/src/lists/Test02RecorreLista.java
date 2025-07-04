package lists;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class Test02RecorreLista {
    public static void main(String[] args) {
        final int cant = 200_000_00;
        long t0, tf;
        
        List<String> al = new ArrayList<>(cant);
        List<String> ll = new LinkedList<>();

        cargaLista(al, cant);
        cargaLista(ll, cant);
        
        System.out.println("Listas cargadas");
        System.out.println(al.size());
        System.out.println(ll.size());

        t0 = System.currentTimeMillis();
        // recorre(al);
        recorreIterator(al);
        tf = System.currentTimeMillis();
        System.out.println("ArrayList ha tardado: " + (tf-t0));

        t0 = System.currentTimeMillis();
        // recorre(ll);
        recorreIterator(ll);
        tf = System.currentTimeMillis();
        System.out.println("LinkedList ha tardado: " + (tf-t0));

    }

    public static void cargaLista(List<String> lista, int cant){
        for (int i = 0; i < cant; i++) {
            lista.add("Objeto " + i);
        }
    }
    
    public static void recorre(List<String> lista){
        for (int i = 0; i < lista.size(); i++) {
            String elemento = lista.get(i);
        }
    }

    public static void recorreIterator(List<String> lista){
        Iterator<String> it = lista.iterator();
        while (it.hasNext()) {
            Object elemento =  it.next();
            
        }
    }

    public static void recorreForEach(List<String> lista) {
        for (String elemento : lista) {
            
        }
    }
}
