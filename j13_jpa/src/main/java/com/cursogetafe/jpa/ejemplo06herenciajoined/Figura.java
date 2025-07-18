package com.cursogetafe.jpa.ejemplo06herenciajoined;
import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.Table;

@Entity
@Table(name="figuras02")
@Inheritance(strategy= InheritanceType.JOINED)
public abstract class Figura implements Serializable{

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int idFigura;
	private double x;
	private double y;
	

	public Figura() {
	}

	public Figura(double x, double y) {
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

	public Figura idFigura(int idFigura) {
		setIdFigura(idFigura);
		return this;
	}

	public Figura x(double x) {
		setX(x);
		return this;
	}

	public Figura y(double y) {
		setY(y);
		return this;
	}

	@Override
	public boolean equals(Object o) {
		if (o == this)
			return true;
		if (o == null)
			return false;
		if (!(o instanceof Figura)) {
			return false;
		}
		Figura figura = (Figura) o;
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
