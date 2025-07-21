package com.cursogetafe.ejerciciojpa.modelo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="personas")
public class Persona implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idPersona;
	
	private String apellidos;

	@OneToMany(mappedBy="persona")
	private List<Rol> roles;

	public int getIdPersona() {
		return idPersona;
	}

	public void setIdPersona(int idPersona) {
		this.idPersona = idPersona;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public List<Rol> getRoles() {
		return roles;
	}

	public void setRoles(List<Rol> roles) {
		this.roles = roles;
	}
	
	public void addRol(Rol rol){
		if (roles == null) {
			roles = new ArrayList<>();
		}
		roles.add(rol);
	}

	@Override
	public String toString() {
		return "Persona [" + idPersona + ", " + apellidos + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + idPersona;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Persona other = (Persona) obj;
		return idPersona == other.idPersona;
	}
}
