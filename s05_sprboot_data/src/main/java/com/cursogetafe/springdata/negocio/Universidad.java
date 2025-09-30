package com.cursogetafe.springdata.negocio;

import com.cursogetafe.springdata.modelo.Asignatura;
import com.cursogetafe.springdata.modelo.Profesor;
import com.cursogetafe.springdata.persistencia.AlumnoDao;
import com.cursogetafe.springdata.persistencia.AsignaturaDao;
import com.cursogetafe.springdata.persistencia.ProfesorDao;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Universidad {

    private AsignaturaDao asigDao;
    private AlumnoDao alumDao;
    private ProfesorDao profDao;

    public Universidad() {
    }
    @Autowired
    public Universidad(AsignaturaDao asigDao, AlumnoDao alumDao, ProfesorDao profDao) {
        this.asigDao = asigDao;
        this.alumDao = alumDao;
        this.profDao = profDao;
        init();
    }

    @PostConstruct
    public void init(){
        asigDao.findAll().forEach(System.out::println);
        System.out.println("___________________________________________________________");
        alumDao.findAll().forEach(System.out::println);
        System.out.println("___________________________________________________________");
        profDao.findAll().forEach(System.out::println);
        System.out.println("___________________________________________________________");
        Asignatura buscada = asigDao.findById(9).get();
        System.out.println(buscada);
        System.out.println("___________________________________________________________");
//        System.out.println(buscada.getAlumnos()); Da error Lazy
        asigDao.buscarSinProfesor().forEach(System.out::println);
        System.out.println("___________________________________________________________");
        asigDao.buscarPorDescripcion("datos").forEach(System.out::println);
        System.out.println("___________________________________________________________");
        Profesor profe = profDao.findById(10).get();
        asigDao.findByProfesor(profe).forEach(System.out::println);
    }
}
