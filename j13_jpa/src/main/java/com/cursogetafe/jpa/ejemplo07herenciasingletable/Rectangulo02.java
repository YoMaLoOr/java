package com.cursogetafe.jpa.ejemplo07herenciasingletable;

import jakarta.persistence.Column;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;

@Entity
@DiscriminatorValue("RECTANGULO")
public class Rectangulo02 extends Figura02 {

	@Column(name="l1")
	private double lado1;
	@Column(name="l2")
	private double lado2;
	

	public Rectangulo02() {
	}

	public Rectangulo02(double x, double y, double lado1, double lado2) {
		super(x, y);
		this.lado1 = lado1;
		this.lado2 = lado2;
	}

	public double getLado1() {
		return this.lado1;
	}

	public void setLado1(double lado1) {
		this.lado1 = lado1;
	}

	public double getLado2() {
		return this.lado2;
	}

	public void setLado2(double lado2) {
		this.lado2 = lado2;
	}

	public Rectangulo02 lado1(double lado1) {
		setLado1(lado1);
		return this;
	}

	public Rectangulo02 lado2(double lado2) {
		setLado2(lado2);
		return this;
	}

	@Override
	public String toString() {
		return "{" +
			" lado1='" + getLado1() + "'" +
			", lado2='" + getLado2() + "'" +
			"}";
	}

    @Override
    public double area() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public double perimetro() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
	
	
}


