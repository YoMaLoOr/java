package com.cursogetafe.tienda.json;

import com.cursogetafe.tienda.modelo.Producto;
import com.cursogetafe.tienda.persistencia.ProductoDAOImpl;
import com.cursogetafe.tienda.persistencia.ProductoDao;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class TestJackson {
    public static void main(String[] args) throws JsonProcessingException {
        ProductoDao pDao = new ProductoDAOImpl();
        Producto p = pDao.findById(7);
        System.out.println(p);

        ObjectMapper mapper = new ObjectMapper();

        String json = mapper.writeValueAsString(p);
        System.out.println(json);
    }
}
