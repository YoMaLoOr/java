package agenda.persistencia;

import java.util.Map;
import java.util.Set;

import agenda.modelo.Contacto;
import java.util.HashMap;
import java.util.HashSet;


public class ContactoDaoMem  implements ContactoDao {

	private Map<Integer, Contacto> almacen;
	private int proximoId;

    public ContactoDaoMem() {
        almacen = new HashMap<Integer, Contacto>();
        proximoId = 1;
    }

    @Override
    public void insertar(Contacto c) {
        c.setIdContacto(proximoId++);
        almacen.put(c.getIdContacto(), c);
    }

    @Override
    public void actualizar(Contacto c) {
        almacen.replace(c.getIdContacto(), c);
    }

    @Override
    public boolean eliminar(int idContacto) {
        return almacen.remove(idContacto) != null;
    }

    @Override
    public boolean eliminar(Contacto c) {
        return eliminar(c.getIdContacto());
    }

    @Override
    public Contacto buscar(int idContacto) {
        return almacen.get(idContacto);
    }

    @Override
    public Set<Contacto> buscar(String cadena) {
        Set<Contacto> resu = new HashSet<>();
        for(Contacto contacto : almacen.values()){
            if(contacto.getApellidos().contains(cadena) || contacto.getApodo().contains(cadena) || contacto.getNombre().contains(cadena))
                resu.add(contacto);
        }
        return resu;
    }

    @Override
    public Set<Contacto> buscarTodos() {
        // Set<Contacto> resu = new HashSet<>();
        // for(Contacto contacto : almacen.values()){
        //     resu.add(contacto);
        // }
        // return resu;
        return new HashSet<Contacto>(almacen.values());
    }
	
}

