package com.cursogetafe.clasesdto;

public class ClienteDTO {
    private int idCliente;
    private int nroCliente;
    private String apellidos;
    private String categoria;

    public ClienteDTO(int idCliente, String apellidos, int nroCliente, String categoria) {
        this.idCliente = idCliente;
        this.nroCliente = nroCliente;
        this.apellidos = apellidos;
        this.categoria = categoria;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getNroCliente() {
        return nroCliente;
    }

    public void setNroCliente(int nroCliente) {
        this.nroCliente = nroCliente;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + idCliente;
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        ClienteDTO other = (ClienteDTO) obj;
        return idCliente == other.idCliente;
    }

    @Override
    public String toString() {
        return "ClienteDTO [idCliente=" + idCliente + ", nroCliente=" + nroCliente + ", apellidos=" + apellidos
                + ", categoria=" + categoria + "]";
    }
    
}
