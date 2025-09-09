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

        function validaForm(ev){
            ev.preventDefault();
            let descripcion = document.getElementById("descripcion").value.trim();
            let precio = document.getElementById("precio").value.trim();
            let idFabricante = document.getElementById("idFabricante").value;
            let error = document.getElementById("error");
            if (!descripcion ||  !precio || !idFabricante) {
                error.textContent = "Todos los campos son obligatorios";
            }else if (isNaN(precio)) {
                error.textContent = "El precio debe ser numerico";
            }else if (precio < 0) {
                error.textContent = "El precio debe ser mayor que 0";
            }else {
                error.textContent = "";
                ev.currentTarget.submit();
            }
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
            <p>El producto <span>${producto}</span> se ha guardado con exito.</p>
            <a href="${home}/alta_producto"><button>Mas productos</button></a>
            <a href="${home}/menu_principal"><button>Menu Principal</button></a>
        </div>
    </body>
</html>