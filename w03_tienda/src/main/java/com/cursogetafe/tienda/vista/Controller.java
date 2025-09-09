package com.cursogetafe.tienda.vista;

import java.io.IOException;
import java.util.Set;

import com.cursogetafe.tienda.modelo.Fabricante;
import com.cursogetafe.tienda.modelo.Producto;
import com.cursogetafe.tienda.negocio.Tienda;
import com.cursogetafe.tienda.negocio.TiendaImpl;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/tienda/*")
public class Controller extends HttpServlet {

    private Tienda neg;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getPathInfo();
		
		switch(path) {
		case "/informacion" -> {
                    req.setAttribute("origen", "el que te envio esto fui yo, el Controlador!!!");
                    req.getRequestDispatcher("/WEB-INF/informacion").forward(req, resp);
            }
		case "/menu_principal" -> req.getRequestDispatcher("/WEB-INF/vista/menu_principal.jsp").forward(req, resp);
        case "/listado_productos" -> req.getRequestDispatcher("/WEB-INF/vista/listado_productos.jsp").forward(req, resp);
        case "/alta_producto" -> {
            Set<Fabricante> fabs = neg.getFabricantes();
            req.setAttribute("fabs", fabs);
            req.getRequestDispatcher("/WEB-INF/vista/alta_producto.jsp").forward(req, resp);
        }
		}
	}

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String path = req.getPathInfo();
        String descripcion;

        switch(path) {
            case "/listado_productos" -> {
                descripcion = req.getParameter("descripcion");
                Set<Producto> prods;
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
                String idFabStr = req.getParameter("idFabricante");
                double precio;
                Fabricante fab;
                if (!isEmpty(descripcion)
                    && !isEmpty(precioStr)
                    && !isEmpty(idFabStr)
                    && isDouble(precioStr)
                    && isInt(idFabStr)
                    && (precio = Double.parseDouble(precioStr)) > 0
                    && (fab = neg.getFabricante(Integer.parseInt(idFabStr))) != null){
                    req.setAttribute("producto", descripcion);
                    try {
                        neg.crearProducto(new Producto(descripcion, precio, fab));
                        req.getRequestDispatcher("/WEB-INF/vista/alta_producto_ok.jsp").forward(req, resp);
                    } catch (Exception e) {
                        req.getRequestDispatcher("/WEB-INF/vista/alta_producto_error.jsp").forward(req, resp);
                    }
                } else {
                    //Cerrar sesion
                }
            }
        }
    }

    @Override
	public void init() throws ServletException {
        neg = new TiendaImpl();
		
		ServletContext app = getServletContext();

		app.setAttribute("home", app.getContextPath() + "/tienda");
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
}
