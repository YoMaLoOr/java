package com.cursogetafe.agenda.modelo;
import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

@Embeddable
public class Domicilio implements Serializable{
	@Column(name="tipo_via")
	private String tipoVia;
	private String via;
	private int numero;
	private int piso;
	private String puerta;
	@Column(name="codigo_postal")
	private String codigoPostal;
	private String ciudad;
	private String provincia;

	public Domicilio() {
	}


	public Domicilio(String tipoVia, String via, int numero, int piso, String puerta, String codigoPostal, String ciudad, String provincia) {
		this.tipoVia = tipoVia;
		this.via = via;
		this.numero = numero;
		this.piso = piso;
		this.puerta = puerta;
		this.codigoPostal = codigoPostal;
		this.ciudad = ciudad;
		this.provincia = provincia;
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

	public String getCodigoPostal() {
		return this.codigoPostal;
	}

	public void setCodigoPostal(String codigoPostal) {
		this.codigoPostal = codigoPostal;
	}

	public String getCiudad() {
		return this.ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getProvincia() {
		return this.provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public Domicilio tipoVia(String tipoVia) {
		setTipoVia(tipoVia);
		return this;
	}

	public Domicilio via(String via) {
		setVia(via);
		return this;
	}

	public Domicilio numero(int numero) {
		setNumero(numero);
		return this;
	}

	public Domicilio piso(int piso) {
		setPiso(piso);
		return this;
	}

	public Domicilio puerta(String puerta) {
		setPuerta(puerta);
		return this;
	}

	public Domicilio codigoPostal(String codigoPostal) {
		setCodigoPostal(codigoPostal);
		return this;
	}

	public Domicilio ciudad(String ciudad) {
		setCiudad(ciudad);
		return this;
	}

	public Domicilio provincia(String provincia) {
		setProvincia(provincia);
		return this;
	}

	@Override
	public boolean equals(Object o) {
		if (o == this)
			return true;
		if (!(o instanceof Domicilio)) {
			return false;
		}
		Domicilio domicilio = (Domicilio) o;
		return Objects.equals(tipoVia, domicilio.tipoVia) && Objects.equals(via, domicilio.via) && numero == domicilio.numero && piso == domicilio.piso && Objects.equals(puerta, domicilio.puerta) && Objects.equals(codigoPostal, domicilio.codigoPostal) && Objects.equals(ciudad, domicilio.ciudad) && Objects.equals(provincia, domicilio.provincia);
	}

	@Override
	public int hashCode() {
		return Objects.hash(tipoVia, via, numero, piso, puerta, codigoPostal, ciudad, provincia);
	}

	@Override
	public String toString() {
		return "{" +
			" tipoVia='" + getTipoVia() + "'" +
			", via='" + getVia() + "'" +
			", numero='" + getNumero() + "'" +
			", piso='" + getPiso() + "'" +
			", puerta='" + getPuerta() + "'" +
			", codigoPostal='" + getCodigoPostal() + "'" +
			", ciudad='" + getCiudad() + "'" +
			", provincia='" + getProvincia() + "'" +
			"}";
	}
	
}
