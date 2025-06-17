package com.objetos;

public class Deportivo extends Coche {
    
    public Deportivo(){
        super.setBrand("Audi");
        super.setModel("R8");
        super.setMaxVelocity(320);
    }

    @Override
    public void arrancar(){
        System.out.println("Brum Brum mas fuerte.");
    }
}
