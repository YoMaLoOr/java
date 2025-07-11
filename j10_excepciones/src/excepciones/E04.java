package excepciones;

import java.io.FileNotFoundException;
import java.io.IOException;

public class E04 {
    public static void main(String[] args) throws Exception{

        try {
            otroProblematico(3);
            System.out.println("Esto cuando se ejecuta?");
            return;
        } finally {
            System.out.println("Esto si o si se debe ejecutar");
        }
        
    }

    public static void metodo2 (){
        try {
            otroProblematico(0);
        } catch (FileNotFoundException e) {

        } catch (IOException e) {

        } catch (ArrayIndexOutOfBoundsException e) {

        } catch (RuntimeException e) {

        }
    }

    public static void metodo3 () {
        try {
            otroProblematico(0);
        } catch (Exception e) {
        }
    }

    public static void metodo4 () {
        try {
            otroProblematico(0);
        } catch (ArrayIndexOutOfBoundsException | FileNotFoundException e) {
            //Aregla Array o File
        } catch (RuntimeException | IOException e) {

        }
    }

    public static void otroProblematico(int num) throws FileNotFoundException, IOException {
        switch (num) {
            case 1 ->
                throw new ArrayIndexOutOfBoundsException();
            case 2 ->
                throw new RuntimeException();
            case 3 ->
                throw new FileNotFoundException();
            case 4 ->
                throw new IOException();
        }
    }
}
