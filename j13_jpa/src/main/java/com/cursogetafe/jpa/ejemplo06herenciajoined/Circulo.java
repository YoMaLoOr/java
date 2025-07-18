package com.cursogetafe.jpa.ejemplo06herenciajoined;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Entity
@Table(name="circulo_02")
public class Circulo extends Figura {

	@Column(name="r")
	private double radio;

	public Circulo() {
	}

	public Circulo(double x, double y, double radio) {
		super(x, y);
		this.radio = radio;
	}

	public double getRadio() {
		return this.radio;
	}

	public void setRadio(double radio) {
		this.radio = radio;
	}

	public Circulo radio(double radio) {
		setRadio(radio);
		return this;
	}

	@Override
	public String toString() {
		return "{" +
			" radio='" + getRadio() + "'" +
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
