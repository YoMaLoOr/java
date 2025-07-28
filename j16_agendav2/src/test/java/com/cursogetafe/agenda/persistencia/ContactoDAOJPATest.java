/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */

package com.cursogetafe.agenda.persistencia;

import java.util.Set;

import org.hibernate.LazyInitializationException;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.cursogetafe.agenda.modelo.Contacto;
import com.cursogetafe.agenda.modelo.Domicilio;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.Query;
 
/**
 *
 * @author mananas
 */
public class ContactoDAOJPATest {

    private static EntityManagerFactory emf;
    private static ContactoDao cDao;

     @Test
    void testName() {
        
    }

    @BeforeAll
    static void beforeClass() {
        emf = Persistence.createEntityManagerFactory("agenda_test");
        cDao = new ContactoDAOJPA(emf);
    }

    @BeforeEach
    void setUp() {
        
    }

    @AfterEach
    void tearDown() {
        String jpql = "delete from Contacto";
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        Query q = em.createQuery(jpql);
        q.executeUpdate();
        em.getTransaction().commit();
        em.close();
    }

    @AfterAll
    static void afterClass() {
        
    }

    /**
     * Test of actualizar method, of class ContactoDAOJPA.
     */
    @Test
    public void testActualizar() {
        System.out.println("actualizar");
        Contacto nuevo = creaContacto(1);
        cDao.insertar(nuevo);
        nuevo.setApellidos("nuevoApellido");
        nuevo.addCorreos("nuevoCorreo");
        nuevo.addTelefonos("nuevoTelefono");
        cDao.actualizar(nuevo);
        Contacto otro = cDao.buscar(nuevo.getIdContacto());
        assertNotNull(otro);
        assertEquals("nuevoApellido", otro.getApellidos());
        assertEquals(2, otro.getCorreos().size());
        assertEquals(2, otro.getTelefonos().size());
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of eliminar method, of class ContactoDAOJPA.
     */
    @Test
    public void testEliminar_int() {
        System.out.println("eliminar");
        Contacto nuevo = creaContacto(1);
        cDao.insertar(nuevo);
        //boolean expResult = true;
        assertTrue(cDao.eliminar(nuevo.getIdContacto())); //Ambos assert dan el mismo resultado
        // boolean result = cDao.eliminar(nuevo.getIdContacto());
        // assertEquals(expResult, result);
        Contacto noExiste = creaContacto(1);
        noExiste.setIdContacto(894);
        assertFalse(cDao.eliminar(noExiste));
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of eliminar method, of class ContactoDAOJPA.
     */
    @Test
    public void testEliminar_Contacto() {
        System.out.println("eliminar");
        Contacto nuevo = creaContacto(1);
        cDao.insertar(nuevo);
        //boolean expResult = true;
        assertTrue(cDao.eliminar(nuevo)); //Ambos assert dan el mismo resultado
        // boolean result = cDao.eliminar(nuevo.getIdContacto());
        // assertEquals(expResult, result);
        Contacto noExiste = creaContacto(1);
        noExiste.setIdContacto(894);
        assertFalse(cDao.eliminar(noExiste));
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of buscar method, of class ContactoDAOJPA.
     */
    @Test
    public void testBuscar_int() {
        System.out.println("buscar");
        Contacto nuevo = creaContacto(1);
        cDao.insertar(nuevo);
        int idContacto = nuevo.getIdContacto();
        Contacto result = cDao.buscar(idContacto);
        assertNotNull(result);
        assertEquals(idContacto, result.getIdContacto());
        // TODO review the generated test code and remove the default call to fail.
    }

    @Test
    public void testBuscar_intNoExiste() {
        System.out.println("buscar");
        assertNull(cDao.buscar(666));
        // TODO review the generated test code and remove the default call to fail.
    }
    /**
     * Test of buscar method, of class ContactoDAOJPA.
     */
    @Test
    public void testBuscar_String() {
        System.out.println("buscar");
        for (int i = 0; i < 100; i++) {
            cDao.insertar(creaContacto(i));
        }
        String cadena = "nombre75";
        int expResult = 1;
        Set<Contacto> result = cDao.buscar(cadena);
        assertEquals(expResult, result.size());
        result = cDao.buscar("nom");
        assertEquals(100, result.size());
        result = cDao.buscar("ape");
        assertEquals(100, result.size());
        result = cDao.buscar("apo");
        assertEquals(100, result.size());
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of buscarTodos method, of class ContactoDAOJPA.
     */
    @Test
    public void testBuscarTodosVacio() {
        System.out.println("buscarTodos");
        int expResult = 0;
        Set<Contacto> result = cDao.buscarTodos();
        assertEquals(expResult, result.size());
        // TODO review the generated test code and remove the default call to fail.
    }

    /**
     * Test of buscarTodos method, of class ContactoDAOJPA.
     */
    @Test
    public void testBuscarTodos() {
        for (int i = 0; i < 100; i++) {
            cDao.insertar(creaContacto(i));
        }
        Set<Contacto> result = cDao.buscarTodos();
        assertEquals(100, result.size());
        for (Contacto contacto : result) {
            assertEquals("ciudad", contacto.getDom().getCiudad());
            assertThrows(LazyInitializationException.class, () -> contacto.getCorreos().size());
            assertThrows(LazyInitializationException.class, () -> contacto.getTelefonos().size());
        }
    }

    private Contacto creaContacto(int nroContacto){
        Domicilio dom =new Domicilio("tv", "v", nroContacto, nroContacto, "puerta", "cp", "ciudad", "prov");
        Contacto nuevo = new Contacto(0, "nombre"+nroContacto, "apellidos"+nroContacto, "apodo"+nroContacto, dom);
        for (int i = 0; i < nroContacto; i++) {
            nuevo.addCorreos("correo"+nroContacto+"@test.com");
            nuevo.addTelefonos("666"+nroContacto);
        }
        return nuevo;
    }
}