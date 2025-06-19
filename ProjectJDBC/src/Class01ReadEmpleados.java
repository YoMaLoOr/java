import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Class01ReadEmpleados {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String connectionString = "jdbc:mysql://localhost:3366/hospital";
            Connection cn = DriverManager.getConnection(connectionString, "root", "root");
            String sql = "Select * from EMP";
            Statement st = cn.createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next()){
                String apellido = rs.getString("APELLIDO");
                System.out.println("Apellido: " + apellido);
            }
            rs.close();
            cn.close();
        } catch (ClassNotFoundException e) {
            System.out.println("Class" + e);
        } catch (SQLException ex) {
            System.out.println("SQL"  + ex);
        }
    }
}
