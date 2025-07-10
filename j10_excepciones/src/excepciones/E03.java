package excepciones;

import java.sql.SQLException;

public class E03 {
    public static void main(String[] args) {
        
    }

    public static void otrometodo(){
        try {
            problematico(44);
        } catch (SQLException e) {
            // Esto es el arreglo al problema
            e.printStackTrace();
        }
    }

    public static void metodo() throws SQLException {
        problematico(78);
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
