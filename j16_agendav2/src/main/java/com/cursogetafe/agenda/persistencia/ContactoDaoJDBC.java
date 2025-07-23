package com.cursogetafe.agenda.persistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Set;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;

import com.cursogetafe.agenda.config.Config;
import com.cursogetafe.agenda.modelo.Contacto;
import com.cursogetafe.agenda.modelo.Domicilio;

public class ContactoDaoJDBC implements ContactoDao {

    private DataSource ds;

    public ContactoDaoJDBC(){
        ds = Config.getDataSource();
    }

    @Override
    public void insertar(Contacto c) {
        String sql = "insert into contactos (`nombre`, `apellidos`, `apodo`, `tipo_via`, `via`, `numero`, `piso`, `puerta`, `codigo_postal`, `ciudad`, `provincia`) " + 
                    "values (?,?,?,?,?,?,?,?,?,?,?)";
        try(Connection con = ds.getConnection()){
            con.setAutoCommit(false);
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, c.getNombre());
            ps.setString(2, c.getApellidos());
            ps.setString(3, c.getApodo());
            ps.setString(4, c.getDom().getTipoVia());
            ps.setString(5, c.getDom().getVia());
            ps.setInt(6, c.getDom().getNumero());
            ps.setInt(7, c.getDom().getPiso());
            ps.setString(8, c.getDom().getPuerta());
            ps.setString(9, c.getDom().getCodigoPostal());
            ps.setString(10, c.getDom().getCiudad());
            ps.setString(11, c.getDom().getProvincia());

            int filas = ps.executeUpdate();
            if(filas == 1){
                PreparedStatement psId = con.prepareStatement("select LAST_INSERT_ID()"); // Esta es una funcion propia de MySQL, no funciona fuera del mismo.
                ResultSet rsId = psId.executeQuery();
                rsId.next();
                int id = rsId.getInt(1);

                sql = "insert into telefonos (fk_contacto, telefono) values (?,?)";
                PreparedStatement psTel = con.prepareStatement(sql);
                int cantTel = 0;
                for(String tel : c.getTelefonos()){
                    psTel.setInt(1, id);
                    psTel.setString(2, tel);
                    cantTel += psTel.executeUpdate();
                }

                sql = "insert into correos (fk_contacto, correo) values (?,?)";
                PreparedStatement psCorreos = con.prepareStatement(sql);
                int cantCorreo = 0;
                for(String correo : c.getCorreos()){
                    psCorreos.setInt(1, id);
                    psCorreos.setString(2, correo);
                    cantCorreo += psTel.executeUpdate();
                }

                if(cantTel == c.getTelefonos().size() && cantCorreo == c.getCorreos().size()){
                    con.commit();
                } else {
                    con.rollback();
                    throw new RuntimeException("No son correctas las cantidades.");
                }
            } else {
                con.rollback();
                throw new RuntimeException("Ninguna fila se vio afectada. no por culpa de SQL.");
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    @Override
    public void actualizar(Contacto c) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean eliminar(int idContacto) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public boolean eliminar(Contacto c) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public Contacto buscar(int idContacto) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public Set<Contacto> buscar(String cadena) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public Set<Contacto> buscarTodos() {
        Set<Contacto> resul = new HashSet<>();
        try(Connection con = ds.getConnection()){
            String sql = "select idcontactos, nombre, apellidos, apodo, tipo_via, via, numero, piso, puerta, codigo_postal, ciudad, provincia from contactos";
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Contacto c = new Contacto();
                c.setIdContacto(rs.getInt("idcontactos"));
                c.setNombre(rs.getString("nombre"));
                c.setApellidos(rs.getString("apellidos"));
                c.setApodo(rs.getString("apodo"));
                Domicilio dom = new Domicilio();
                dom.setTipoVia(rs.getString("tipo_via"));
                dom.setVia(rs.getString("via"));
                dom.setNumero(rs.getInt("numero"));
                dom.setPiso(rs.getInt("piso"));
                dom.setPuerta(rs.getString("puerta"));
                dom.setCodigoPostal(rs.getString("codigo_postal"));
                dom.setCiudad(rs.getString("ciudad"));
                dom.setProvincia(rs.getString("provincia"));
                // Faltan telefonos y correos
                // Statement st = con.createStatement();
                // st.executeQuery("select telefono from telefonos where fk_contacto = " + c.getIdContacto());
                PreparedStatement psTelefonos = con.prepareStatement("select telefono from telefonos where fk_contacto = ?");
                psTelefonos.setInt(1, c.getIdContacto());
                ResultSet rsTelefonos = psTelefonos.executeQuery();
                while (rsTelefonos.next()) {
                    c.addTelefonos(rsTelefonos.getString("telefono"));
                    
                }

                PreparedStatement psCorreos = con.prepareStatement("select correo from correos where fk_contacto = ?");
                psCorreos.setInt(1, c.getIdContacto());
                ResultSet rsCorreos = psCorreos.executeQuery();
                while (rsCorreos.next()) {
                    c.addCorreos(rsCorreos.getString("correo"));
                    
                }

                c.setDom(dom);

                resul.add(c);

            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return resul;
    }

}
