package excepciones;

import java.sql.SQLException;

public class E03 {
    public static void main(String[] args) {
        try {
            metodo(-5);
        } catch (SQLException e) {
            System.out.println("Esto arregla el problema.");
        }
        System.err.println("Continua el programa.");

        otrometodo(66);
    }

    public static void otrometodo(int num){
        try {
            problematico(num);
        } catch (SQLException e) {
            // Esto es el arreglo al problema
            e.printStackTrace();
        }
    }

    public static void metodo(int num) throws SQLException {
        problematico(num);
        System.out.println("Todo feten.");
    }

    public static void problematico(int valor) throws SQLException{
        if (valor == 0) {
            throw new IllegalArgumentException();
        } if (valor < 0) {
            throw  new SQLException();
        } 
        
    }
}
