package com.cursogetafe.tienda.vista;

import java.io.IOException;
import java.util.Set;

import com.cursogetafe.tienda.modelo.Fabricante;
import com.cursogetafe.tienda.modelo.Producto;
import com.cursogetafe.tienda.modelo.Usuario;
import com.cursogetafe.tienda.negocio.Tienda;
import com.cursogetafe.tienda.negocio.TiendaImpl;

import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/tienda/*")
public class Controller extends HttpServlet {

    private Tienda neg;
    private String home;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getPathInfo();
        Set<Fabricante> fabs;
        HttpSession sesion = req.getSession();
		
		switch(path) {
            case "/login" ->
                req.getRequestDispatcher("/WEB-INF/vista/login.jsp").forward(req, resp);
            case "/registro_usuarios" ->
                req.getRequestDispatcher("/WEB-INF/vista/registro_usuarios.jsp").forward(req, resp);
            case  "/registro_usuarios_respuesta" ->
                req.getRequestDispatcher("/WEB-INF/vista/registro_usuarios_respuesta.jsp").forward(req, resp);
            case "/informacion" -> {
                req.setAttribute("origen", "el que te envio esto fui yo, el Controlador!!!");
                req.getRequestDispatcher("/WEB-INF/informacion").forward(req, resp);
            }
            case "/menu_principal" -> {
                eliminaDatosSesion(sesion);
                req.getRequestDispatcher("/WEB-INF/vista/menu_principal.jsp").forward(req, resp);
            }
            case "/listado_productos" -> req.getRequestDispatcher("/WEB-INF/vista/listado_productos.jsp").forward(req, resp);
            case "/alta_producto" -> {
                fabs = neg.getFabricantes();
                req.setAttribute("fabs", fabs);
                req.getRequestDispatcher("/WEB-INF/vista/alta_producto.jsp").forward(req, resp);
            }
            case "/alta_producto_ok" ->
                req.getRequestDispatcher("/WEB-INF/vista/alta_producto_ok.jsp").forward(req, resp);

            case "/alta_producto_error" ->
                req.getRequestDispatcher("/WEB-INF/vista/alta_producto_error.jsp").forward(req, resp);

            case "/productos_fabricante" -> {
                fabs = neg.getFabricantesActivos();
                req.setAttribute("fabs", fabs);
                req.getRequestDispatcher("/WEB-INF/vista/productos_fabricante.jsp").forward(req, resp);
            }
            case "/productos_fabricante_json" -> {
                fabs = neg.getFabricantesActivos();
                req.setAttribute("fabs", fabs);
                req.getRequestDispatcher("/WEB-INF/vista/productos_fabricante_json.jsp").forward(req, resp);
            }
		}
	}

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getPathInfo();
        String descripcion;
        String idFabStr;
        HttpSession sesion = req.getSession();
        Set<Producto> prods;
        Fabricante fab;
        String usr;
        String psw;

        switch(path) {
            case "/login" -> {
                usr = req.getParameter("usr");
                psw = req.getParameter("psw");
                System.out.println(usr);
                System.out.println(psw);
            }
            case "/registro_usuarios" -> {
                String nombre = req.getParameter("name");
                usr = req.getParameter("usr");
                String mail = req.getParameter("email");
                psw = req.getParameter("psw");
                if (!isEmpty(nombre)
                        && !isEmpty(usr)
                        && !isEmpty(mail)
                        && !isEmpty(psw)
                        && checkPassword(psw)) {

                    Usuario nuevo = new Usuario(nombre.trim(), mail.trim(), psw.trim(), usr.trim());
                    sesion.setAttribute("nombreUsuario", nombre);
                    try {
                        if (neg.crearUsuario(nuevo)) {
                            sesion.setAttribute("resu", "ok");
                        } else {
                            sesion.setAttribute("resu", "error");
                        }
                    } catch (Exception e) {
                        sesion.setAttribute("resu", "existe");
                    }
                    resp.sendRedirect(home + "/registro_usuarios_respuesta");
                } else {
                    //todo mal!
                }
            }
            case "/listado_productos" -> {
                descripcion = req.getParameter("descripcion");
                if (descripcion != null && descripcion.length() > 0){
                    prods = neg.getProductos(descripcion);
                }else{
                    prods = neg.getProductos();
                }
                req.setAttribute("prods", prods);
                req.getRequestDispatcher("/WEB-INF/vista/listado_productos.jsp").forward(req, resp);
            }
            case "/alta_producto" -> {
                descripcion = req.getParameter("descripcion");
                String precioStr = req.getParameter("precio");
                idFabStr = req.getParameter("idFabricante");
                double precio;

                if (!isEmpty(descripcion)
                    && !isEmpty(precioStr)
                    && !isEmpty(idFabStr)
                    && isDouble(precioStr)
                    && isInt(idFabStr)
                    && (precio = Double.parseDouble(precioStr)) > 0
                    && (fab = neg.getFabricantes(Integer.parseInt(idFabStr))) != null){
                    sesion.setAttribute("producto", descripcion);
                    try {
                        neg.crearProducto(new Producto(descripcion, precio, fab));
                        resp.sendRedirect(home + "/alta_producto_ok");
                    } catch (Exception e) {
                        resp.sendRedirect(home + "/alta_producto_error");
                    }
                } else {
                    //Cerrar sesion
                }
            }
            case "/productos_fabricante" ->{
                idFabStr = req.getParameter("idFabricante");
                System.out.println(idFabStr);
                if (!isEmpty(idFabStr)
                    && isInt(idFabStr)
                    && (fab = neg.getFabricantes(Integer.parseInt(idFabStr))) != null){
                    sesion.setAttribute("fab", fab);
                    resp.sendRedirect(home + "/productos_fabricante");
                } else{
                    System.out.println("ERROR");
                }
            }
            case "/productos_fabricante_json_respuesta" ->{
                idFabStr = req.getParameter("idFabricante");
                if (!isEmpty(idFabStr)
                        && isInt(idFabStr)
                        && (fab = neg.getFabricantes(Integer.parseInt(idFabStr))) != null){
                    ObjectMapper mapper = new ObjectMapper();
                    String json = mapper.writeValueAsString(fab.getProductos());
                    resp.getWriter().println(json);
                } else{
                    System.out.println("ERROR");
                }
            }
        }
    }

    @Override
	public void init() throws ServletException {
        neg = new TiendaImpl();
		
		ServletContext app = getServletContext();

        home = app.getContextPath() + "/tienda";

		app.setAttribute("home", home);
		app.setAttribute("css", app.getContextPath() + "/css");
	}

    private boolean isEmpty(String param){
        return param == null || param.trim().length() == 0;
    }

    private boolean isDouble(String num){
        try{
            Double.parseDouble(num.trim());
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    private boolean isPositive(String param){
            double precio = Double.parseDouble(param.trim());
            return precio > 0;
    }

    private boolean isInt(String param){
        try{
            Integer.parseInt(param.trim());
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    private void eliminaDatosSesion(HttpSession sesion){
        sesion.removeAttribute("fab");
        sesion.removeAttribute("fabs");
        sesion.removeAttribute("prods");
    }

    private boolean checkPassword(String psw){
        return psw.trim().length()>5;
    }
}
