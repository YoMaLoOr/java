package es.cursosanblas.examen;

import es.cursosanblas.examen.config.Config;
import es.cursosanblas.examen.modelo.Asignatura;
import es.cursosanblas.examen.modelo.Persona;
import es.cursosanblas.examen.modelo.Profesor;
import es.cursosanblas.examen.persistencia.AsignaturaDao;
import es.cursosanblas.examen.persistencia.AsignaturaDaoImpl;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

/**
 * Hello world!
 *
 */
public class App {
    private static AsignaturaDao asigDao;
    public static void main( String[] args ) {
        EntityManager em = Config.getEmf().createEntityManager();
        asigDao  = new AsignaturaDaoImpl();
        Asignatura asig = new Asignatura("Prueba", 50, "Prueba");
        asig.setIdAsignatura(18);
//        asigDao.insertar(asig);
        asig = asigDao.buscar(19);
        asigDao.eliminar(asig);
//
//        String jpql = "select p from Profesor p where p.idPersona = :id";
//        TypedQuery<Profesor> q = em.createQuery(jpql, Profesor.class);
//        q.setParameter("id", "8");
//        Profesor p = q.getSingleResultOrNull();
//        asigDao.buscarPorProfesor(p).forEach(System.out::println);
//        System.out.println("______________________________________________________________");
//        asigDao.buscarSinProfesor().forEach(System.out::println);
//        System.out.println("______________________________________________________________");
        asigDao.buscarTodas().forEach((id, asign) -> System.out.println(id + " : " + asign));
        asig = new Asignatura("Prueba2", 150, "PruebaPrueba");
        asig.setIdAsignatura(18);
        asigDao.actualizar(asig);
        asigDao.buscarTodas().forEach((id, asign) -> System.out.println(id + " : " + asign));
    }
}
