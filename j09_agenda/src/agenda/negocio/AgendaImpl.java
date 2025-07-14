package agenda.negocio;

import agenda.modelo.Contacto;
import agenda.persistencia.ContactoDao;
import agenda.persistencia.ContactoDaoJDBC;
import java.io.IOException;
import java.text.Collator;
import java.util.Comparator;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;

public class AgendaImpl implements Agenda {

    private ContactoDao cDao;

    public AgendaImpl(){
        //cDao = new ContactoDaoMem();
        //cDao = new ContactoDaoMemSerial();
        cDao = new ContactoDaoJDBC();
    }

    @Override
    public void insertarContacto(Contacto c) {
        cDao.insertar(c);
    }

    @Override
    public Contacto eliminar(int idContacto) {
        Contacto c = cDao.buscar(idContacto);
        cDao.eliminar(idContacto);
        return c;
    }

    @Override
    public boolean eliminar(Contacto c) {
        return cDao.eliminar(c);
    }

    @Override
    public void modificar(Contacto c) {
        cDao.actualizar(c);
    }

    @Override
    public Set<Contacto> buscarTodos() {
        Set<Contacto> cSet = new TreeSet<>(getComparatorApodo());
        cSet.addAll(cDao.buscarTodos());
        return cSet;
    }

    @Override
    public Set<Contacto> buscarContactoPorNombre(String buscado) {
        Set<Contacto> cSet = new TreeSet<>(getComparatorApodo());
        cSet.addAll(cDao.buscar(buscado));
        return cSet;
    }

    @Override
    public int importarCSV(String fichero) throws IOException {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public Contacto buscar(int idContacto) {
        Contacto c = cDao.buscar(idContacto);
        return c;
    }

    private static Comparator<Contacto> getComparatorApodo(){
        return ((o1, o2) -> {
			Collator col = Collator.getInstance(new Locale("es"));
	 		return col.compare(o1.getApodo(), o2.getApodo());
		});
    }

}
