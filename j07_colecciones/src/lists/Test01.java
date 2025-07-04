package lists;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;



public class Test01 {
    public static void main(String[] args) {
        List<String> lista01 = new ArrayList<>();
        lista01.add("uno");
        lista01.add("dos");
        lista01.add("tres");
        lista01.add("cuatro");
        lista01.add("cinco");

        for (String elem : lista01) {
            System.out.println(elem);
        }

        List<Integer> lista02 = new LinkedList<>();
        lista02.add(123);
        lista02.add(42);
        lista02.add(254);
        lista02.add(324);
        lista02.add(485);

        for (int elem : lista02) {
            System.out.println(elem);
        }


    }
}
