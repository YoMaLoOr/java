package com.objetos;

public class Director extends Empleado {
    public void mandar(){
        System.out.println("Obedeced todos, subditos!!!!");
    }

    @Override
    public int getDiasVacaciones(){
        int vacas = super.getDiasVacaciones();
        System.out.println("Vacaciones director");
        return vacas + 8;
    }
    //IMPLEMENTA
    public int getDiasVacaciones(int diasExtra){
        return 30 + diasExtra;
    }

    public Director(){
        //DEBEMOS INDICAR EL SALARIO MINIMO A 200 MAS QUE EL EMPLEADO
        //NECESITAMOS EL SALARIO MINIMO DEL EMPLEADO (1200)
        int salMinimo = super.getSalarioMinimo();
        this.setSalarioMinimo(salMinimo + 200);
    }
}