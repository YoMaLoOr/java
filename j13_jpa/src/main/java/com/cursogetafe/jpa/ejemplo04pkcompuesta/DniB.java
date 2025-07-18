package com.cursogetafe.jpa.ejemplo04pkcompuesta;
import java.io.Serializable;
import java.util.Objects;

import jakarta.persistence.Embeddable;

@Embeddable
public class DniB implements Serializable {

    private int nroDoc;
    private char letraDoc;

    public DniB() {
    }

    public DniB(int nroDoc, char letraDoc) {
        this.nroDoc = nroDoc;
        this.letraDoc = letraDoc;
    }

    public int getNroDoc() {
        return this.nroDoc;
    }

    public void setNroDoc(int nroDoc) {
        this.nroDoc = nroDoc;
    }

    public char getLetraDoc() {
        return this.letraDoc;
    }

    public void setLetraDoc(char letraDoc) {
        this.letraDoc = letraDoc;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof DniB)) {
            return false;
        }
        DniB dni = (DniB) o;
        return nroDoc == dni.nroDoc && letraDoc == dni.letraDoc;
    }

    @Override
    public int hashCode() {
        return Objects.hash(nroDoc, letraDoc);
    }

    @Override
    public String toString() {
        return "{" +
            " nroDoc='" + getNroDoc() + "'" +
            ", letraDoc='" + getLetraDoc() + "'" +
            "}";
    }
}
