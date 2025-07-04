package sets;

import java.util.Set;
import java.util.TreeSet;

public class Test02OtroOrden {
    public static void main(String[] args) {
        Set<String> set = new TreeSet<>((o1, o2)->o1.length() - o2.length());
        // Set<String> set = new TreeSet<>(new StringComparatorCantLetras());
        set.add("uno");
        set.add("dos");
        set.add("tres");
        set.add("cuatro");
        set.add("cinco");

        for (String elem : set) {
            System.out.println(elem);
        }
    }
}
