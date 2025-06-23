package com.objetos;

public class Empleado extends Persona {
    @Override
    public String toString(){
        return this.getNombreCompleto() +
        ", Salario mínimo: " + this.getSalarioMinimo();
    }

    //METODO QUE NO SE PUEDE SOBRESCRIBIR
    public final void metodoFinal() {
        System.out.println("Soy un método final");
    }

    //CREAMOS UN METODO PARA MOSTRAR LAS VACACIONES
    //DE UN EMPLEADO
    public int getDiasVacaciones(){
        System.out.println("Vacaciones de empleado");
        return 22;
    }

    private int salarioMinimo;

    public int getSalarioMinimo() {
        return this.salarioMinimo;
    }

    protected void setSalarioMinimo(int salarioMinimo) {
        this.salarioMinimo = salarioMinimo;
    }
    
    public Empleado() {
        //ESTAMOS LLAMANDO AL CONSTRUCTOR VACIO DE PERSONA
        super();
        this.salarioMinimo = 1200;
        System.out.println("Constructor de Empleado");
    }

    // public Empleado(String nombre, String apellidos)
    // {
    //     //PODEMOS LLAMAR AL CONSTRUCTOR CON PARAMETROS DE PERSONA
    //     super(nombre, apellidos);
    //     System.out.println("Constructor nombre y apellidos Empleado");
    // }

    //IMPLEMENTAR ALGO EN EL EMPLEADO
    private int sueldo;

    public int getSueldo() {
        return this.sueldo;
    }

    public void setSueldo(int sueldo) {
        this.sueldo = sueldo;
    }
}