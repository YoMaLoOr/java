package modelo;
import java.util.Objects;

public class Cliente implements Comparable<Cliente> {

    private int idCliente;
    private String nombre;
    private String apellido1;
    private String apellido2;

    public Cliente() {
    }

    public Cliente(int idCliente, String nombre, String apellido1, String apellido2) {
        super();
        this.idCliente = idCliente;
        this.nombre = nombre;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
    }

    public int getIdCliente() {
        return this.idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido1() {
        return this.apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return this.apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public Cliente idCliente(int idCliente) {
        setIdCliente(idCliente);
        return this;
    }

    public Cliente nombre(String nombre) {
        setNombre(nombre);
        return this;
    }

    public Cliente apellido1(String apellido1) {
        setApellido1(apellido1);
        return this;
    }

    public Cliente apellido2(String apellido2) {
        setApellido2(apellido2);
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Cliente)) {
            return false;
        }
        Cliente cliente = (Cliente) o;
        return idCliente == cliente.idCliente;
    }

    @Override
    public int hashCode() {
        return Objects.hash(idCliente);
    }

    @Override
    public String toString() {
        return "{" +
            " idCliente='" + getIdCliente() + "'" +
            ", nombre='" + getNombre() + "'" +
            ", apellido1='" + getApellido1() + "'" +
            ", apellido2='" + getApellido2() + "'" +
            "}";
    }

    @Override
    public int compareTo(Cliente o) {
        // TODO Auto-generated method stub
        return this.idCliente - o.idCliente;
    }
    
}
