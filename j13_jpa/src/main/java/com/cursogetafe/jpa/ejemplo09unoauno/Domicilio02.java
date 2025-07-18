package com.cursogetafe.jpa.ejemplo09unoauno;
import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="domicilio")
public class Domicilio02 implements Serializable{

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private int idDomicilio;
	private String tipoVia;
	private String via;
	private int numero;
	private int piso;
	private String puerta;
	private String ciudad;

	public Domicilio02() {
	}


	public Domicilio02(String tipoVia, String via, int numero, int piso, String puerta, String codigoPostal, String ciudad, String provincia) {
		this.tipoVia = tipoVia;
		this.via = via;
		this.numero = numero;
		this.piso = piso;
		this.puerta = puerta;
		this.ciudad = ciudad;
	}

	public String getTipoVia() {
		return this.tipoVia;
	}

	public void setTipoVia(String tipoVia) {
		this.tipoVia = tipoVia;
	}

	public String getVia() {
		return this.via;
	}

	public void setVia(String via) {
		this.via = via;
	}

	public int getNumero() {
		return this.numero;
	}

	public void setNumero(int numero) {
		this.numero = numero;
	}

	public int getPiso() {
		return this.piso;
	}

	public void setPiso(int piso) {
		this.piso = piso;
	}

	public String getPuerta() {
		return this.puerta;
	}

	public void setPuerta(String puerta) {
		this.puerta = puerta;
	}

	public String getCiudad() {
		return this.ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public int getIdDomicilio() {
		return this.idDomicilio;
	}

	public void setIdDomicilio(int idDomicilio) {
		this.idDomicilio = idDomicilio;
	}

	@Override
	public boolean equals(Object o) {
		if (o == this)
			return true;
		if (!(o instanceof Domicilio02)) {
			return false;
		}
		Domicilio02 domicilio02 = (Domicilio02) o;
		return idDomicilio == domicilio02.idDomicilio;
	}

	@Override
	public int hashCode() {
		return Objects.hash(idDomicilio);
	}

	@Override
	public String toString() {
		return "{" +
			" tipoVia='" + getTipoVia() + "'" +
			", via='" + getVia() + "'" +
			", numero='" + getNumero() + "'" +
			", piso='" + getPiso() + "'" +
			", puerta='" + getPuerta() + "'" +
			", ciudad='" + getCiudad() + "'" +
			"}";
	}
	
}
