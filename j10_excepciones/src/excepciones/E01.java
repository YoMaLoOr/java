package excepciones;

public class E01 {
    public static void main(String[] args) {
        // try {
        //     FileReader r = new FileReader("datos/misdatos.dat");
        // } catch (FileNotFoundException e) {
        //     e.printStackTrace();
        // }

        String[] palabras = new String[4];
        try {
            System.out.println(palabras[789]);
        } catch (IndexOutOfBoundsException e) {
            System.out.println("Se te fue la mano.");
        }
    }
}
