package sets;

import java.util.Set;
import java.util.TreeSet;

import modelo.Cliente;

public class Test01TreeSet {
    public static void main(String[] args) {
        Set<String> set = new TreeSet<>();
        set.add("uno");
        set.add("dos");
        set.add("tres");
        set.add("cuatro");
        set.add("cinco");

        for (String elem : set) {
            System.out.println(elem);
        }

        Set<Integer> setNums = new TreeSet<>();
        setNums.add(123);
        setNums.add(42);
        setNums.add(254);
        setNums.add(324);
        setNums.add(485);

        for (int elem : setNums) {
            System.out.println(elem);
        }

        Cliente c1 = new Cliente(16, "Pedro", "Lopez", "Martinez");
        Cliente c2 = new Cliente(123, "Laura", "Garcia", "Gallardo");
        Cliente c3 = new Cliente(168, "Ana", "Hernandez", "Perez");
        Cliente c4 = new Cliente(514, "Luis", "Jimenez", "Fruto");
        
        Set<Cliente> setClis = new TreeSet<>();
        setClis.add(c1);
        setClis.add(c2);
        setClis.add(c3);
        setClis.add(c4);

        for (Cliente elem : setClis) {
            System.out.println(elem);
        }
    }
}
