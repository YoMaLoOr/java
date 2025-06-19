
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class Class02BuscadorEmpleadosDept {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String idDepartamento = sc.next();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String connectionString = "jdbc:mysql://localhost:3366/hospital";
            Connection cn = DriverManager.getConnection(connectionString, "root", "root");
            String sql = "select APELLIDO, OFICIO from EMP where DEPT_NO=" + idDepartamento;
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()){
                String apellido = rs.getString("APELLIDO");
                String oficio = rs.getString("OFICIO");
                System.out.println(apellido + " - " + oficio);
            }
            rs.close();
            cn.close();
        } catch (Exception e) {
            System.out.println("Error gordo: " + e);
        }
    }
}
