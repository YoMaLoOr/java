package com.cursogetafe.jpa.ejemplo07herenciasingletable;

import jakarta.persistence.Column;
import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;

@Entity
@DiscriminatorValue(value="CIRCULO")
public class Circulo02 extends Figura02 {

	@Column(name="r")
	private double radio;

	public Circulo02() {
	}

	public Circulo02(double x, double y, double radio) {
		super(x, y);
		this.radio = radio;
	}

	public double getRadio() {
		return this.radio;
	}

	public void setRadio(double radio) {
		this.radio = radio;
	}

	public Circulo02 radio(double radio) {
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
