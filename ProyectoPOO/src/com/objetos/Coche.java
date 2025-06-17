package com.objetos;

public class Coche {
    private String brand;
    private String model;
    private int velocity;
    private int maxVelocity;

    public Coche() {
        this.brand = "Ford";
        this.model = "Fiesta";
        this.velocity = 0;
        this.maxVelocity = 180;
    }

    public String getBrand() {
        return this.brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getVelocity() {
        return this.velocity;
    }

    protected void setVelocity(int velocity) {
        this.velocity = velocity;
    }

    public int getMaxVelocity() {
        return this.maxVelocity;
    }

    public void setMaxVelocity(int maxVelocity) {
        this.maxVelocity = maxVelocity;
    }

    public void arrancar(){
        System.out.println("Brum Brum.");
    }

    public void acelerar(){
        if(this.velocity<this.maxVelocity){
            if((this.maxVelocity-this.velocity)<20){
                this.velocity+=10;
            }else
                this.velocity+=20;
        }
            
    }

    public void frenar(){
        this.velocity-=10;
    }

    public void frenar(String stop){
        this.velocity=0;
    }

    @Override
    public String toString(){
        String data = "La marca es: " + brand + ". \nEl modelo es: " + model + 
        ". \nLa velocidad actual es de: " + velocity;
        return data;
    }
}
