package com.cursogetafe.jpa.ejemplo12muchosamuchos;

import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="equipos_03")
public class Equipo {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer idEquipo;
    private String equipo;

    @ManyToMany
    @JoinTable(name="equipos_jugadores_03",
            joinColumns=@JoinColumn(name="idEquipo"),
            inverseJoinColumns=@JoinColumn(name="idjugador"))
    private Set<Jugador> jugadores;
    
    public Integer getIdEquipo() {
        return idEquipo;
    }
    public void setIdEquipo(Integer idEquipo) {
        this.idEquipo = idEquipo;
    }
    public String getEquipo() {
        return equipo;
    }
    public void setEquipo(String equipo) {
        this.equipo = equipo;
    }
    public Set<Jugador> getJugadores() {
        return jugadores;
    }
    public void setJugadores(Set<Jugador> jugadores) {
        this.jugadores = jugadores;
    }
    @Override
    public String toString() {
        return "Equipo [idEquipo=" + idEquipo + ", equipo=" + equipo + ", jugadores=" + jugadores + "]";
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((idEquipo == null) ? 0 : idEquipo.hashCode());
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
        Equipo other = (Equipo) obj;
        if (idEquipo == null) {
            if (other.idEquipo != null)
                return false;
        } else if (!idEquipo.equals(other.idEquipo))
            return false;
        return true;
    }

}
