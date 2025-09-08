<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Productos</title>
    <link rel="stylesheet" type="text/css" href="${css}/alta_producto.css">
    <script type="text/javascript">

        function validaForm(){
            
        }

        window.onload = function(){
            document.getElementById("form_prod").addEventListener("submit", validaForm);
        }
    </script>
    </head>
    <body>
        <header class="cabecera">
            <h2>Alta de Productos</h2>
        </header>
        <div id="contPrincipal">
            <form id="form_prod" action="${home}/alta_producto" method="post">
                <input type="text" name="descripcion" placeholder="descripcion">
                <input type="text" name="precio" placeholder="precio">
                <select name="idFabricante">
                    <option value="14">Asus</option>
                </select>
                <button type="submit">Buscar</button>
            </form>
            
            <a href="${home}/menu_principal"><button>Volver</button></a>
        </div>
    </body>
</html>