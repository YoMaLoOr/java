package com.cursogetafe.tienda.negocio;

import com.cursogetafe.tienda.modelo.Fabricante;
import com.cursogetafe.tienda.modelo.Producto;
import com.cursogetafe.tienda.modelo.Usuario;

import java.util.Set;

public interface Tienda {

    /**
     * Devuelve todos los productos ordenados por su descripcion
     * @return un set de productos ordenados
     */
    Set<Producto> getProductos();
    /**
     * Devuelve todos los productos que contienen su descripcion
     * @param descripcion Descripcion de los productos a buscar
     * @return un set de productos ordenados
     */
    Set<Producto> getProductos(String descripcion);

    /**
     * Devuelve todos los fabricantes ordenados alfabeticamente
     * @return un set de fabricantes ordenados
     */
    Set<Fabricante> getFabricantes();

    /**
     * Recibe un objeto producto y lo guarda en la BBDD
     * @param producto Nuevo producto validado
     */
    void crearProducto(Producto producto);

    /**
     *Devuelve el fabricante que coincida con el ID recibido
     * @param idFabricante ID a validar
     * @return un objeto fabricante que coincicde con el ID
    */
    Fabricante getFabricantes (int idFabricante);

    /**
     *Devuelve todos los fabricantes que proporcionan productos
     * @return un set fabricante
     */
    Set<Fabricante> getFabricantesActivos ();

    /**
     * Agrega nuevo Usuario
     * @param u usuario a agregar
     * @return
     */

    boolean crearUsuario(Usuario u);

    /**
     * Valida las credenciales de un login
     * @param usr nombre de usuario
     * @param psw contraseña
     * @return el usuario si se ha validado correctamente o si es null si no lo son
     */

    Usuario validaUsuario(String usr, String psw);
}
