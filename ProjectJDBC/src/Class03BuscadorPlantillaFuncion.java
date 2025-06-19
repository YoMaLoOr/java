
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class Class03BuscadorPlantillaFuncion {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Introduce que funcion quieres filtrar: ");
        String function = sc.nextLine();
        try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String connectionString = "jdbc:mysql://localhost:3366/hospital";
        Connection cn = DriverManager.getConnection(connectionString, "root", "root");
        String sql = "select APELLIDO, FUNCION, SALARIO from PLANTILLA where FUNCION like'" + function + "'";
        Statement st = cn.createStatement();
        ResultSet rs = st.executeQuery(sql);
        while (rs.next()){
            String apellido = rs.getString("APELLIDO");
            String funcion = rs.getString("FUNCION");
            String salario = rs.getString("SALARIO");
            System.out.println(apellido + " - " + funcion + " - " + salario);
        }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
    }
}
