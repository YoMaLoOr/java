package com.cursogetafe.jpa.ejemplo07herenciasingletable;
import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.DiscriminatorColumn;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.Table;

@Entity
@Table(name="figuras01")
@Inheritance(strategy= InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="tipo_figura")
public abstract class Figura02 implements Serializable{

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int idFigura;
	private double x;
	private double y;
	

	public Figura02() {
	}

	public Figura02(double x, double y) {
		this.x = x;
		this.y = y;
	}

	public int getIdFigura() {
		return this.idFigura;
	}

	public void setIdFigura(int idFigura) {
		this.idFigura = idFigura;
	}

	public double getX() {
		return this.x;
	}

	public void setX(double x) {
		this.x = x;
	}

	public double getY() {
		return this.y;
	}

	public void setY(double y) {
		this.y = y;
	}

	public Figura02 idFigura(int idFigura) {
		setIdFigura(idFigura);
		return this;
	}

	public Figura02 x(double x) {
		setX(x);
		return this;
	}

	public Figura02 y(double y) {
		setY(y);
		return this;
	}

	@Override
	public boolean equals(Object o) {
		if (o == this)
			return true;
		if (o == null)
			return false;
		if (!(o instanceof Figura02)) {
			return false;
		}
		Figura02 figura = (Figura02) o;
		return idFigura == figura.idFigura;
	}

	@Override
	public int hashCode() {
		return Objects.hash(idFigura, x, y);
	}

	@Override
	public String toString() {
		return "{" +
			" idFigura='" + getIdFigura() + "'" +
			", x='" + getX() + "'" +
			", y='" + getY() + "'" +
			"}";
	}
	
	public abstract double area();
	
	public abstract double perimetro();
}
