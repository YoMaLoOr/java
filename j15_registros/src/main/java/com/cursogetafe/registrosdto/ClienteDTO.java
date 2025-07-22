package com.cursogetafe.registrosdto;


// Es independiente, no tienes que crear nada previamente para que funcione, pero no tiene setters
public record ClienteDTO(int idCliente, String apellidos, int nroCliente, String categoria) {

}
