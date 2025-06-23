package com.objetos;

public class Cliente extends Persona{
    private int idCliente;

    public Cliente(int idCliente, String nombre, String apellido) {
        super.setNombre(nombre);
        super.setApellidos(apellido);
        this.idCliente = idCliente;
    }

    public int getIdCliente() {
        return this.idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }
    @Override
    public boolean equals(Object otro){
        if (otro == null) return false;
        if(this == otro) return true;
        if(this.getClass() != otro.getClass()) return false;
        Cliente o = (Cliente)otro;
        return this.idCliente == o.idCliente;
                        
    }
}
